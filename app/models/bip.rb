class Bip < ActiveRecord::Base
  belongs_to :clip
  belongs_to :child, :class_name => 'Clip'

end
