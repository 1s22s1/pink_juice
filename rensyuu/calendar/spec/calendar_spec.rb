RSpec.describe Calendar do
  let(:calendar) { Calendar.new }

  describe '#date_month_header' do
    subject { calendar.date_month_header }

    it { is_expected.to eq '      Mar 2025      ' }
  end
end
