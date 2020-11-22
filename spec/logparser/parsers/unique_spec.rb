# frozen_string_literal: true

RSpec.describe Logparser::Parsers::Unique do
  describe '#call' do
    let(:formatter) { ::Logparser::Formatters::SpecFormatter.new }
    let(:service) { Logparser::Parsers::Unique.new(file, formatter) }

    before { service.call }

    context 'parse log' do
      let(:file) { file_fixture('webserver.log') }
      let(:expected) do
        ['/about 21 unique views', '/about/2 22 unique views', '/contact 23 unique views',
         '/help_page/1 23 unique views', '/home 23 unique views', '/index 23 unique views']
      end

      it 'success' do
        expect(formatter.buffer).to match_array(expected)
      end
    end
  end
end
