require "#{File.expand_path('lib/game')}"

describe Game do
  describe '#score' do
    it 'returns 0 for an all gutter game' do
      subject = Game.new
      20.times { subject.roll(0) }
      expect(subject.score).to eq(0)
    end
  end
end