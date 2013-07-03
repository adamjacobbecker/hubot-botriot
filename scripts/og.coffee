# Description
#   Display OpenGraph metadata about URLs
#
# Commands:
#   Any URL with OpenGraph metadata - display OpenGraph title, image, etc for URL
module.exports = (robot) ->
  robot.hear /^(https?:\/\/.+)?$/i, (msg) ->
    jsdom = require("jsdom")
    url = msg.match[1]
    return unless url
    jsdom.env(
      url,
      ["http://code.jquery.com/jquery.js"],
      (errors, window) ->
        return unless window
        og = window.$("meta[property='og:type']")
        if og.length > 0
          switch og.attr("content")
            when "video" then
            when "article"
              msg.send window.$("meta[property='og:title']").attr("content")
              msg.send window.$("meta[property='og:image']").attr("content")
            when "instapp:photo"
              msg.send window.$("meta[property='og:description']").attr("content")
              msg.send window.$("meta[property='og:image']").attr("content")
            when "githubog:gitrepository"
              msg.send window.$("meta[property='og:description']").attr("content")
            else
              msg.send window.$("meta[property='og:title']").attr("content")
              msg.send window.$("meta[property='og:image']").attr("content")
        window.close()
      )
