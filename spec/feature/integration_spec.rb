# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
	fill_in 'Author', with: 'rowling'
	fill_in 'Price', with: '7'
	fill_in 'Date', with: '1981-10-31'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
	
  end
  scenario 'invalid title' do
    visit new_book_path
	fill_in 'Author', with: 'rowling'
	fill_in 'Price', with: '7'
	fill_in 'Date', with: '10/31/1981'
    click_on 'Create Book'
    expect(page).to have_content("Title can't be blank")
  end
  scenario 'invalid author' do
    visit new_book_path
	fill_in 'Title', with: 'rowling'
	fill_in 'Price', with: '7'
	fill_in 'Date', with: '1981-10-31'
    click_on 'Create Book'
    expect(page).to have_content("Author can't be blank")
  end
  scenario 'invalid price' do
    visit new_book_path
	fill_in 'Title', with: 'harry potter'
	fill_in 'Author', with: 'rowling'
	fill_in 'Date', with: '1981-10-31'
	click_on 'Create Book'
    expect(page).to have_content("Price can't be blank")
  end
  scenario 'invalid date' do
    visit new_book_path
	fill_in 'Title', with: 'harry potter'
	fill_in 'Author', with: 'rowling'
	fill_in 'Price', with: '7'
	click_on 'Create Book'
    expect(page).to have_content("Date can't be blank")
  end
end

