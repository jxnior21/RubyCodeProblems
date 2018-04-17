=begin
The International Civil Aviation Organization (ICAO) developed a system in the
1950s so that critical combinations of letters and numbers can be pronounced and
understood by those exchanging voice messages by radio or telephone regardless
of language or quality of the communication channel.  Today it is widely used
and known as the phonetic alphabet, the US Army alphabet, ICAO alphabet, NATO
alphabet, or spelling alphabet.  We probably hear it most in military
applications or in movies.  It is made up of 26 words that are assigned to the
26 letters of the English alphabet as follows:

Letter
Code Word
A
Alpha
N
November
B
Bravo
O
Oscar
C
Charlie
P
Papa
D
Delta
Q
Quebec
E
Echo
R
Romeo
F
Foxtrot
S
Sierra
G
Golf
T
Tango
H
Hotel
U
Uniform
I
India
V
Victor
J
Juliet
W
Whiskey
K
Kilo
X
Xray
L
Lima
Y
Yankee
M
Mike
Z
Zulu

Your application should convert a string of text into its phonetic alphabet code.

The first line of each test case will be a positive integer N denoting how many
lines of text the message contains.

The next N lines will contain a string of text to be converted.
Example Input:

2
Code Quest
Rocks

1
Lockheed
Example Output:
Charlie-Oscar-Delta-Echo Quebec-Uniform-Echo-Sierra-Tango
Romeo-Oscar-Charlie-Kilo-Sierra

Lima-Oscar-Charlie-Kilo-Hotel-Echo-Echo-Delta
=end

alph = ["Alpha","Bravo","Charlie","Delta","Echo","Foxtrot","Golf","Hotel",
  "India","Juliet","Kilo","Lima","Mike","November","Oscar","Papa","Quebec",
  "Romeo","Sierra","Tango","Uniform","Victor","Whiskey","Xray","Yankee","Zulu"]
words = []
numLines = gets.chomp
numLines = numLines.to_i
for i in 1..numLines
  word = gets.chomp
  word.upcase!
  concat = ""
  for i in 0..word.length
    alph.each do |alph|
      if alph[0] == word[i] && word[i] == word[word.length - 1]
        concat += "#{alph}"
      elsif alph[0] == word[i] && word[i + 1] == " "
        concat += "#{alph} "
      elsif alph[0] == word[i]
        concat += "#{alph}-"
      end
    end
  end
  words << concat
end
puts
for word in words
  puts word
end
