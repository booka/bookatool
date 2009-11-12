
module HashProperties
  def self.included(base)
    #    base.send(:include,InstanceMethods)
    base.send(:extend, ClassMethods)
  end

  module ClassMethods
      def hash_properties(name)
        
      end
  end
end