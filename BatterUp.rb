=begin
In baseball statistics, the slugging percentage (SLG) is a popular measure of
the power of a hitter.  You will be given a list of players and their at-bats
for a single game.  You will need to compute each player’s slugging percentage.
For this exercise, no player will be hit by a pitch.

The slugging percentage is found by counting all the singles, doubles, triples,
and home runs in a given game and applying a set weight to each achievement
(home runs are worth more than singles), then dividing that number by the total
number of at-bats in that game as shown here:

A single line of input per player consisting of the batter’s name, a colon, and
some number of at-bats separated by commas.

A player’s at bats can be any of the following

BB means the player was walked by the pitcher and does NOT count as an at-bat.
K is an at-bat where the player struck out and did not reach a base.
1B is an at-bat where the player hit a single.
2B is an at-bat where the player hit a double.
3B is an at-bat where the player hit a triple.
HR is an at-bat where the player hit a home run.

Please note that not every player in the game has the same number of at bats.
If a player has no at-bats, then their slugging percentage should be 0.

Example Input:

Moreland:K,2B,1B,HR
Andrus:BB,BB,2B,K
Chirinos:1B,1B,3B
Odor:1B,K,3B

Example Output:

Moreland=1.750
Andrus=1.000
Chirinos=1.667
Odor=1.333
=end
input = gets.chomp
inputs = input.split(":")
player = inputs[0]
bases = inputs[1].split(",")
totalBases = 0.0
abts = bases.length
abts.to_f
for base in bases
  case base
  when "BB"
    abts -= 1
  when "1B"
    totalBases += 1
  when "2B"
    totalBases += 2
  when "3B"
    totalBases += 3
  when "HR"
    totalBases += 4
  end
end
perc = totalBases / abts
puts "%s=%.3f" % [player, perc]
