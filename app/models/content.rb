class Content < Clip

  register :tag do |tag|
    tag.subtype = 'tag'
  end

  register :comment do |comment|
    comment.subtype = 'comment'
  end
end
