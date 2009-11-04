class ClipsController < ApplicationController
  before_filter :load_booka

  inherit_resources
end
