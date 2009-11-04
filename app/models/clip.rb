class Clip < ActiveRecord::Base
  include ClipRelations

  has_many :bips
  clip_relation :tags, [:Tag]
  clip_relation :comments, [:Comment]
  clip_relation :children, []


  validates_presence_of :title
#  validates_presence_of :scope_id

  def scope
    Clip.find scope_id
  end

  def children?(name = :children)
    self.respond_to?(name)
  end
end

