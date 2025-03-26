# frozen_string_literal: true

describe Calendar do
  let(:calendar) { Calendar.new }

  before(:all) do
    Timecop.freeze(Date.new(2025, 0o3, 26))
  end

  describe '#year_month_header' do
    subject { calendar.year_month_header }

    it { is_expected.to eq '      Mar 2025      ' }
  end

  describe '#wday_header' do
    subject { calendar.wday_header }

    it { is_expected.to eq 'Su Mo Tu We Th Fr Sa' }
  end

  describe '#first_line' do
    subject { calendar.first_line }

    it { is_expected.to eq '                   1' }
  end

  describe '#other_lines' do
    subject { calendar.other_lines }

    it {
      is_expected.to eq " 2  3  4  5  6  7  8\n 9 10 11 12 13 14 15\n16 17 18 19 20 21 22\n23 24 25 26 27 28 29\n30 31"
    }
  end
end
