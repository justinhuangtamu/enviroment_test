# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Add author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('rowling')
  end
end

RSpec.describe 'Add price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with: '7'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('7')
  end
end

RSpec.describe 'Add date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Date', with: '10/31/1981'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('10/31/1981')
  end
end