class Clip < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :scope

  has_one :scope, :class_name => 'Clip'
end

