module your_module
    implicit none
    integer :: n = 2
end module

program main
    implicit none
    real :: x 

    block
        use your_module, only: n ! you can import modules within blocks
        real :: y ! local scope variable
        print *, 'enter the value of y'
	read (*,*) y
        x = y ** n
        print *, y
    end block
    
	! y only exists during the block's scope
    print *, x  ! prints 4.0000000
end program
