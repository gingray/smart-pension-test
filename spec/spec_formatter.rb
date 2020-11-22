# frozen_string_literal: true

module Logparser
  module Formatters
    class SpecFormatter < Formatters::Base
      attr_reader :buffer

      def initialize
        @buffer = []
        super
      end

      def call(line)
        buffer << line
      end

      def clean
        @buffer = []
      end
    end
  end
end
