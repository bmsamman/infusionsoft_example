require 'infusionsoft'
require_relative 'parse_me_options'


Infusionsoft.configure do |config|
  config.api_url = @options.url # example infused.infusionsoft.com DO NOT INCLUDE https://
  config.api_key = @options.key
end

def example_hash
  {
    Email: "test#{Time.now.to_i.to_s}@example.com",
    FirstName: 'Sevserus',
    LastName: 'Snapes'
  }
end

Infusionsoft.contact_add(example_hash)