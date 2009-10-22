
class ClipBuilder
  def self.build(clip)
    clip.sequence(:title)  {|n| "clip-title-#{n}" }
    clip.scope_id Booka.id
  end
end

Factory.define(:clip) {|clip| ClipBuilder.build(clip) }
Factory.define(:cluster) {|clip| ClipBuilder.build(clip) }
Factory.define(:project) {|clip| ClipBuilder.build(clip) }
