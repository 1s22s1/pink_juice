# frozen_string_literal: true

RSpec.describe KaraokeMachine do
  let(:karaoke_machine) { described_class.new(melody) }

  describe '#transpose' do
    subject { karaoke_machine.transpose(key) }

    context '２つキーを上げた場合' do
      let(:melody) { 'CDEFG' }
      let(:key) { 2 }

      it { is_expected.to eq 'DEF#GA' }
    end
  end
end
