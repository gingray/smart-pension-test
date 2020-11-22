# frozen_string_literal: true

module Logparser
  module Parsers
    class Base
      attr_reader :filepath, :formatter

      def initialize(filepath, formatter = ::Logparser::Formatters::Default.new)
        @filepath = filepath
        @formatter = formatter
      end

      def call
        validate!
        File.readlines(filepath).each do |line|
          path, ip = line.split ' '
          process_line path, ip
        end
        display(formatter)
      end

      def validate!
        raise FileNotExist, "file not exist: #{filepath}" unless File.exist?(filepath)
      end

      def process_line(_path, _ip)
        raise NotImplementedError
      end

      def display(_formatter)
        raise NotImplementedError
      end
    end
  end
end
