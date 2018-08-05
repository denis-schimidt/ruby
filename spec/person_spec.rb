require "#{File.expand_path('lib/person')}"

describe Person do

  before(:each) do
    @person = Person.new 'Fulano', 'da Silva'
  end

  it 'should return first name' do
    expect(@person).to have_attributes(first_name: 'Fulano')
  end

  it 'should return last name' do
    expect(@person).to have_attributes(last_name: 'da Silva')
  end
end