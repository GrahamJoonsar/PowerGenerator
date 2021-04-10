program powerGenerator

implicit none

! Defines the vars neccesary
integer :: num

! Opens or creates the file
open(10, file = "PowersGenerated.txt")

! Header of the file
write(10,*) "        POW=1       POW=2       POW=3       POW=4       POW=5"

! Main loop
do num=2, 200 ! Numbers 2-200
    if (num <= 73) then ! Neccesary because numbers start getting inacurrate after this
        write(10,*) num, num ** 2, num ** 3, num ** 4, num ** 5
    else
        write(10,*) num, num ** 2, num ** 3, num ** 4, "    N/A" ! writing not available
    end if
end do

end program powerGenerator