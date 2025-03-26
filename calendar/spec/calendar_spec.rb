# frozen_string_literal: true

describe Calendar do
  let(:calendar) { described_class.new }

  describe '#year_month_header' do
    subject { calendar.year_month_header }

    around do |ex|
      travel_to(today) { ex.run }
    end

    context 'when today is 2025/03/31' do
      let(:today) { Date.parse('2025/03/31') }

      it { is_expected.to eq '      Mar 2025      ' }
    end

    context 'when today is 2025/04/01' do
      let(:today) { Date.parse('2025/04/01') }

      it { is_expected.to eq '      Apr 2025      ' }
    end
  end

  describe '#wday_header' do
    subject { calendar.wday_header }

    it { is_expected.to eq 'Su Mo Tu We Th Fr Sa' }
  end

  describe '#first_line' do
    subject { calendar.first_line }

    around do |ex|
      travel_to(today) { ex.run }
    end

    context 'when today is 2025/03/31' do
      let(:today) { Date.parse('2025/03/31') }

      it { is_expected.to eq '                   1' }
    end

    context 'when today is 2025/04/01' do
      let(:today) { Date.parse('2025/04/01') }

      it { is_expected.to eq '       1            ' }
    end
  end

  describe '#other_lines' do
    subject { calendar.other_lines }

    it {
      is_expected.to eq " 2  3  4  5  6  7  8\n 9 10 11 12 13 14 15\n16 17 18 19 20 21 22\n23 24 25 26 27 28 29\n30 31"
    }
  end
end
