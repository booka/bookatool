class Clip < ActiveRecord::Base
  include ClipRelations
  include HashProperties
  include Factories

  belongs_to :project
  has_many :bips

  has_many(:clips, :through => :bips, :source => :child) do
    def grouped_by(group)
      find(:all, :conditions => {:bips => {:group => group.to_s}})
    end
  end
end

