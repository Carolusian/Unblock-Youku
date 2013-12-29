
do () ->
  self = require("sdk/self")
  console.log(self.version)

# The lastest version to show NEW on the icon;
# it's usually a big update with new features
# TODO version = storage.previous_new_version

# Configuration functions
setup_mode_settings = (mode_name) ->
  { setup_redirect } = require("./redirect")
  console.log 'setup_mode_settings'
  switch mode_name
    when "lite" then
    when "redirect" then setup_redirect()
    when "normal" then
    else console.log 'setup_mode_settings: should never come here'

# Initialization
tab = require("sdk/tabs")
# equivalent to the DOMContentLoaded event for the given content page.
# tab.on "ready", (t) ->
console.log "ready"
setup_mode_settings("redirect")

