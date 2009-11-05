class ProjectsController < ApplicationController
  before_filter :load_booka

  inherit_resources
  actions :all, :except => :index

  def create
    @project = Project.create(params[:project])
    create! do |s, f|
      s.html {redirect_to booka_path}
    end
  end

  
end
