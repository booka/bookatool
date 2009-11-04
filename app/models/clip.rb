class Clip < ActiveRecord::Base
  has_many :bips
  has_many :tags, :through => :bips, :class_name => 'Tag', :as => :parent, :source => :child,
    :conditions => {:type => 'Tag'}
  has_many :comments, :through => :bips, :class_name => 'Comment', :as => :parent, :source => :child,
    :conditions => {:type => 'Comment'}

  CHILDREN_TYPES = []
  #as_children CHILDREN_TYPES


  validates_presence_of :title
#  validates_presence_of :scope_id

  def scope
    Clip.find scope_id
  end

  def children?
    false
  end

  def children_types
    CHILDREN_TYPES
  end

end

