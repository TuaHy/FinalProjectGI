scr_input()

// set sprite
sprite_index = spr_main_idle
image_speed = 4 / room_speed

if (input_left or input_right) {
    state = player_states.walk
} else if(input_jump){
    moveY = -12
    state = player_states.jump
    jump_counter += 1
}

if input_fly and can_fly {
    state = player_states.fly
    alarm[0] = 30
}

moveX = 0
