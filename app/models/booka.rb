
class Booka < Clip

  def self.id
    Booka.get.id
  end

  def self.get
    begin
      @@instance ||= Booka.find(1)
    rescue ActiveRecord::RecordNotFound
      @@instance = Booka.new
      @@instance[:id] = 1
      @@instance[:title] = 'Booka'
      @@instance[:scope_id] = 1
      @@instance.save(false)
    end
  end

  def self.projects
    Project.scoped({:conditions => {:scope_id => 1}})
  end
end