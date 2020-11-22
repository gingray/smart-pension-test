# frozen_string_literal: true

module Logparser
  module Formatters
    class Default
      def call(line)
        puts line
      end
    end
  end
end
