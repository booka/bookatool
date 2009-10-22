
class Booka < Clip
  def self.get
    @@instance ||= (Booka.first || Booka.create(:title => 'Booka'))
  end
end