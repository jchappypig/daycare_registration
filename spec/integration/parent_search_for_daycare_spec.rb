require 'rails_helper'

feature 'Search Daycare' do
  background do
    DaycareCentre.create(:name => 'Carlton Daycare', :address => '9-11 Jubilee Ave, Carlton, 2218, NSW')
  end

  scenario 'search by postcode' do
    visit root_path
    fill_in 'search', with: '2218'
    click_on 'Search'
    expect(page).to have_content '9-11 Jubilee Ave, Carlton, 2218, NSW'
  end
end
