# es la coneción entre clips

class Bip < ActiveRecord::Base
  belongs_to :clip
  belongs_to :child, :class_name => 'Clip'

  validates_presence_of :clip, :child

end
