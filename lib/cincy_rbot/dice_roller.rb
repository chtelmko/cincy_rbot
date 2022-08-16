# frozen_string_literal: true

module CincyRbot
  class DiceRoller
    class << self
      def register_bot_events(bot)
        bot.message(contains: /roll a|(the) dic?e/) { |event| roll_a_die(event) }
        bot.mention(contains: /re-roll/) { |event| roll_a_die(event) }
      end

      def roll_a_die(event)
        event.respond "You rolled #{rand(1...6)}"
      end
    end
  end
end
