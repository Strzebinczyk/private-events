# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe 'User signs out', type: :feature do
  it 'logs the user out' do
    @user1 = create(:user)
    log_in_with @user1.email, @user1.password
    click_link 'Sign out'

    expect(page).to have_content('Signed out successfully.')
  end
end
