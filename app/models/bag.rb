class Bag < Clip
  has_many :children, :through => :bips, :as => :parent, :source => :child,
    :conditions => {:type => ['Media', 'Bag', 'Package', 'Index']}

end
