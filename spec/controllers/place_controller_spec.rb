require 'spec_helper'

describe PlaceController do


  it "should be able to add" do
    json= '{ "title": "title", "description": "description", "point": { "lat": "10.0000" , "lng": "60.60"}}'
    post :new, :place => json

    place = Place.find(:last)
    place.title.should == "title"
    place.description.should == "description"

    point = Point.find(:last)
    place.point.should == point
  end

end
