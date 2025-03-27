# frozen_string_literal: true

RSpec.describe KaraokeMachine do
  let(:karaoke_machine) { described_class.new(melody) }

  describe '#transpose' do
    subject { karaoke_machine.transpose(key) }

    context '|が含まれている場合' do
      let(:melody) { '|' }
      let(:key) { 1 }

      it { is_expected.to eq '|' }
    end

    context '半角スペースが含まれている場合' do
      let(:melody) { ' ' }
      let(:key) { 1 }

      it { is_expected.to eq ' ' }
    end

    context '1つキーを上げる場合' do
      let(:melody) { 'C' }
      let(:key) { 1 }

      it { is_expected.to eq 'C#' }
    end

    context '1オクターブ上げる場合' do
      let(:melody) { 'C' }
      let(:key) { 12 }

      it { is_expected.to eq 'C' }
    end

    context '1つキーを下げる場合' do
      let(:melody) { 'C#' }
      let(:key) { -1 }

      it { is_expected.to eq 'C' }
    end

    context '1オクターブ下げる場合' do
      let(:melody) { 'C' }
      let(:key) { -12 }

      it { is_expected.to eq 'C' }
    end

    context '複数の音韻の場合' do
      let(:melody) { 'CD' }
      let(:key) { 1 }

      it { is_expected.to eq 'C#D#' }
    end
  end
end
