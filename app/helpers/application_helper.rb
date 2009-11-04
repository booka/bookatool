module ApplicationHelper

  def title(name)
    content_for(:title) {name}
    "<h1>#{name}</h1>"
  end
  
end
