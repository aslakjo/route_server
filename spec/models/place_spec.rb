require File.expand_path(File.join(File.dirname(__FILE__),'..','spec_helper'))

describe Place do
  before(:each) do
    @point = Point.create!(:lat=> 10.00, :lng=> 60.0)
    @valid_attributes = {
      :point => @point
    }
  end

  it "should create a new instance given valid attributes" do
    place = Place.create!(@valid_attributes)
    place.point.should == @point
  end

  it "should accept attributes for point" do
    Place.create(:title => "test", :description => "description", :point_attributes => {:lat => 10.00, :lng => 60.0}).should_not be_nil

    place = Place.find :last
    place.point.lng.should == 60.0
  end
end
