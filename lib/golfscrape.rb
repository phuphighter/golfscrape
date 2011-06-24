require 'rubygems'
require 'open-uri'
require 'hashie'
require 'nokogiri'
require 'time'

directory = File.expand_path(File.dirname(__FILE__))

module Golfscrape
  
  def self.configure
    yield self
    true
  end
  
end

require File.join(directory, 'golfscrape', 'client')
