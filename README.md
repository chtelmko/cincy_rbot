# CincyRbot

This is a Discord bot for use during the Cincy RB Meetup!

## Installation

check this project out via git clone, then run

```bash
bundle install
```

## Usage

to make this bot go

* Get a Discord account and create a Developer Application at https://discord.com/developers/applications
* Make the Application a Bot, and generate and copy the Bot Token
  * Click on the bot tab under the application, then click the "Add Bot" button to the right of the screen
  * Click "Reset Token", then click "Copy" to put the bot token on the clipboard
* Copy the `.env` file to `.env.local` and replace the area in the double quotes with your bot's token
* Run `bundle console`
* In the irb session, run `CincyRbot.run!`
* Copy the bot's invite url in the console and visit that in a browser
* Invite the bot to the Bot testing server
* Try the message "flip a coin" in the server where the bot exists and is running
* Play!
