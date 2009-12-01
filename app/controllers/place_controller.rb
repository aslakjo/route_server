class PlaceController < ApplicationController
  def new
    place = JSON.parse(params[:place])
    point = Point.create!(place["point"])
    
    Place.create!(place.except(:point).merge(:point => point))
    render :text => '{status: "ok"}', :status => 200
  end

  def index
    @places = Place.all
    render :json => @places.to_json(:include => :point)
  end
end
