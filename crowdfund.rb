require_relative 'project'
require_relative 'fundraise'

fund1 = Project.new("Hayden", 500, 3000) 
fund2 = Project.new("Michelle", 0, 50_000)
fund3 = Project.new("Beth", 1000)
fund4 = Project.new("Grumpy", 50, 100)

startups = Fundraise.new("StartUps")
startups.add_fund(fund4)

startups.fund
