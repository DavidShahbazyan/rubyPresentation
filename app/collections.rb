##################################################################
# Ruby Collections (Arrays and Hashes)
# 1. Introduction to Ruby arrays
# 2. Deleting items from arrays
# 3. Using the Ruby join method on arrays
# 4. Using push and pop methods on Ruby arrays
# 5. Introduction to hashes in Ruby
# 6. How to delete from a Ruby hash
# 7. How to iterate over a hash in Ruby
# 8. Helpful hash methods in Ruby
##################################################################

require_relative 'util/title_printer'

def puts_array(array)
  puts '[' + array.join(', ') + ']'
end

TitlePrinter.print_chapter_content(TitlePrinter::COLLECTIONS)

TitlePrinter.print_title(TitlePrinter::COLLECTIONS, 1)

[1, 2, 3, 4, 5]     # => array[1, 2, 3, 4, 5]
a = [1, 2, 3, 4, 5] # => array[1, 2, 3, 4, 5]
b = Array.new       # => array[]
b[0] = 1            # => array[1]
b[2] = 2            # => array[1, 2]

TitlePrinter.print_title(TitlePrinter::COLLECTIONS, 2)

a.delete_at(2) # => array[1, 2, 4, 5]
# array.insert({index}, *{item})
a.insert(3, 77, 88) # => array[1, 2, 4, 77, 88, 5]

TitlePrinter.print_title(TitlePrinter::COLLECTIONS, 3)
mac_parts = ['00','11','2F','6E','91','65']
puts mac_parts.join
mac = mac_parts.join(':')
puts mac
puts_array mac.split(':')

TitlePrinter.print_title(TitlePrinter::COLLECTIONS, 4)
# The array.push() method adds the given items to the end of the array.
# It also returns the resulting array, so this gives us an opportunity to append multiple push calls.
# This may be useful in code formatting for example.
a.push(9, 99).push(999, 9999) # => array[1, 2, 4, 77, 88, 5, 9, 99, 999, 9999]

tmp = a.pop     # => returns and removes the last element of the array if exists on nil otherwise
puts tmp
tmp = a.pop(3)  # => returns an array of self last {n} (or less) elements like array.slice!() or (List.subList() in java).
puts_array tmp
puts_array a


TitlePrinter.print_title(TitlePrinter::COLLECTIONS, 5)
# Hashes are like arrays with objects instead of indexes.
# The java equivalent for Hashes is Map<Object, Object>.
my_hash_1 = {
    "key_1" => "value_1",
    "key_2" => "value_2",
    "key_3" => "value_3"
}

my_hash_2 = Hash.new
my_hash_2['foo'] = 'bar'
my_hash_2["num"] = 10
my_hash_2[432] = 10.08
my_hash_2['array'] = [1, 2, 3, 4, 5]
my_hash_2['array_array'] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

my_hash_2["foo"]
my_hash_2.dig("foo")

my_hash_2['array'][3]
my_hash_2.dig('array', 3)

my_hash_2['array_array'][1][1]
my_hash_2.dig('array_array', 1, 1)

puts my_hash_1.inspect
puts my_hash_2.inspect

my_hash_3 = {
    "string_key_1" => {
        name: 'Administrator',
        login: 'admin',
        pass: 'admin123!'
    },
    :string_key_2 => {
        :name => 'User',
        :login => 'user123',
        :pass => 'mysecurepassword'
    },
    :_2 => {
        :name => 'User',
        :login => 'user123',
        :pass => 'mysecurepassword'
    }
}

my_hash_3.each { |key, val| puts "User:\t#{val[:name]}\nLogin:\t#{val[:login]}\nPass:\t#{val[:pass]}\n\n" }
puts my_hash_3["string_key_1"][:name]
puts my_hash_3[:string_key_2][:name]

TitlePrinter.print_title(TitlePrinter::COLLECTIONS, 6)
puts my_hash_2.inspect
my_hash_2.delete("num")
puts my_hash_2.inspect

TitlePrinter.print_title(TitlePrinter::COLLECTIONS, 7)
my_hash_2.each { |item| print item, ' ' }      # => [{key}, {value}], [{key}, {value}], [{key}, {value}]
puts
my_hash_2.each_key { |key| print key, ' ' }    # => {key}, {key}, {key}
puts
my_hash_2.each_value { |val| print val, ' ' }  # => {value}, {value}, {value}
puts
my_hash_2.each_pair { |pair| print pair, ' ' } # => The same as the Hash.each() does.
puts
my_hash_2.each { |key, val| puts "KEY => #{key}, VAL => #{val}" }


TitlePrinter.print_title(TitlePrinter::COLLECTIONS, 8)
puts my_hash_2.to_s # Returns a string according to pattern: {{key}=>{value}, {key}=>{value}}
puts my_hash_2.inspect # The same as Hash.to_s() does
puts my_hash_2.to_a # Puts everything, keys and values into one big array and returns that array back

TitlePrinter.print_chapter_end_mark(TitlePrinter::COLLECTIONS)

