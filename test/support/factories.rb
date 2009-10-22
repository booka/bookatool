
Factory.define :clip do |clip|
  clip.sequence(:title)  {|n| "clip-title-#{n}" }
end