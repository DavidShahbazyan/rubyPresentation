##################################################################
# Ruby Iterators and Loops
# 1. While loops in Ruby
# 2. Using the Ruby each iterator
# 3. Using the 'for in' loop in Ruby
# 4. Nested iterators in Ruby
# 5. Using the select method in Ruby
# 6. How to use the map method on Ruby collections
# 7. Using the inject method in Ruby
##################################################################

require_relative 'util/title_printer'

TitlePrinter.print_chapter_content(TitlePrinter::ITERATORS_AND_LOOPS)

TitlePrinter.print_title(TitlePrinter::ITERATORS_AND_LOOPS, 1)
counter = 0
while true do
  print counter += 1, ' '
  if counter == 10
    break
  end
end
puts

counter = 0
while counter < 10 do
  print counter += 1, ' '
end
puts

counter = 0
until counter == 10 do
  print counter += 1, ' '
end
puts

counter = 0
print counter += 1, ' ' while counter < 10
puts

counter = 0
print counter += 1, ' ' until counter == 10
puts

TitlePrinter.print_title(TitlePrinter::ITERATORS_AND_LOOPS, 2)
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |n| print n, ' ' }
puts

TitlePrinter.print_title(TitlePrinter::ITERATORS_AND_LOOPS, 3)
for n in 1..10
  print n, ' '
end
puts

TitlePrinter.print_title(TitlePrinter::ITERATORS_AND_LOOPS, 4)


TitlePrinter.print_title(TitlePrinter::ITERATORS_AND_LOOPS, 5)
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_new_array = my_array.select { |item| item % 2 == 0 }
puts my_new_array.inspect

my_string_array = my_array.collect { |n| "A#{n}" }
puts my_string_array.inspect

TitlePrinter.print_title(TitlePrinter::ITERATORS_AND_LOOPS, 6)
class Person
  attr_accessor :name, :gender
  def initialize(new_name, new_gender)
    @name = new_name
    @gender = new_gender
  end
end

person_array = [Person.new('John', 'male'), Person.new('Jane', 'female'), Person.new('Annie', 'female'), Person.new('Alex', 'male')]
puts person_array.select { |person| person.gender == 'male' }.map { |person| person.name }.inspect

TitlePrinter.print_title(TitlePrinter::ITERATORS_AND_LOOPS, 7)


TitlePrinter.print_chapter_end_mark(TitlePrinter::ITERATORS_AND_LOOPS)


# DETAILS: http://www.eriktrautman.com/posts/ruby-explained-map-select-and-other-enumerable-methods