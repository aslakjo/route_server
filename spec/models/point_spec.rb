require File.expand_path(File.join(File.dirname(__FILE__),'..','spec_helper'))

describe Point do
  before(:each) do
    @valid_attributes = {
      :lat => 60.100000,
      :lng => 10.100000
    }
  end

  it "should create a new instance given valid attributes" do
    Point.create!(@valid_attributes)
  end

  it "should create a new instance given valid attributes" do
    Point.create!(@valid_attributes)
    Point.create!(@valid_attributes.merge({:lat => 50.00000, :lng=> 10.5454545}))

    Point.all.length.should == 2
  end
end
