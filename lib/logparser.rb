# frozen_string_literal: true

require 'logparser/version'

require 'logparser/parsers/base'
require 'logparser/parsers/most'
require 'logparser/parsers/unique'

require 'logparser/formatters/base'
require 'logparser/formatters/default'

module Logparser
  class Error < StandardError; end
  class FileNotExist < Error; end
  class InvalidParserType < Error; end

  PARSER_TYPES = {
    most: Parsers::Most,
    unique: Parsers::Unique
  }.freeze
  # Your code goes here...
end
