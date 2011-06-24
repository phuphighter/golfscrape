# Golfscrape - PGA Tour Data

Ruby class to get data from the PGA Tour

    Leaderboard from Yahoo
    Rankings from SportsNetwork
    Events from ESPN

## Installation

Inside your Gemfile:
    gem 'golfscrape'
    
## Usage

### Instantiate a client

    >> @client = Golfscrape::Client.new
    
## Examples

#### Leaderboard

    >> @leaderboard = @client.leaderboard
    => [<#Hashie::Mash first_round="56" fourth_round="-" name="Michael Bradley" position="1" second_round="-" strokes="56" third_round="-" thru="16" today="-6" total="-6">, <#Hashie::Mash first_round="61" fourth_round="-" name="Chris Couch" position="T2" second_round="-" strokes="61" third_round="-" thru="17" today="-5" total="-5">, <#Hashie::Mash first_round="57" fourth_round="-" name="Bryce Molder" position="T2" second_round="-" strokes="57" third_round="-" thru="16" today="-5" total="-5">, <#Hashie::Mash first_round="54" fourth_round="-" name="John Rollins" position="T2" second_round="-" strokes="54" third_round="-" thru="15" today="-5" total="-5">...]
    
#### Rankings
    >> @rankings = @client.rankings
    => [<#Hashie::Mash avg=nil country=nil events=nil name=nil points=nil rank=nil>, <#Hashie::Mash avg="9.06" country="Eng" events="53" name="Luke Donald" points="480.41" rank="1">, <#Hashie::Mash avg="8.80" country="Eng" events="48" name="Lee Westwood" points="422.59" rank="2">, <#Hashie::Mash avg="7.22" country="Deu" events="49" name="Martin Kaymer" points="353.89" rank="3">, <#Hashie::Mash avg="7.19" country="Nir" events="53" name="Rory McIlroy" points="380.93" rank="4">, <#Hashie::Mash avg="6.50" country="USA" events="41" name="Steve Stricker" points="266.51" rank="5">, <#Hashie::Mash avg="6.01" country="USA" events="45" name="Phil Mickelson" points="270.50" rank="6">, <#Hashie::Mash avg="5.67" country="USA" events="52" name="Matt Kuchar" points="295.08" rank="7">, <#Hashie::Mash avg="5.53" country="Nir" events="55" name="Graeme McDowell" points="304.12" rank="8">, <#Hashie::Mash avg="5.47" country="Aus" events="44" name="Jason Day" points="240.69" rank="9">, <#Hashie::Mash avg="5.24" country="Zaf" events="56" name="Charl Schwartzel" points="293.59" rank="10">, <#Hashie::Mash avg="5.11" country="USA" events="49" name="Dustin Johnson" points="250.37" rank="11">, <#Hashie::Mash avg="4.99" country="Eng" events="44" name="Paul Casey" points="219.57" rank="12">, <#Hashie::Mash avg="4.87" country="USA" events="47" name="Bubba Watson" points="228.66" rank="13">, <#Hashie::Mash avg="4.72" country="Eng" events="52" name="Ian Poulter" points="245.49" rank="14">, <#Hashie::Mash avg="4.64" country="USA" events="51" name="Nick Watney" points="236.54" rank="15">, <#Hashie::Mash avg="4.39" country="Kor" events="53" name="K.J. Choi" points="232.59" rank="16">..]
    
#### Events
    >> @events = @client.events
    => [<#Hashie::Mash end_date=Sun Jul 03 00:00:00 -0500 2011 location="Aronimink Golf Club, Newtown Square, PA" name="AT&T National" start_date=Thu Jun 30 00:00:00 -0500 2011>, <#Hashie::Mash end_date=Sun Jul 10 00:00:00 -0500 2011 location="TPC Deere Run, Silvis, IL" name="John Deere Classic" start_date=Thu Jul 07 00:00:00 -0500 2011>, <#Hashie::Mash end_date=Sun Jul 17 00:00:00 -0500 2011 location="Annandale Golf Club, Madison, MS" name="Viking Classic" start_date=Thu Jul 14 00:00:00 -0500 2011>, <#Hashie::Mash end_date=Sun Jul 17 00:00:00 -0500 2011 location="Royal St. Georges Golf Club, Sandwich, England" name="British OpenRoyal St. Georges Golf Club, Sandwich, England" start_date=Thu Jul 14 00:00:00 -0500 2011>...]

## Copyright

Contact me if you have any suggestions and feel free to fork it!

Copyright (c) 2009 Johnny Khai Nguyen, released under the MIT license
