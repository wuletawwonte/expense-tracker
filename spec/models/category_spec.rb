require 'rails_helper'

RSpec.describe Category, type: :model do

  before { 
    @user = User.create(name: "Wuletaw Wonte", email: "wuletawwonte@gmail.com", password: "123456")
    @category = Category.new(user: @user, name: 'My Category', icon: 'briefcase')

    @category.save! 
  }

  it 'is valid with valid attributes' do
    expect(@category).to be_valid
  end

  it 'is not valid without a user_id' do
    @category.user_id = nil
    expect(@category).to_not be_valid
  end

  it 'is not valid without a name' do
    @category.name = nil
    expect(@category).to_not be_valid
  end

  it 'is not valid without an icon' do
    @category.icon = nil
    expect(@category).to_not be_valid
  end

end
