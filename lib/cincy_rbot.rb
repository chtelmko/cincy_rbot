# frozen_string_literal: true

require "dotenv"
Dotenv.load(".env.local", ".env")

require "discordrb"

require_relative "cincy_rbot/version"
require_relative "cincy_rbot/coin_flipper"
require_relative "cincy_rbot/dice_roller"

module CincyRbot
  class Error < StandardError; end

  def self.run!
    srand # seed the randomizer
    bot = Discordrb::Bot.new token: ENV.fetch("DISCORD_BOT_TOKEN")

    puts "This bot's invite URL is #{bot.invite_url(permission_bits: 526_133_873_728)}."
    puts "Click on it to invite it to your server."

    matchers = [CoinFlipper, DiceRoller]

    matchers.each { |matcher| matcher.register_bot_events(bot) }

    bot.run
  end
end
