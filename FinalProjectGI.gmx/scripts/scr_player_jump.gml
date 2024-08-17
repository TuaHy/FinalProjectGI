scr_input()

if (place_meeting(x, y +moveY, obj_obstacle_land)) {
    repeat(abs(moveY)) {
        if (not place_meeting(x, y + sign(moveY), obj_obstacle_land)) {
            y += sign(moveY);
        }
        break
    }
    
    state = player_states.idle;
    moveX = 0
}

if (input_right) {
    moveX = nor_spd - 1
}

if (input_left) {
    moveX = - (nor_spd - 1)
}

if (input_jump) {
    if jump_counter < 2 {
        moveY += -12
        jump_counter += 1
    }
}

if input_fly and can_fly {
    state = player_states.fly
    alarm[0] = 30
}
