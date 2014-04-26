require 'spec_helper'
require 'capybara/rspec'

Capybara.app = Application

feature 'Homepage' do
  scenario 'User can add a dob' do
    visit '/'
    click_on 'Add a Dog'
    fill_in 'name', with: 'Rufus'
    fill_in 'breed', with: 'French Mastiff'
    fill_in 'puppies', with: 9
    click_on 'Create Dog'
    expect(page).to have_content 'Rufus'
  end
end