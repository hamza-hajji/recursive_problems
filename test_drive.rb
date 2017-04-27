require "./fibs.rb"
require "./fibs_rec.rb"
require "./merge_sort.rb"

puts "fibs method"
p fibs 1
p fibs 2
p fibs 5
p fibs 10

puts "fibs_rec method"
puts fibs_rec 1
puts fibs_rec 2
puts fibs_rec 5
puts fibs_rec 10

puts "merge_sort method"
p [1, 4, 3, 2, 10, 5, 9, 20]
p merge_sort([1, 4, 3, 2, 10, 5, 9, 20])