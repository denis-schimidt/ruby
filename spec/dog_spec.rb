require "#{File.expand_path('lib/dog')}"

describe Dog, has_been_walked:true do

  def create_dog(good_or_not)
    dog = Dog.new(good_or_not)
    dog.walk_dog

    return dog
  end

  it 'should be able to create and walk a good dog' do |example|
    dog = create_dog  true

    expect(dog.good_dog).to be true
    expect(dog.has_been_walked).to be example.metadata[:has_been_walked]
  end

  it 'should be able to create and walk a bad dog' do
    dog = create_dog false

    expect(dog.good_dog).to be false
    expect(dog.has_been_walked).to be true
  end
end