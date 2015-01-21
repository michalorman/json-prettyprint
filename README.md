# JSON PrettyPrint

[![Gem Version](https://badge.fury.io/rb/json-prettyprint.png)](http://badge.fury.io/rb/json-prettyprint)

The only reason for creating this gem was to provide me some tool that will allow me formatting
and highlighting JSON API responses fetched using `curl` command.

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
pretty_json = JSON::PrettyPrint.prettify json
```

## License

Copyright (c) 2013 Michal Orman

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
