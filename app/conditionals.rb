##################################################################
# Ruby Conditionals
# 1. Introduction to Ruby conditionals
# 2. Using the Unless conditional in Ruby
# 3. Using multiple if/else statements in Ruby
# 4. Using compound conditionals in Ruby
##################################################################

require_relative 'util/title_printer'

TitlePrinter.print_chapter_content(TitlePrinter::CONDITIONALS)

TitlePrinter.print_title(TitlePrinter::CONDITIONALS, 1)
TitlePrinter.print_title(TitlePrinter::CONDITIONALS, 2)
TitlePrinter.print_title(TitlePrinter::CONDITIONALS, 3)
TitlePrinter.print_title(TitlePrinter::CONDITIONALS, 4)

if true
  puts "aaa"
end

puts "aaaa" if true


TitlePrinter.print_chapter_end_mark(TitlePrinter::CONDITIONALS)
