
class ClipBuilder
  def self.build(clip)
    clip.sequence(:title)  {|n| "clip-title-#{n}" }
    clip.scope Booka.get
  end
end

Factory.define(:clip) {|clip| ClipBuilder.build(clip) }
Factory.define(:cluster) {|clip| ClipBuilder.build(clip) }
Factory.define(:project) {|clip| ClipBuilder.build(clip) }
