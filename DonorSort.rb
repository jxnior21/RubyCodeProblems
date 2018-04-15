=begin
A local charity has hired you to help organize their lists of donors.
The organization has a list of people who donated to the organization last year,
and another list of this year’s donors.  The group wants to send emails to three
groups of people:

*People who donated last year but didn’t this year
*People who donated both years
*People who donated this year but didn’t last year

Each group will receive a different email, so they need to know which donors
belong to each group.

The first line of each test case will contain a comma separated list of the
names of last year’s donors.

The second line of each test case will contain a comma separated list of the
names of this year’s donors.

Example Input:

Bob,Joe,Steve,Mary,Ann
Bob,Steve,Ann,Paula,Chris

Bill,Ted,Liz,Quinn
Quinn,Liz,Ken,Bill

Example Output:

Joe,Mary
Ann,Bob,Steve
Chris,Paula

Ted
Bill,Liz,Quinn
Ken
=end

lastyear = gets.chomp
thisyear = gets.chomp
lastyearlist = lastyear.split(",")
thisyearlist = thisyear.split(",")
bothyearlist = []
thisyearsorted = []
lastyearsorted = []

for name in lastyearlist
  if thisyearlist.include?(name)
    bothyearlist.push(name)
  elsif !thisyearlist.include?(name)
    lastyearsorted.push(name)
  end
end

for name in thisyearlist
  if !lastyearlist.include?(name)
    thisyearsorted.push(name)
  end
end

puts ""

lastyearsorted.sort!
thisyearsorted.sort!
bothyearlist.sort!

for name in lastyearsorted
  if name == lastyearsorted[lastyearsorted.length - 1]
    print "#{name}\n"
  else
    print "#{name},"
  end
end

for name in bothyearlist
  if name == bothyearlist[bothyearlist.length - 1]
    print "#{name}\n"
  else
    print "#{name},"
  end
end

for name in thisyearsorted
  if name == thisyearsorted[thisyearsorted.length - 1]
    print "#{name}\n"
  else
    print "#{name},"
  end
end
