class TitlePrinter
  METHODS = 'Methods in Ruby'
  COLLECTIONS = 'Ruby Collections (Arrays and Hashes)'
  CONDITIONALS = 'Ruby Conditionals'
  ITERATORS_AND_LOOPS = 'Ruby Iterators and Loops'

  @@titles_hash = {
      METHODS => [
          'Introduction to methods in Ruby',
          'What Ruby methods return',
          'Difference Between Puts and Returning Values',
          'Difference between class and instance methods in Ruby',
          'Procs and Lambdas',
          'Difference between Procs and Lambdas',
          'Closures',
          'Method Arguments, Splat and Keyword Splat Arguments'
      ],
      COLLECTIONS => [
          'Introduction to Ruby arrays',
          'Deleting items from arrays',
          'Using the Ruby join method on arrays',
          'Using push and pop methods on Ruby arrays',
          'Introduction to hashes in Ruby',
          'How to delete from a Ruby hash',
          'How to iterate over a hash in Ruby',
          'Helpful hash methods in Ruby'
      ],
      CONDITIONALS => [
          'Introduction to Ruby conditionals',
          'Using the Unless conditional in Ruby',
          'Using multiple if/else statements in Ruby',
          'Using compound conditionals in Ruby'
      ],
      ITERATORS_AND_LOOPS => [
          'While loops in Ruby',
          'Using the Ruby each iterator',
          'Using the \'for in\' loop in Ruby',
          'Nested iterators in Ruby',
          'Using the select method in Ruby',
          'How to use the map method on Ruby collections',
          'Using the inject method in Ruby'
      ]
  }

  def self.print_chapter_content(chapter)
    puts "\n"
    puts '##################################################################'
    puts "# #{chapter}"
    @@titles_hash[chapter].each_with_index { |sub_title, index| puts "# #{index + 1}. #{sub_title}"}
    puts '##################################################################'
  end

  def self.print_title(chapter, *nums)
    puts "\n"
    puts '##################################################################'
    nums.each { |num| puts "# #{num}. #{@@titles_hash.dig(chapter, num - 1)}" }
    puts '##################################################################'
  end

  def self.print_chapter_end_mark(chapter)
    puts "\n"
    puts '##################################################################'
    puts "### End of \"#{chapter}\" chapter"
    puts '##################################################################'
  end

end