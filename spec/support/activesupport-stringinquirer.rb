module ActiveSupport
  class StringInquirer
    def initialize(name)
      @name = name
    end

    def method_missing(method_name, *arguments, &block)
      return super unless boolean?(method_name)

      method_name.to_s.chomp("?") == @name
    end

    def boolean?(method_name)
      method_name.to_s.chars.last == "?"
    end
  end
end