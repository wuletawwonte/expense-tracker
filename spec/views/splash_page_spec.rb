require 'rails_helper'

RSpec.describe 'Show splash page: ', type: :feature do
  before(:each) do
    visit '/'
  end

  it 'shows the name of the application' do
    expect(page).to have_content('expense tracker')
  end

  it 'shows the login link' do
    expect(page).to have_content('LOGIN')
  end

  it 'shows the sign up link' do
    expect(page).to have_content('SIGN UP')
  end
end
