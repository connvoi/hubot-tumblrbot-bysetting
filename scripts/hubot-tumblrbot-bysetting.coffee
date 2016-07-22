# Description:
#   get images from tumblr 
#
# Dependencies:
#   "tumblrbot": "0.1.0"
#
# Configuration:
#   HUBOT_TUMBLR_API_TOKEN
#   HUBOT_TUMBLR_SOURCES
#
# Commands:
#   #if you set HUBOT_TUMBLR_SOURCES='{ "cat-pic.tumblr.com": "cat1", "cat-in-the-world.tumblr.com": "cat2" }
#   nic cage me - Returns a random gif from gifolas-cage.tumblr.com
#   cat1 - Return a random img from cat-pic.tumblr.com
#   cat2 - Return a random img from cat-in-the-world.tumblr.com
#
# Author:
#   connvoi

tumblr = require "tumblrbot"
SOURCES = JSON.parse(process.env.HUBOT_TUMBLR_SOURCES ? '{}')

getGif = (blog, msg) ->
  tumblr.photos(blog).random (post) ->
    msg.send post.photos[0].original_size.url

module.exports = (robot) ->
  for blog,pattern of SOURCES
    do(blog,pattern) ->
       robot.hear ///#{pattern}///, (msg) ->
         getGif blog, msg
