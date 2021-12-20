program make_vegetable_driver
    use make_driver_m, only: get_command_line, make_driver

    implicit none

    call make_driver(get_command_line())
end program
