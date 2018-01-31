require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user, age: age) }
  describe 'age' do
    subject { user.valid? }
    context '12歳の場合' do
      let(:age) { 12 }
      it { is_expected.to be true }
    end

    context '-1歳の場合' do
      let(:age) { -1 }
      it { is_expected.to be false }
    end
  end
end
