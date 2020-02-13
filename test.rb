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

def location
    moves = movementArr()
    horArr = [0, 1, 2, 3]
    verArr = [0, 1, 2, 3]
    locHash = { vert: 0, hor: 0 }

    moves.each do |e|
        if e[0] == "F"
            puts e[0]
        elsif e[0] == "B"
            puts e[0]
        elsif e[0] == "R"
            puts e[0]
        elsif e[0] == "L"
            puts e[0]
        end
    end
end

location()