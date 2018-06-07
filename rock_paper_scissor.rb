def welcome_msg
  puts "Welcome to Rock, Paper, Scissors"
  puts "Select 'r' for Rock, 'p' for Paper, 's' for Scissors"
end

def return_name(letter)
  case letter
  when 'r' then return 'rock'
  when 'p' then return 'paper'
  when 's' then return 'scissor'
  else 'wrong input'
  end
end

def evaluate(u, o)
  case [u, o]
  when ['p','s'],['s','p'],['r','s']
    puts 'You win!'
  when ['s','s'],['p','p'],['r','r']
    puts 'You tied!'
  when ['p','s'],['s','p'],['r','s']
  else
    puts 'You Loose!'
  end
end

ask_again = true

while ask_again == true do
  welcome_msg
  user = gets.chomp.downcase
  os = [:r, :p, :s].sample.to_s # generates a random letter (r, p or s)

  puts "os generated #{return_name(os)}"
  puts "user chose #{return_name(user)}"

  evaluate(user, os)

  puts "What do you want to do now?\nSelect 'c' for Continue, 'q' to Quit"
  choice = gets.chomp
  case choice
    when "c"
      ask_again = true
    when "q"
      puts "Ended program"
      ask_again = false
    else
    	puts "Error!"
  end
end
