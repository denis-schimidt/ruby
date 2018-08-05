require 'rspec'
require_relative '../lib/thingie'

describe Thingie do
  describe '#prod' do

    let(:subject) {Thingie.new}

    context 'when index is valid' do
      it 'should return a value from array' do
        result=subject.prod 3
        expect(result).not_to be_empty
      end
    end

    context 'when index is invalid' do
      it 'should raise an exception' do
        expect{subject.prod 4}.to raise_error(ArgumentError)
      end
    end
  end
end