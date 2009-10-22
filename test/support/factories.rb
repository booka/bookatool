
Factory.define :clip do |clip|
  clip.sequence(:title)  {|n| "clip-title-#{n}" }
end


Factory.define :cluster do |clip|
  clip.sequence(:title)  {|n| "cluster-title-#{n}" }
end

