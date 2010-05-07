class Factory
  class Proxy #:nodoc:
    class AttributesFor < Proxy #:nodoc:
      def initialize(klass, args = [])
        @hash = (args.size == 1 && args[0].is_a?(Hash) ? args[0] : {})
      end

      def get(attribute)
        @hash[attribute]
      end

      def set(attribute, value)
        @hash[attribute] = value
      end

      def result
        @hash
      end
    end
  end
end
