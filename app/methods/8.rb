##################################################################
# Methods in Ruby
# 1. Introduction to methods in Ruby
# 2. What Ruby methods return
# 3. Difference Between Puts and Returning Values
# 4. Difference between class and instance methods in Ruby
# 5. Procs and Lambdas
# 6. Difference between Procs and Lambdas
# 7. Closures
# 8. Method Arguments, Splat and Keyword Splat Arguments
##################################################################

require_relative '../util/title_printer'

TitlePrinter.print_chapter_content(TitlePrinter::METHODS)

##################################################################
# - Method Arguments, Splat and Keyword Splat Arguments
TitlePrinter.print_title(TitlePrinter::METHODS, 8)

def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end

what_up("What up", "Justin", "Ben", "Kevin Sorbo")

