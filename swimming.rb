module Swimming

  def Swimming.start()
    puts ""
    puts "'Good choice!' your friend Sally says. You walk down to the beach."
    puts "'Did you bring any sunscreen?', Sally asks, looking up at the sun."
    puts "'I don't want to get burnt'."
    puts ""
    puts "Did you remember the sunscreen? Yes or No"
    print "> "

    sunscreen = $stdin.gets.chomp.downcase

    if sunscreen == "yes" || sunscreen == "y"
       Swimming.water()
    elsif sunscreen == "no" || sunscreen == "n"
      puts ""
      puts "You enjoy yourself in the waves."
      puts "When you return to the house later, you start to feel itchy."
      puts "Before too long, your skin is stinging."
      puts "You look in the mirror. You're as red as a lobster!"
      puts "Should have remembered the sunscreen."
      lose()
    else
      puts ""
      puts "Just answer the question!"
      Swimming.start()
    end
  end

    def Swimming.water()
      puts ""
      puts "Good job remembering the sunscreen! It's important to keep your skin safe."
      puts "You and Sally put on sunscreen and lay out your towels while it soaks in."
      puts "'Come on! Let's get in the water!' Sally says."
      puts "The water is clear and cool, with just a few waves."
      puts "You and Sally swim for a while, but it looks even better further out."
      puts ""
      puts "Should you swim out a little further, where it's deeper? Yes or No"
      print "> "

      further = $stdin.gets.chomp.downcase

      if further == "yes" || further == "y"
        Swimming.shark()
      elsif further == "no" || further == "n"
        puts ""
        puts "'Come on! Let's go out farther' Sally begs. 'No,' you say, 'I'll stay here where it's safe.'"
        puts "Sally rolls her eyes. 'You're so boring. I don't know why we even invited you.'"
        puts "Sally swims out into deeper water. All of a sudden, a shark appears."
        puts "Before you can even shout a warning, Sally is gone. The shark has eaten her."
        puts "You shrug and go back to the beach. Sally was annoying you anyway."
        win()
      end
    end

    def Swimming.shark()
      puts ""
      puts "You swim out into deeper water. This is so refreshing!"
      puts "As you're enjoying yourself, you spot a dark shadow a few yards away."
      puts "You immediately feel a sense of forboding, but try and brush it off."
      puts "All of a sudden, something grabs your leg!"
      puts "It's a shark! And OUCH! It bites your leg off."
      puts "You struggle back to the beach, bleeding heavily."
      lose()
    end

  end
