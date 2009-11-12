class ClustersController < ApplicationController
  inherit_resources

  def index
    redirect_to Cluster.root
  end

end
