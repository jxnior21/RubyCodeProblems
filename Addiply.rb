=begin
Nowadays if you put two things together you need to come up with a cool name to
describe the two things together, like Bennifer or Brangelina. In this problem,
you will deal with the concepts of addition and multiplication. You will
Addiply! Your task is to write a program which does simple addition and
multiplication based on 2 input numbers.

A single line containing two positive integers separated by a space.

The numbers will be small enough that they will not be bigger than
Integer.MAX_VALUE when multiplied together.

Example Input:

2 2
5 4
3 8
Example Output:

4 4
9 20
11 24
=end

input = gets.chomp
inputs = input.split(" ")
num1 = inputs[0].to_i
num2 = inputs[1].to_i
print "#{num1 + num2} #{num1 * num2}"
