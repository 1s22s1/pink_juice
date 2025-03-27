# frozen_string_literal: true

RSpec.describe KaraokeMachine do
  let(:karaoke_machine) { described_class.new(melody) }

  describe '#transpose' do
    subject { karaoke_machine.transpose(key) }

    context 'スペースが含まれている場合' do
      let(:melody) { ' ' }
      let(:key) { 1 }

      it { is_expected.to eq ' ' }
    end

    context '|が含まれている場合' do
      let(:melody) { '|' }
      let(:key) { 1 }

      it { is_expected.to eq '|' }
    end

    context '1つキーを上げた場合' do
      let(:melody) { 'C' }
      let(:key) { 1 }

      it { is_expected.to eq 'C#' }
    end

    xcontext '1つキーを下げた場合' do
      let(:melody) { 'C#' }
      let(:key) { -1 }

      it { is_expected.to eq 'C' }
    end
  end
end
