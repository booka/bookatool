ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'clusters', :action => 'index'

  map.resource :clips
  map.resources :clusters
  map.resources :contents
end
