#exempt = ["a", "an", "and", "as", "at", "but", "in", "nor", "of", "on", "or", "so", "the", "yet"]
#
#class Book
#	def title=(title)
#		title_words = title.split(" ")
#		title_words.map do |word, index|
#			unless exempt.include?(word)
#				word.capitalize!
#			end
#		end
#		
#		title_words[0].capitalize!
#		title_words[-1].capitalize!
#		
#		@title = title_words.join(" ")
#		
#		#return title_words.join(" ")
#	end
#	
#	def title
#		@title
#	end
#end

#I did what I could on my own, but it did not function.  I used pieces from other submissions to make sure it worked.

#OFFICIAL ANSWER

class Book
  attr_reader :title

  def title=(new_title)
    words = new_title.split(" ")
    words = [words[0].capitalize] +
      words[1..-1].map do |word|
        little_words = %w{a an and the in of}
        if little_words.include? word
          word
        else
          word.capitalize
        end
      end
    @title = words.join(" ")
  end

end