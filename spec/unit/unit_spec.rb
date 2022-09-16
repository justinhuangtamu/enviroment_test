# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
	described_class.new(author: 'rowling')
	described_class.new(price: '7')
	described_class.new(date: '1981-10-31')
  end

  it 'is valid with valid attributes' do
    subject.title = 'harry potter'
	subject.author = 'rowling'
	subject.price = '7'
	subject.date = '1981-10-31'
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
  
  it 'is not valid without a date' do
    subject.date = nil
    expect(subject).not_to be_valid
  end
  
end