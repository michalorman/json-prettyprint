# JSON PrettyPrint

The **JSON PrettyPrint** is a simple tool that let you format any json output (like one received
from some API using `curl`). It will format the JSON response and apply syntax highlighting.

## Installation

The best way to install this tool is to manually execute:

    $ gem install json-prettyprint

You can also add it to the Gemfile if you want:

```ruby
gem 'json-prettyprint'
```

## Usage

The **JSON PrettyPrint** provides command line tool `jj` which can be piped to any other command
like this:

    $ curl https://github.com/michalorman.json | jj

If you, for some weird reason, want to use it in some code, you can generate pretty
json like this:

```ruby
require 'json-prettyprint'

json = STDIN.gets
pretty_json = JSON::PrettyPrint.print json
```
