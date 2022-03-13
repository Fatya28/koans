# Triangle Project Code.
# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(one, two, three)
  sides = [one, two, three].sort
  raise TriangleError if sides.any? { |side| side <= 0 }
  raise TriangleError unless sides[0, 2].sum > sides[2] || sides.uniq.size == 1

  case sides.uniq.size
  when 1
    :equilateral
  when 2
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
