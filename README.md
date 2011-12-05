# Domo.rb
Utility functions for domain strings

### Installation
	gem install domo-rb


### Usage
    >> require 'domo'
    => 'true'

    >> Domo.canonicalize "www.ebay.com"
    => "ebay.com"

    >> Domo.canonicalize "boats.ebay.co.uk"
    => "ebay.co.uk"

    >> Domo.canonicalize "edition.cnn.com"
    => "cnn.com"

    >> Domo.strip_url "http://www.cnn.com/news/last-week/main.html"
    => "www.cnn.com"


### Testing Notes
Install development dependencies with

    bundle install
And run the tests with:

    rake spec


Copyright (c) 2011 Gur Dotan, released under the MIT license.
