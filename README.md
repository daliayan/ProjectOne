# FamousPhotographers

Welcome to Famous Photograpers! From the terminal window you will use the directory to access the `famous_photographers` file. To experiment with the code, run ` ./bin/select_photographer ` for an interactive prompt. Users should follow the directions in the prompt to learn more about Famous Photographers. In this directory, you'll also find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/famous_photographers`.

# ABOUT: This command line interface first welcomes the user, followed by an outputted list of Famous Photographers. From the terminal, users are allowed to select a photographers name from a numbered list. The user can input the corresponding number to access more information from their selected photographer. Users are presented with the Photographers name, book title, a short summary about their selected photographer, they have the option of clicking a link to directly purchase the photographers book from Amazon, and lastly a link which would output an image.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubygems'
gem 'nokogiri'
gem 'open-uri'
gem 'colorize', '~> 0.8.1'
```

And then execute:

    $ bundle install

When the application gets published as a Gem in the near future, you can install it yourself as:

    $ gem install famous_photographers

## Usage

The user will clone the ProjectOne repository from GitHub to be able to store the application on their personal machines. They will use their change directory command to open into the `famous_photographers` file. The user will type ` ./bin/select_photographer ` into their terminal. 

Once the user inputs that line of code, they will be presented with a welcome prompt as well as a list of famous photographers. The user can input a number corresponding to the photographer they'd like to learn more about. 

From there the user will be asked if they'd like to continue learning about the varying photographers or not. If the user chooses to learn about another photographer they'd be presented with another list of the same photographers - then make their selection again.

If the user chooses not to learn about another photographer, they'll receive a 'good-bye' output in their terminal. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/famous_photographers. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/famous_photographers/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FamousPhotographers project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/famous_photographers/blob/master/CODE_OF_CONDUCT.md).
