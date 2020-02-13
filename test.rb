puts "Input Robot Direction as a string\nF = forward\nB = Backwards\nR = turn right 90 degrees\nL = turn left 90 degrees"
puts "Follow each character by a number of units eg. B2 means move back two units, R1 means turn right 90 degrees once"
puts "Seperate each instruction by a comma, eg. `F1,R1,B2,L1,B3`"
puts "Enter your movement instructions and the program will tell you the shortest distance to get back home"

def prompt(*args)
    print(*args)
    gets
end

def movementArr
    movement = prompt "Movement: "
    movement = movement.split(",")
    movement[-1].delete!("\n")
    movement
end

print movementArr()