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

  it "should give out all its places" do
    @valid_attr = {:title => "title", :description => "desc", :point => Point.create!({:lat=>10.0, :lng=> 60.0})}
    Place.create!(@valid_attr)
    Place.create!(@valid_attr)

    get :index
    
    response.body.should =~ /title/
    response.body.should =~ /desc/
    response.body.should =~ /10.0/
    response.body.should =~ /60.0/
  end
end
