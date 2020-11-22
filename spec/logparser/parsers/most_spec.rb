# frozen_string_literal: true

RSpec.describe Logparser::Parsers::Most do
  describe '#call' do
    let(:formatter) { ::Logparser::Formatters::SpecFormatter.new }
    let(:service) { Logparser::Parsers::Most.new(file, formatter) }

    before { service.call }

    context 'parse log' do
      let(:file) { file_fixture('webserver.log') }
      let(:expected) do
        ['/about 81 visits', '/help_page/1 80 visits', '/contact 89 visits', '/home 78 visits', '/about/2 90 visits',
         '/index 82 visits']
      end

      it 'success' do
        expect(formatter.buffer).to match_array(expected)
      end
    end
  end
end
