module Golfscrape
  
  class Client                
    def initialize
    end

    def leaderboard
      response = []
      url = "http://sports.yahoo.com/golf/pga/leaderboard"
      doc = Nokogiri::HTML(open(url))
      doc.css('div#leaderboardtable table.sportsTable').first.css('tbody tr').each do |player|
        begin
          @position = player.css('td.position').children.last.content.gsub("\n", "")
          @name = player.css('td.player').css('a').first.children.last.content
          @first = player.css('td')[2].children.last.content.gsub("\n", "")
          @second = player.css('td')[3].children.last.content.gsub("\n", "") 
          @third = player.css('td')[4].children.last.content.gsub("\n", "") 
          @fourth = player.css('td')[5].children.last.content.gsub("\n", "") 
          @today = player.css('td')[6].children.last.content.gsub("\n", "") 
          @thru = player.css('td')[7].children.last.content.gsub("\n", "") unless player.css('td')[7].attributes["class"].value.match(/total/)
          @total = player.css('td.total').children.last.content.gsub("\n", "") 
          
          if player.css('td.earnings')
            @strokes = player.css('td')[8].children.last.content.gsub("\n", "") 
          else            
            @strokes = player.css('td')[9].children.last.content.gsub("\n", "") 
          end
          
        rescue
        end
        
        response << Hashie::Mash.new(:position => @position, :name => @name, :first_round => @first, :second_round => @second, :third_round => @third,
                                     :fourth_round => @fourth, :today => @today, :thru => @thru, :total => @total, :strokes => @strokes)
      end
      
      response
    end
    
    def rankings
      response = []
      url = "http://www.sportsnetwork.com/merge/tsnform.aspx?c=azcentral&page=golf-m/stand/WORLD-MEN-GOLF-RANK.htm" 
      doc = Nokogiri::HTML(open(url))
      doc.css('table')[1].css('table tr').each do |player|
        begin
          
          unless player.css('td').first.content == "Rank" || player.css('td').first.content.match(/NOTES/)
            @rank = player.css('td').first.content
            @name = player.css('td')[1].content
            @country = player.css('td')[2].content
            @avg = player.css('td')[3].content
            @points = player.css('td')[4].content
            @events = player.css('td')[5].content
          end
        
        rescue
        end
        
        response << Hashie::Mash.new(:rank => @rank, :name => @name, :country => @country, :avg => @avg, :points => @points, :events => @events)
      end
      
      response.uniq
    end 
    
    def events
      response = []
      url = "http://espn.go.com/golf/schedule"
      doc = Nokogiri::HTML(open(url))
      
      events_curr = doc.css('table.tablehead')[0].css('tr')      
      events_curr.each do |event|
        begin
          unless events_curr.index(event) == 0 || events_curr.index(event) == 1
            @dates = event.css('td').css('nobr').first.children.first.content.split(" - ")
            @start_date = Time.parse(@dates.first)
            @end_date = Time.parse(@dates.last)
            @name = event.css('td')[1].children.first.content
            @location = event.css('td')[1].css('em').first.children.first.content
          end
        rescue
        end
        
        response << Hashie::Mash.new(:start_date => @start_date, :end_date => @end_date, :name => @name, :location => @location)
      end
      
      events = doc.css('table.tablehead')[2].css('tr')
      events.each do |event|
        begin
          unless events.index(event) == 0 || events.index(event) == 1
            @dates = event.css('td').css('nobr').first.children.first.content.split(" - ")
            @start_date = Time.parse(@dates.first)
            @end_date = Time.parse(@dates.last)
            @name = event.css('td')[1].children.first.content
            @location = event.css('td')[1].css('em').first.children.first.content
          end
        rescue
        end
        
        response << Hashie::Mash.new(:start_date => @start_date, :end_date => @end_date, :name => @name, :location => @location)
      end
      
      response.uniq
    end   

  end
end
