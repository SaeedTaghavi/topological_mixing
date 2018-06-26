program TopologicalMixing
        implicit none
        real :: x,y,phi,r,x_new,y_new,next_x,next_y
        integer :: j,i
        character (len=10) :: filename
        integer , parameter::num_points = 10000, num_iteration=5
        real , parameter :: r0 = 0.10, x0=0.75 , y0=0.75,pi=4.0*atan(1.0)
!!!        (x0,y0) is the center of the circle at the first iteration and r0 is its radius
!        do i=1,num_points
!          call random_number(phi)
!          phi = 2.0*pi*phi
!          call random_number(r)
!          r = r0*r
!          x=x0+ r*cos(phi)
!          y=y0+ r*sin(phi)
!          write(1,*) x,y
!        end do
!!! now we have a set of random numbers uniformly distrubuted in a circle

call system('rm -rf data/ && mkdir data')


        do i=1,num_points
          call random_number(phi)
          phi = 2.0*pi*phi
          call random_number(r)
          r = r0*r
          x=x0+ r*cos(phi)
          y=y0+ r*sin(phi)
          open(11,file='itr00',access='append')
          write(11,*)x,y
          close(11)
          !!!now we have a set of random numbers in a circle
          do j =1,num_iteration
            x_new=next_x(x)
            y_new=next_y(x,y)
            !producing a filename for data of each iteration
            write(filename,'(a,i2.2,a)')'itr',j
            open(11,file=filename,access='append')
            write(11,*) x_new,y_new
            close(11)
            x=x_new
            y=y_new
          end do
        end do

        call system ('mv itr0* data')

end

real function next_x(x)
        implicit none
        real::x

        next_x = 4.0*x*(1.0-x)
        end function
real function next_y(x,y)
        implicit none
        real::x,y

        if (x+y>1.0) then
                next_y = x+y-1.0
        else
                next_y = x+y
        end if
        end function
