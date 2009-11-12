
module HashProperties
  def self.included(base)
    #    base.send(:include,InstanceMethods)
    base.send(:extend, ClassMethods)
  end

  module ClassMethods
      def hash_property(name)
        define_method('unmarshall') do
          if @properties.nil?
            @properties = self[:properties].blank? ? {} : YAML.load(self[:properties])
          end
          @properties
        end

        define_method(name.to_s) do
          unmarshall[name]
        end

        define_method("#{name}=") do |value|
          unmarshall[name] = value
        end

        define_method('marshall') do
          self[:properties] = unmarshall.to_yaml
        end

        before_save :marshall
      end
  end
end