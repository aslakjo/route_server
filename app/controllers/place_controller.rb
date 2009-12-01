class PlaceController < ApplicationController
  def new
    p params
    place = JSON.parse(params[:place])
    point = place[:point]
    
    Place.create!(place.except(:point).merge(:point => point))
    render :text => '{status: "ok"}', :status => 200
  end
end
