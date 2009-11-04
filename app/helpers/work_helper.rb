module WorkHelper

  def add_children_links(clip)
    result = ""
    clip.children_types.each {|type| result <<  link_to("Add #{type}", "#{url_for(type.constantize.new)}/new")}
    result
  end
end
