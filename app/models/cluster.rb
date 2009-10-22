
class Cluster < Clip
  before_save :encode_children


  def children
    @children ||= (children_ids.blank? ? [] : Clip.all(:conditions => "clips.id IN (#{children_ids})"))
  end

  def children_ids=(value)
    self[:children_ids] = value
    @children = nil
  end

  private
  def encode_children
    self.children_ids = children.map(&:id).join(',')
  end
end