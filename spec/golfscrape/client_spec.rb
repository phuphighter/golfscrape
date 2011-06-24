require 'spec_helper'

describe Golfscrape::Client do
  context "leaderboard" do
    use_vcr_cassette 'leaderboard'
    
    it "should return leaderboard" do
      @client = Golfscrape::Client.new
      @leaderboard = @client.leaderboard
      @leaderboard.last.name.should match /\S+/
      @leaderboard.size.should_not == 0
    end
  end
  
  context "events" do
    use_vcr_cassette 'events'
    
    it "should return events" do
      @client = Golfscrape::Client.new
      @events = @client.events
      @events.last.name.should match /\S+/
      @events.size.should_not == 0
    end
  end
  
  context "rankings" do
    use_vcr_cassette 'rankings'
    
    it "should return rankings" do
      @client = Golfscrape::Client.new
      @rankings = @client.rankings
      @rankings.last.name.should match /\S+/
      @rankings.size.should_not == 0
    end
  end
  
end