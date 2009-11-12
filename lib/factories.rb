
module Factories

  #futurable
  class Factory
  end

  class Registry
    def initialize
      @decorators = {}
    end

    def register(class_name, factory_name, &block)
      clazz = class_name.to_s.capitalize.constantize
      @decorators[factory_name] = lambda do
        model = clazz.new
        yield(model)
        model
      end
    end

    def build(factory_name)
      @decorators[factory_name].call
    end

    def knows?(factory_name)
      return @decorators[factory_name]
    end

    def decorate(name, cluster)
      @decorators[name].decorate(cluster)
    end
  end

  REGISTRY = Registry.new

  def self.decorate(name, cluster)
    REGISTRY.decorate(name, cluster)
  end

  module Cluster
    def self.included(base)
      base.send(:include,InstanceMethods)
      base.send(:extend, ClassMethods)
    end

    module InstanceMethods
    end

    module ClassMethods
      def register(name, &block)
        REGISTRY.register(:cluster, name, &block)
      end

      def Cluster(name)
        REGISTRY.build(name)
      end
    end
  end
end

