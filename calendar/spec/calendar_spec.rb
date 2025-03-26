describe Calendar do
  let(:calendar) { Calendar.new }

  describe '#year_month_header' do
    subject { calendar.year_month_header }

    it { is_expected.to eq "     Mar 2025     " }
  end

  describe '#wday_header' do
    subject { calendar.wday_header }

    it { is_expected.to eq "Su Mo Tu We Th Fr Sa" }
  end

  describe '#first_line' do
    subject { calendar.first_line }

    it { is_expected.to eq '                   1' }
  end
end
