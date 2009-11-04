class Project < Cluster
  after_create :add_to_booka
  clip_relation :children, [:Bag, :Index]

  private
  def add_to_booka
    Booka.add_project(self)
  end
end