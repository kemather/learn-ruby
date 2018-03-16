module Shells

  def Shells.start()
    puts ""
    puts "'Good choice!' your friend Jim says. You walk down to the beach."
    puts "The tide has just gone out, and the beach is littered with shells."
    puts "'Wow! Jim says, pulling out his shell bag. 'This will be great!'"
    puts "Jim's kind of a nerd about shells. But you do see some good looking ones."
    puts "You'd never admit it, but you have a small shell collection at home."
    puts "Down by the water, you see a particularly large and beautiful shell."
    puts ""
    puts "You've never seen anything like it before. Do you pick it up? Yes or No"
    print "> "

    pickup = $stdin.gets.chomp.downcase

    if pickup == "yes" || pickup == "y"
      Shells.grab()
    elsif pickup == "no" || pickup == "n"
      puts ""
      puts "'What are you waiting for?' Jim shouts, watching you. 'Just pick it up!'"
      Shells.start()
    else
      puts ""
      puts "Why can't you just answer questions!"
      Shells.start()
    end
  end

  def Shells.grab()
    puts ""
    puts "You pick up the big shell. It's really amazing, with bright colors."
    puts "You're holding it up to your ear and you hear a noise coming from inside."
    puts "Is something in there? You have to find out."
    puts ""
    puts "Should you give it a good shake? Yes or No"
    print "> "

    shake = $stdin.gets.chomp.downcase

    if shake == "yes" || shake == "y"
      Shells.shake()
    elsif shake == "no" || shake == "n"
      puts ""
      puts "Could be something living in there. You won't disturb it."
      puts "You put the shell back down close to the water."
      puts "You continue along down the beach and find a variety of beautiful shells."
      win()
    else
      puts ""
      puts "This really isn't a hard game. Can't you just play along?"
      shells.grab()
    end
  end

  def Shells.shake()
    puts ""
    puts "You give the shell a hard shake. A little crab comes out!"
    puts "'Hey, little guy!' you say, smiling. How cool!"
    puts "It's not cool. The small-looking crab whips out a large pincer and snaps your finger!"
    puts "It starts bleeding immediately and you swear and drop the shell."
    lose()
  end
end
