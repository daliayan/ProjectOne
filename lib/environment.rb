# frozen_string_literal: true


require 'pry'
require 'nokogiri'
require 'open-uri'



require_relative './famous_photographers/photographer.rb'
require_relative './famous_photographers/scraper.rb'
require_relative './famous_photographers/cli.rb'




module FamousPhotographers
  class Error < StandardError; end
  # Your code goes here...
end
