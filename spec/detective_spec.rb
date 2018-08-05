require 'rspec'
require_relative '../lib/detective'
require_relative '../lib/thingie'
require_relative '../lib/user'

describe Detective do
  describe '#investigate' do
    before(:each) do
      counter = 0
      @thingie = spy(:thingie)
      @user = spy(:user)

      @detective = Detective.new(@thingie, @user)
    end

    it 'should do something' do
      expect(@thingie).to receive(:prod).ordered
      expect(@user).to receive(:to_observe).ordered
      expect(@thingie).to receive(:banana).ordered

      p @detective.investigate_user
      p @detective.investigate_user
      p @detective.investigate_user

      # expect(@thingie).to have_received(:prod).at_least(3).times
      # expect(@user).to have_received(:to_observe).at_least(3).times
      # expect(@thingie).to have_received(:banana).at_least(3).times
    end
  end
end