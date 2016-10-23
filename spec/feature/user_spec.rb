# require_relative '../spec_helper'

require './app/models/user'
require 'spec_helper'

feature 'sign up form' do
  scenario 'user is able to sign up to chatter' do
    visit '/sign-up'
    fill_in 'name', :with => 'Liz'
    fill_in 'user_name', :with =>'Liz600'
    fill_in 'email', :with => 'liz@gmail.com'
    fill_in 'password', :with =>'password'
    fill_in 'password_confirmation', :with => 'password'
    click_button 'Sign up'
    expect(User.first.name).to eq('Liz')
  end
end
