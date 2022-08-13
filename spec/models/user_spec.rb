require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.create(name: 'Wuletaw Wonte', email: 'wuletawwonte@gmail.com', password: '123456') }

  before { subject.save }

  it 'user subject should be valid' do
    expect(subject).to be_valid
  end

  describe 'check for validations' do
    it 'invalidate without name' do
      subject.name = ''
      expect(subject).to_not be_valid
    end

    it 'contains the right name' do
      subject.name = 'Wuletaw Wonte'
      expect(subject).to be_valid
    end

    it 'invalid without password' do
      subject.password = '123456'
      expect(subject).to be_valid
    end
  end
end
