# frozen_string_literal: true

module Logparser
  module Formatters
    class Base
      def call(_line)
        raise NotImplementedError
      end
    end
  end
end
