# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Eegm::Application.initialize!

Time::DATE_FORMATS[:time] = "%B %d, %I:%M %p"
