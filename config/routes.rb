ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'bookas', :action => 'show'

  map.resource :booka
  map.resources :projects
  map.resources :indexes
  map.resources :clips

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
