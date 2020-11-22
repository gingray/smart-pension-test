# frozen_string_literal: true

module Logparser
  module Parsers
    class Most < Base
      attr_reader :data

      def initialize(*args)
        @data = Hash.new(0)
        super
      end

      def process_line(path, _ip)
        data[path] += 1
      end

      def display(formatter)
        data.each do |key, val|
          formatter.call "#{key} #{val} visits"
        end
      end
    end
  end
end
