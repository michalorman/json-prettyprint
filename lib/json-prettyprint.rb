if RUBY_VERSION < "1.9"
  begin
    require 'rubygems'
    unless Gem.available? 'json'
      puts "\n\nPlease install 'json' gem using 'gem install json' command.\n"
      Process.exit
    end
  rescue Gem::LoadError
    puts "\n\nThe program requires either Ruby 1.9 or lower with 'rubygems' and 'json' gem installed.\n"
  end
end

require 'json'
require "json-prettyprint/version"

module JSON
  module PrettyPrint
    def self.print input
      json = JSON.parse input
      pretty_json = JSON::pretty_generate json, allow_nan: true, max_nesting: false

      encoder = CodeRay.encoder :term
      encoder.encode pretty_json, :json
    end
  end
end
