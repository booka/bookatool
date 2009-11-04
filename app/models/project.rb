class Project < Cluster
  after_create :add_to_booka

  private
  def add_to_booka
    Booka.add_project(self)
  end
end