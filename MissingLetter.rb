=begin
Sometimes when we type we just miss letters.  Other times we go to a programming
competition and we’re asked to remove letters from perfectly good words.

Your task is to write a program which given a String and an integer will print a
new String missing the character at the given place.

A single line containing a word, then a space, then a positive integer.
The integer tells us which character to remove from the string, and is 0-based
(meaning that a 0 means take away the first letter).  The index given will
always be valid – no tricks here!

Example Input:

puppy 0
kitten 4
fish 1
dog 2

Example Output:
uppy
kittn
fsh
do
=end
input = gets.chomp
inputs = input.split(" ")
word = inputs[0]
word[inputs[1].to_i] = ""
puts inputs[0]
