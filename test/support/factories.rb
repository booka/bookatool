
class ClipBuilder
  def self.build(model_type, clip)
    clip.sequence(:title)  {|n| "#{model_type}-title-#{n}" }
  end
end

[:clip, :project, :tag, :comment, :media, :bag, :package].each do |name|
  Factory.define(name) {|clip| ClipBuilder.build(name, clip) }
end