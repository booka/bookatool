class ProjectsController < ApplicationController
  before_filter :load_booka

  inherit_resources
  actions :all, :except => :index

  def create
    @project = Booka.projects.build(params[:project])
    create! do |s, f|
      s.html {redirect_to booka_path}
    end
  end

  
end
