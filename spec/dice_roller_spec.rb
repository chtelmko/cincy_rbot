# frozen_string_literal: true

require "rspec"

RSpec.describe CincyRbot::DiceRoller do
  describe ".register_bot_events" do
    let(:bot) { double("bot") }

    before do
      allow(bot).to receive(:message)
      allow(bot).to receive(:mention)
    end

    it 'matches "roll a die"' do
      expect(bot).to receive(:message).with(a_regex_that_matches("roll the die"))

      described_class.register_bot_events(bot)
    end

    it 'matches "roll the die"' do
      expect(bot).to receive(:message).with(a_regex_that_matches("roll the die"))

      described_class.register_bot_events(bot)
    end

    it 'matches "roll the dice"' do
      expect(bot).to receive(:message).with(a_regex_that_matches("roll the dice"))

      described_class.register_bot_events(bot)
    end

    # it 'matches "re-roll" on a mention event' do
    #   expect(bot).to receive(:mention).with(a_regex_that_matches("re-roll"))

    #   described_class.register_bot_events(bot)
    # end
  end

  describe ".roll_a_die" do
    let(:event) { double("event") }

    it 'returns a string containing "You rolled [1-6]' do
      expect(event).to receive(:respond).with(/^You rolled [1-6]$/).exactly(100).times

      100.times do
        described_class.roll_a_die(event)
      end
    end
  end
end
