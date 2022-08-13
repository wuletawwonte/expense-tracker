require 'rails_helper'

RSpec.describe Purchase, type: :model do

  before { 
    @user = User.create(name: "Wuletaw Wonte", email: "wuletawwonte@gmail.com", password: "123456")
    @category = Category.new(user: @user, name: 'My Category', icon: 'briefcase')
    @purchase = Purchase.new(user: @user, category: @category, name: 'purchase name', amount: '12')

    @purchase.save! 
  }

  it 'is valid with valid attributes' do
    expect(@purchase).to be_valid
  end

  it 'is not valid without a user_id' do
    @purchase.user_id = nil
    expect(@purchase).to_not be_valid
  end

  it 'is not valid without a category_id' do
    @purchase.category_id = nil
    expect(@purchase).to_not be_valid
  end

  it 'is not valid without a name' do
    @purchase.name = nil
    expect(@purchase).to_not be_valid
  end

  it 'is not valid without amount' do
    @purchase.amount = nil
    expect(@purchase).to_not be_valid
  end

end
