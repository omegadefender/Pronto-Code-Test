puts "This is a coding test for ProntoWoven"
puts "Input Robot Direction as a string/F = forward/B = Backwards/R = turn right 90 degrees/ L = turn left 90 degrees"
puts "Follow each character by a number of units eg. B2 means move back two units, R1 means turn right 90 degrees once"
puts "Seperate each instruction by a comma, eg `F1,R1,B2,L1,B3`"
puts "Enter your movement instructions and the program will tell you the shortest distance to get back home"

def prompt(*args)
    print(*args)
    gets
end

movement = prompt "Movement: "
print movement