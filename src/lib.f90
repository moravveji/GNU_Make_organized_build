
module lib
  
  implicit none
  include 'vars.inc'
!  implicit none

  contains 

  ! compute circumference of a circle
  real(dp) function get_circ(radii_) result(circ_)
    real(dp), intent(in) :: radii_

    circ_ = 2d0 * pi * radii_

  end function get_circ

  ! compute area of a circle
  real(dp) function get_area(radii_) result(area_)
    real(dp), intent(in) :: radii_

    area_ = pi * radii_ * radii_

  end function get_area

end module lib

