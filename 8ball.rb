require "colorize"
require "pry"

class Game 
  def initialize 
    @answers = ["Shoot! You Trippin!".yellow, "Hell No!".red, "Yeah".green, "Well I Guess!", "Uh... Maybe...".cyan]
    @new_answers = @answers.clone
    menu
  end

  def add_answers
    puts "What answer should we add? ".red
    puts ""
    var1 = gets.strip
    @new_answers << var1 
    @new_answers.uniq!
    menu
    # if @new_answers.slice = true
    #   puts "Sorry, it's already in the list.".red
    #   puts "Try Again".red
    #   menu
    # else
    #   menu
    # end
  end
  
  def clear
    @new_answers = @answers.clone
    menu
  end

  def menu
    puts ""
    puts "What's your question?:".red
    puts "Q to quit".white
    puts "L for list of answers".cyan
    puts "C for clear".yellow
    puts "A to add your own answers".green
    puts ""
    @choice = gets.strip.downcase
    puts ""
    
    case @choice
    when "q"
      exit
      when "l"
       # binding.pry
       @answers
      when "c"
        clear
      when "a"
        add_answers
      else
        # binding.pry
        puts "-------------------"
        puts @new_answers
        puts "-------------------"
        menu   
    end
end
end
  
game = Game.new
game 


# User inputs question
# Computer outputs random answer
# Do not let them add the same answer if the eight ball already has that answer

# User inputs "QUIT"
# Computer outputs a goodbye message and exits
# Ability to have eight ball print all answers
# names.each_with_index do |name, index|
#   puts "#{index + 1} #{name}"
# Ability to add more answers:
# Ability to reset answers back to the original bank (hint: think arr.clone)

# Via easter egg question ("add_answers")
# Via easter egg question ("reset_answers")
# Via easter egg question ("print_answers")
 


# Bonus Objectives:
# Create a menu to handle all the functionality.
# Use classes to handle the Eight Ball Program and Answers.
# Use the colorize gem (from lecture) to add some color to your application.

