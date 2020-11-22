# frozen_string_literal: true

module Logparser
  module Parsers
    class Unique < Base
      attr_reader :data

      def initialize(*args)
        @data = Hash.new { |hash, val| hash[val] = Set.new }
        super
      end

      def process_line(path, ip)
        data[path].add ip
      end

      def display(formatter)
        data.each do |key, val|
          formatter.call "#{key} #{val.size} unique views"
        end
      end
    end
  end
end
