require 'rails_helper'

describe "the log in process", :type => :feature do
  # User.create!(:username => 'mrpants', :password => 'pants')

  it "signs me up" do
    visit signup_path
    within "#signup" do
      fill_in 'user_username', :with => 'ringo'
      fill_in 'user_password', :with => 'drums'
      click_button 'Sign-Up'
    end
    visit root_path
    expect(page).to have_content('Hello, ringo')
  end
end