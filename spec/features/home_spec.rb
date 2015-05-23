require 'rails_helper'

feature "Homepage exists" do
  scenario "Guest visits homepage and see default text" do
    visit '/'

    expect(page).to have_content('Welcome to Forecast')
    expect(page).to have_content(Date.today)
  end
end