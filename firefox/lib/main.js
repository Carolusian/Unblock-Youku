(function() {
  var setup_mode_settings, tab;

  (function() {
    var self;
    self = require("sdk/self");
    return console.log(self.version);
  })();

  setup_mode_settings = function(mode_name) {
    var setup_redirect;
    setup_redirect = require("./redirect").setup_redirect;
    console.log('setup_mode_settings');
    switch (mode_name) {
      case "lite":
        break;
      case "redirect":
        return setup_redirect();
      case "normal":
        break;
      default:
        return console.log('setup_mode_settings: should never come here');
    }
  };

  tab = require("sdk/tabs");

  console.log("ready");

  setup_mode_settings("redirect");

}).call(this);
