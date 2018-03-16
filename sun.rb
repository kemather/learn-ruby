module Sun

  def Sun.start()
    puts ""
    puts "'Good choice!' your friend Leslie says. 'We can go work on our tans!'"
    puts "You walk down to the beach. It's really a beautiful day."
    puts "You kick off your shoes and decide to sit down."
    puts ""
    puts "Did you remember to bring your towel to sit on? Yes or No"
    print "> "

    towel = $stdin.gets.chomp.downcase

    if towel == "yes" || towel == "y"
      Sun.glasses()
    elsif towel == "no" || towel == "n"
      puts "You better go back to the house and get it!"
      Sun.start()
    else
      puts "Please just play along!"
      Sun.start()
    end
  end

  def Sun.glasses ()
    puts ""
    puts "You lay your towel down and take a seat. The sun is warm on your skin."
    puts "You shade your eyes with your hand as you look around. It's really very bright."
    puts ""
    puts "Did you remember your sunglasses? Yes or No"
    print "> "

    sunglasses = $stdin.gets.chomp.downcase

    if sunglasses == "yes" || sunglasses == "y"
      Sun.block()
    elsif sunglasses == "no" || sunglasses == "n"
      puts "Yikes. You'll need those. Better go all the way back to the house and get them."
      Sun.start()
    else
      puts "You had two choices. Yes or no?"
      Sun.start()
    end
  end

  def Sun.block()
    puts "You grab the glasses out of your pocket. That's much better."
    puts "You look around at all the other people on the beach. There's a mother putting sunblock on her son."
    puts ""
    puts "Oh, shoot. Did you remember the sunblock? Yes or No"
    print "> "

    sunblock = $stdin.gets.chomp.downcase

    if sunblock == "yes" || sunblock == "y"
      puts "You put on the sunblock and lay back, relaxed by the sounds of the ocean."
      puts "This is wonderful."
      win()
    elsif sunblock == "no" || sunblock == "n"
      puts "I think you know what you need to do. Head on back to the house and get it!"
      Sun.start()
    end
  end
end
