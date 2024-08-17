scr_input()

sprite_index = spr_main_walk;

if (input_left + input_right == 0) {
    state = player_states.idle
}
else if (input_jump) {
    moveY = -12
    state = player_states.jump
    jump_counter += 1    
}

moveX = (input_right - input_left)*nor_spd
image_speed = 24/room_speed

if input_fly and can_fly {
    state = player_states.fly
    alarm[0] = 30
}
