RSpec.describe KaraokeMachine do
  let(:karaoke_machine) { described_class.new(melody) }

  describe '#transpose' do
    subject { karaoke_machine.transpose(key) }

    context '|を入力した場合' do
      let(:melody) { '|' }
      let(:key) { 1 }

      it { is_expected.to eq '|' }
    end

    context '半角スペースを入力した場合' do
      let(:melody) { ' ' }
      let(:key) { 1 }

      it { is_expected.to eq ' ' }
    end

    context '1キーを上げる場合' do
      let(:melody) { 'C#' }
      let(:key) { 1 }

      it { is_expected.to eq 'D' }
    end

    context '1キーを下げる場合' do
      let(:melody) { 'D' }
      let(:key) { -1 }

      it { is_expected.to eq 'C#' }
    end
  end
end
