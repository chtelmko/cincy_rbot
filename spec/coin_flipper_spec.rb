# frozen_string_literal: true

require "rspec"

RSpec.describe CincyRbot::CoinFlipper do
  describe ".register_bot_events" do
    let(:bot) { double("bot") }

    it 'matches "flip a coin"' do
      expect(bot).to receive(:message).with(a_regex_that_matches("flip a coin"))

      described_class.register_bot_events(bot)
    end

    it 'matches "coin flip"' do
      expect(bot).to receive(:message).with(a_regex_that_matches("flip a coin"))

      described_class.register_bot_events(bot)
    end
  end

  describe ".flip_a_coin" do
    let(:event) { double("event") }

    it 'returns a string containing "You flipped heads|tails' do
      expect(event).to receive(:respond).with(/^You flipped (heads)|(tails)$/).exactly(100).times

      100.times do
        described_class.flip_a_coin(event)
      end
    end
  end
end
