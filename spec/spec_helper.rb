require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'vcr_setup'
require 'golfscrape'

RSpec.configure do |config|
  config.extend VCR::RSpec::Macros
end