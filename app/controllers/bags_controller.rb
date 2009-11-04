class BagsController < ApplicationController
  before_filter :load_booka

  inherit_resources
  actions :all, :except => :index
end
