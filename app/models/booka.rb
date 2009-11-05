
class Booka < Clip
  CHILDREN_TYPES = ['Project']
  
  has_many :projects, :through => :bips, :as => :parent, :source => :child,
    :conditions => {:type => CHILDREN_TYPES}

  def children?
    true
  end

  def children
    projects
  end

  def children_types
    CHILDREN_TYPES
  end

  def self.add_project(project)
    booka = Booka.get
    booka.projects << project
    booka.save
  end

  def self.id
    Booka.get.id
  end

  def self.get
    begin
      @@booka ||= Booka.find(1)
    rescue ActiveRecord::RecordNotFound
      booka =  Booka.new
      booka.id = 1
      booka.title = 'Booka'
      booka.project_id = 1
      booka.save(false)
      @@booka ||= booka
    end
  end
end