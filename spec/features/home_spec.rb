require 'rails_helper'

feature 'Homepage exists' do
  background do
    visit '/'
  end

  scenario 'Guest visits homepage and sees quote and other texts' do
    expect(page).to have_content('Register')
    expect(page).to have_content('Login')
    expect(page).to have_content('The pessimist complains about the wind; the optimist expects it to change; the realist adjusts the sails.')
    expect(page).to have_content('Financial Forecasting')
    expect(page).to have_content('GET STARTED')

    expect(page).to have_content('Create An Account')
    expect(page).to have_content('Or Login with...')
  end

  scenario 'Guest logs in with Google and sees menu and a different quote' do
    OmniAuth.config.test_mode = true
    set_valid_google_omniauth

    within '.auth-dropdown-login' do
      click_on 'Google'
    end

    expect(page).to have_content('Successfully authenticated from Google_oauth2 account')
    expect(page).to have_content('Budget')
    expect(page).to have_content('Shopquik')
    expect(page).to have_content('Track')
    expect(page).to have_content('Hi, Jade Kent')
    expect(page).to have_content('LOGOUT')
    expect(page).to have_content('Both optimists and pessimists contribute to our society. The optimist invents the airplane and the pessimist the parachute.')
    expect(page).not_to have_content('GET STARTED')
  end

  scenario 'Guest logs in with Facebook' do
    OmniAuth.config.test_mode = true
    set_valid_facebook_omniauth

    within '.auth-dropdown-login' do
      click_on 'Facebook'
    end

    expect(page).to have_content('Hi, Joe Bloggs')
    expect(page).to have_content('LOGOUT')
  end

  xscenario 'Guest logs in with Username' do
    #TODO This test is not working. Improve on it to use Factory
    new_guest = create(:guest)
    click_on 'Login'

    within '.login' do
      first('input#guest_login').set(new_guest.username)
      first('input#guest_password').set('password')
    end

    expect(page).to have_content('succexxful')
  end
end