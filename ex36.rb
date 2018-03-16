require "./swimming.rb"
require "./shells.rb"
require "./sun.rb"

def start
  puts "You are spending the weekend at a beach house with your friends."
  puts "The weather is perfect. There are a few clouds, but the sun is in the sky."
  puts "You get there right after lunchtime. What would you like to do?"
  puts "You can go swimming, look for shells, or get some sun."
print "> "
  choice = $stdin.gets.chomp.downcase


  if choice.include? "swimming"
    Swimming.start()
  elsif choice.include? "shells"
    Shells.start()
  elsif choice.include? "sun"
    Sun.start()
  else
    puts "Your friends roll their eyes. 'You're always wanting to do your own thing.'"
    puts "You have to make one of the three choices."
    start
  end
end

def win()
  puts "You can't believe how much fun you're having. It's the best weekend ever!"
  exit(0)
end

def lose()
  puts "You can't believe your rotten luck. This is the worst weekend of your life."
  exit(0)
end

start
