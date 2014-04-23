# Wonder

This gem add encryp and uncryp function to String, also add a format
function to Integer and Float

## Installation

Add this line to your application's Gemfile:

    gem 'wonder'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wonder

## Usage

You can use your private key to encryp or uncryp one string, for example:

key = "thisismykey"

encryped_str = 'HelloWorld'.to_encryp(key)

uncryped_str = encryped_str.to_uncryp(key)

puts uncryped_str

Also you can use commas function to format an Integer or a Float

puts 123.commas        #123.00

puts 123.4.commas      #123.40

puts 12345.67.commas   #12,345.67


## Contributing

1. Fork it ( https://github.com/[my-github-username]/wonder/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
