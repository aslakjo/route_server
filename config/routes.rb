ActionController::Routing::Routes.draw do |map|
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.resources :place
  map.root :controller => :map
end
