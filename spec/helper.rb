# frozen_string_literal: true

module Helper
  def file_fixture(name)
    File.join(File.dirname(__FILE__), 'fixtures', name)
  end
end
