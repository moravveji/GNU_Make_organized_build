
program main
  
  use lib
  implicit none

  radii = 1.2345d0
  radii = 1d0
  circ  = get_circ(radii)
  area  = get_area(radii)

  print '("radius=", f19.16, ", circumference=", f19.16, ", area=", f19.16)', & 
    radii, circ, area

end program main

