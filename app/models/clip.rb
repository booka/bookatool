class Clip < ActiveRecord::Base
  validates_presence_of :title

  before_save :encode_children

  def children
    @children ||= (content.blank? ? [] : Clip.all(:conditions => "clips.id IN (#{content})"))
  end

  def content=(value)
    self[:content] = value
    @children = nil
  end

  private
  def encode_children
    self.content = children.map(&:id).join(',')
  end
end

