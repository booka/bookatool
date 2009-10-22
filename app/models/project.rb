# Project
class Project < Cluster
  def tags
    Tag.scoped(:conditions => {:scope_id => id})
  end
end