puts "Input Robot Direction as a string\nF = forward\nB = Backwards\nR = turn right 90 degrees\nL = turn left 90 degrees"
puts "Follow each character by a number of units eg. B1 means move back one unit, R2 means turn right 90 degrees twice"
puts "Seperate each instruction by a comma, eg. `F1,R1,B2,L1,B3`"
puts "Enter your movement instructions and the program will tell you the shortest distance to get back home"

# User Input Function 
def prompt(*args)
    print(*args)
    gets
end

# Splits User Commands into Array
def movementArr
    movement = prompt "Movement: "
    movement = movement.split(",")
    movement[-1].delete!("\n")
    movement
end

# Sets the final location of Robot, after Commands have been processed
def location
    moves = movementArr()
    horArr = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
    verArr = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5]
    facing = 'North'
    facingArr = ['North', 'East', 'South', 'West']
    locHash = { :vert => 0, :hor => 0 }

    moves.each do |e|
        if e[0] == "F"
            units = e[1].to_i
            locHash[:vert] = locHash[:vert] + units
            puts locHash            
        elsif e[0] == "B"
            units = e[1].to_i
            locHash[:vert] = locHash[:vert] - units
            puts locHash
        elsif e[0] == "R"
            units = e[1].to_i
            locHash[:hor] = locHash[:hor] + units
            puts locHash
        elsif e[0] == "L"
            units = e[1].to_i
            locHash[:hor] = locHash[:hor] - units
            puts locHash
        end
    end
end

# Calculates the shortest distance for the robot to get back home
def distanceToStart
end

location()