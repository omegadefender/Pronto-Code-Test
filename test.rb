puts "Give commands to the ROBOT\nF = forward\nB = Backwards\nR = turn right 90 degrees\nL = turn left 90 degrees"
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
    facing = 'North'
    facingArr = ['North', 'East', 'South', 'West']
    facingHash = Hash[facingArr.map.with_index.to_a]
    locHash = { :vert => 0, :hor => 0 }

    moves.each do |e|
        units = e[1].to_i
        if e[0] == "F" && facing == 'North'
            locHash[:vert] = locHash[:vert] + units
        elsif e[0] == "F" && facing == 'East'
            locHash[:hor] = locHash[:hor] + units
        elsif e[0] == "F" && facing == 'South'
            locHash[:vert] = locHash[:vert] - units
        elsif e[0] == "F" && facing == 'West'
            locHash[:hor] = locHash[:hor] - units
        elsif e[0] == "B" && facing == 'North'
            locHash[:vert] = locHash[:vert] - units
        elsif e[0] == "B" && facing == 'East'
            locHash[:hor] = locHash[:hor] - units
        elsif e[0] == "B" && facing == 'South'
            locHash[:vert] = locHash[:vert] + units
        elsif e[0] == "B" && facing == 'West'
            locHash[:hor] = locHash[:hor] + units
# The direction elsifs need to be re-written to account for commands above 3 ie: R4 won't do anything as facing Arr only goes 3 indexes.
        elsif e[0] == "R"
            indNum = facingHash[facing] + units
            facing = facingArr[indNum]
        elsif e[0] == "L"
            indNum = facingHash[facing] - units
            facing = facingArr[indNum]
        end
    end
    locHash
end

# Calculates the shortest distance for the robot to get back home
def distanceToStart
    hash = location()
    distance = 0
    if hash[:vert] < 0
        hash[:vert] = hash[:vert] * -1
    end
    if hash[:hor] < 0
        hash[:hor] = hash[:hor] * -1
    end
    distance = hash[:vert] + hash[:hor]
end

puts distanceToStart()