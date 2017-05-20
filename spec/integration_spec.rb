require 'spec_helper'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Store',{:type => :feature}) do
  it('goes to the home page') do
    visit('/')
    expect(page).to have_content('Welcome')
    end
  it('adds a store to the database') do
    visit('/store')
    fill_in('store_name', :with => "Payless")
    click_on("Submit")
    expect(page).to have_content('Welcome')
  end
  describe('Brand',{:type => :feature}) do
    it('adds a brand to the database') do
      visit('/brand')
        fill_in('brand_type', :with => "Nike")
        fill_in('brand_price', :with => "50")
      expect(page).to have_content('Nike')
      end
    end
end
