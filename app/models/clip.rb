class Clip < ActiveRecord::Base
  has_many :bips
  has_many :tags, :through => :bips, :class_name => 'Tag', :as => :parent, :source => :child,
    :conditions => {:type => 'Tag'}


  validates_presence_of :title
  validates_presence_of :scope_id

  def scope
    Clip.find scope_id
  end



end

