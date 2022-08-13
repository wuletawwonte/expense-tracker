require 'rails_helper'

RSpec.describe 'Users index page: ', type: :feature do
  before :each do
    @user_one = User.create(name: 'Samuel Alemu', photo: '#', bio: 'A web dev', posts_counter: 0)
    @user_two = User.create(name: 'Minase Bikila', photo: '#', bio: 'A frontend dev', posts_counter: 1)
    @user_three = User.create(name: 'Habte Debebe', photo: '#', bio: 'software engineer', posts_counter: 2)
  end

  it 'Shows username of each user' do
    visit users_path
    expect(page).to have_content(@user_one.name)
    expect(page).to have_content(@user_two.name)
    expect(page).to have_content(@user_three.name)
  end

  it 'Show profile picture for each user' do
    visit users_path
    expect(page).to have_selector("img[src='#{@user_one.photo}']")
    expect(page).to have_selector("img[src='#{@user_two.photo}']")
    expect(page).to have_selector("img[src='#{@user_three.photo}']")
  end

  it 'Shows number of posts for each user' do
    visit users_path
    expect(page).to have_content("Number of posts: #{@user_one.posts_counter}")
    expect(page).to have_content("Number of posts: #{@user_two.posts_counter}")
    expect(page).to have_content("Number of posts: #{@user_three.posts_counter}")
  end

  it 'Navigates to users show page when username clicked' do
    visit users_path
    click_link 'Samuel Alemu'
    expect(current_path).to eq user_path(@user_one.id)
  end
end