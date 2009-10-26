
class ClipBuilder
  def self.build(model_type, clip)
    clip.sequence(:title)  {|n| "#{model_type}-title-#{n}" }
    clip.scope_id Booka.id
  end
end

[:clip, :cluster, :project, :tag].each do |name|
  Factory.define(name) {|clip| ClipBuilder.build(name, clip) }
end