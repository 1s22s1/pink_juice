RSpec.describe KaraokeMachine do
  let(:karaoke_machine) { described_class.new(melody) }

  describe '#transpose' do
    subject { karaoke_machine.transpose(key) }

    context '|を入力した場合' do
      let(:melody) { '|' }
      let(:key) { 1 }

      it { is_expected.to eq '|' }
    end
  end
end
