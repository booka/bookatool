class Clip < ActiveRecord::Base
  include ClipRelations
  include HashProperties

  hash_properties :properties
  belongs_to :project
  has_many :bips
  clip_relation :tags, [:Tag]
  clip_relation :comments, [:Comment]
  clip_relation :children, []


  validates_presence_of :title
  #validates_presence_of :project_id


  def children?(name = :children)
    self.respond_to?(name)
  end
end

