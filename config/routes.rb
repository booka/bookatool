ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'bookas', :action => 'show'

  map.resource :booka
  map.resources :projects
  map.resources :indices
  map.resources :packages
  map.resources :bags
  map.resources :clips

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
