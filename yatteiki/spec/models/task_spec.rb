require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#valid?' do
    let(:task) { Task.build(title: title, description: description) }

    subject { task.valid? }

    describe '有効な入力' do
      let(:title) { '作業名を記載する' }
      let(:description) { '説明を記載する' }

      it { is_expected.to eq true }
    end

    describe '無効な入力' do
      context 'タイトルを入力しない場合' do
        let(:title) { nil }
        let(:description) { nil }

        it { is_expected.to eq false }
      end
    end
  end
end
