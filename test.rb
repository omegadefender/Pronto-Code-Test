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
        if e[0] == "F" && facing == 'North'
            units = e[1].to_i
            locHash[:vert] = locHash[:vert] + units
        elsif e[0] == "F" && facing == 'East'
            units = e[1].to_i
            locHash[:hor] = locHash[:hor] + units
        elsif e[0] == "F" && facing == 'South'
            units = e[1].to_i
            locHash[:vert] = locHash[:vert] - units
        elsif e[0] == "F" && facing == 'West'
            units = e[1].to_i
            locHash[:hor] = locHash[:hor] - units
        elsif e[0] == "B" && facing == 'North'
            units = e[1].to_i
            locHash[:vert] = locHash[:vert] - units
        elsif e[0] == "B" && facing == 'East'
            units = e[1].to_i
            locHash[:hor] = locHash[:hor] - units
        elsif e[0] == "B" && facing == 'South'
            units = e[1].to_i
            locHash[:vert] = locHash[:vert] + units
        elsif e[0] == "B" && facing == 'West'
            units = e[1].to_i
            locHash[:hor] = locHash[:hor] + units
        elsif e[0] == "R"
            units = e[1].to_i
            indNum = facingHash[facing]
            indNum = indNum + units
            facing = facingArr[indNum]
            puts facing
        elsif e[0] == "L"
            units = e[1].to_i
            indNum = facingHash[facing]
            indNum = indNum - units
            facing = facingArr[indNum]
            puts facing
        end
    end
end

# Calculates the shortest distance for the robot to get back home
def distanceToStart
end

location()