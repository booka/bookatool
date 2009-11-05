
module ClipRelations
  def self.included(base)
    #    base.send(:include,InstanceMethods)
    base.send(:extend, ClassMethods)
  end
  
  module InstanceMethods
  end

  module ClassMethods
    def clip_relation(collection_name, model_classes = nil)
      if model_classes == nil || model_classes.size == 0
        types = []
        eval "define_method('#{collection_name}_types')  {types}"
      elsif model_classes.size == 1
        type = model_classes[0].to_s
        has_many collection_name, :through => :bips, :as => :parent, :class_name => type,
          :source => :child, :conditions => {:type => type}
        eval "define_method('#{collection_name}_types')  {type}"
      else
        types = model_classes.map {|t| t.to_s}
        has_many collection_name, :through => :bips, :as => :parent, :source => :child,
          :conditions => {:type => types}

        eval "define_method('#{collection_name}_types')  {types}"
      end
    end
  end

end