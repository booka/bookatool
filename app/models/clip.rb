class Clip < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :scope_id

  def scope
    Clip.find scope_id
  end

  def tags
    
  end

end

