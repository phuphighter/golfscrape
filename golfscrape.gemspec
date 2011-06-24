# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "golfscrape/version"

Gem::Specification.new do |s|
  s.name        = "golfscrape"
  s.version     = Golfscrape::VERSION
  s.authors     = ["Johnny Khai Nguyen"]
  s.email       = ["johnnyn@gmail.com"]
  s.homepage    = "https://github.com/phuphighter/golfscrape"
  s.summary     = %q{Ruby class to scrape PGA Tour golf data}
  s.description = %q{Use this gem to get PGA Tour data for tournaments, world rankings, and the leaderboard}

  s.rubyforge_project = "golfscrape"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'nokogiri'
  s.add_dependency 'hashie'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'vcr'  
end
