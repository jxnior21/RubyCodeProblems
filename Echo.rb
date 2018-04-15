=begin
An echo is when sound waves bounce off something and come back to you, so you
hear yourself saying what you just said.  An echo is when sound waves bounce off
something and come back to you, so you hear yourself saying what you just said.
Wait, did you hear that?

You have been tasked to create an echo program.

A single line of text that should be echoed

Example Input:

Code Quest rules!

I’m definitely coming back next year.

Example Output:

Code Quest rules!
Code Quest rules!

I’m definitely coming back next year.
I’m definitely coming back next year.
=end
print ">> "
word = gets.chomp
2.times do
  puts word
end
