# hubot-botriot

Porting all of the commands from http://botriot.com that Hubot doesn't have.

## Ported Commands

- pivot
- curse

## Commands TODO

These haven't been ported yet, but hopefully will soon. Might need to come up
with different names to avoid collisions with Hubot.

- answer (Yahoo! Answers)
- archive
- curl
- eat (foodspotting, although Hubot has `yelp`)
- eyebleach
- kayne
- lyrics (Hubot has one based on wikia, Botriot's is based on musixmatch)
- movie (Hubot has imdb, Botriot has rotten tomatoes)
- personality (Hubot has some, but missing these)
  - "I have no idea what I'm doing" dogs
  - The various "siri" responses
- play (play a song sample from iTunes)
- rage (Hubot has some, but maybe Botriot's is better)
- relate (Hubot has wordnik / urban dictionary, but not "related" support for either)
- tumblr (Hubot one is hardcoded to a specific blog)
- twss
- youtube

## Non-ported Commands

- define.
  - https://github.com/github/hubot-scripts/blob/master/src/scripts/wordnik.coffee
  - https://github.com/github/hubot-scripts/blob/master/src/scripts/urban.coffee
- gems. https://github.com/github/hubot-scripts/blob/master/src/scripts/rubygems.coffee
- lastfm. https://github.com/github/hubot-scripts/blob/master/src/scripts/lastfm_np.coffee
- say. https://github.com/github/hubot-scripts/blob/master/src/scripts/speak.coffee
- spin. https://github.com/github/hubot-scripts/blob/master/src/scripts/whos-turn.coffee
- webhook
