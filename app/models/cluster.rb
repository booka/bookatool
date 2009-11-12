class Cluster < Clip
  include Factories::Cluster

  register(:projects) do |cluster|
    cluster.id = 1
    cluster.subtype = 'projects'
    cluster.project_id = 1
  end

  def self.root
    begin
      @@root ||= Cluster.find(1)
    rescue ActiveRecord::RecordNotFound
      root =  Cluster(:projects)
      root.save(false)
      @@root ||= root
    end
  end
end
