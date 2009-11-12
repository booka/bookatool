class ClustersController < ApplicationController
  inherit_resources

  def index
    @projects = Cluster.root
  end
end
