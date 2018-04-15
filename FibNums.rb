=begin
The Fibonacci sequence is attributed to Italian mathematician Leonardo of Pisa.
It is represented as a sequence of integers, starting with 0, 1 where every
number after the first 2 is the sum of the two preceding numbers.  The beginning
of the Fibonacci sequence looks like...

0, 1, 1, 2, 3, 5, 8, 13, 21, 34 ...

Your task is to write a program which renders the nth number of the Fibonacci
sequence.  For example if given an n value of 9, you are to return the 9th
number of the sequence, which would be the number 21.

A single positive integer which represents the position in the sequence for
which you are to determine the value.  The number will be less than or equal to
90.

Example Input:
1
5
8
11
13
21
40
Example Output:
1 = 0
5 = 3
8 = 13
11 = 55
13 = 144
21 = 6765
40 = 63245986
=end

arr = []
a = 0
b = 1
c = 1
x = 1
while x <= 90
  c = a + b
  arr[x] = a
  a = b
  b = c
  x += 1
end
num1 = gets.chomp
num1 = num1.to_i
puts "#{num1} = #{arr[num1]}"
