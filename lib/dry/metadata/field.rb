module Dry
  module Metadata
    # metadata about a dry-validation key:value pair and a dry-struct field
    class Field
      attr_reader :name
      attr_reader :required
      attr_reader :types
      attr_reader :logic
      attr_reader :fields
      attr_reader :pattern

      alias required? required

      def initialize(args)
        @name = args[:name]
        @required = args[:required]
        @types = args[:types]
        @logic = args[:logic]
        @fields = args[:fields] || []
        @pattern = args[:pattern]
      end

      def optional
        !required?
      end
      alias optional? optional

      def to_h
        { name: name, required: required?,
          types: types, logic: logic, fields: fields.to_a, pattern: pattern }
      end

      def [](key)
        to_h[key]
      end

      def <=>(other)
        name <=> other.name
      end

      def to_s
        "<name: #{name}, required: #{required?}, types: #{types.inspect}, " \
        "logic: #{logic.inspect}, fields: #{fields.inspect}>"
      end

      def label
        Inflecto.humanize(name)
      end
    end
  end
end
