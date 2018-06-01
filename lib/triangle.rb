class Triangle
attr_accessor :a,:b,:c
def initialize(a,b,c)
  @a=a
  @b=b
  @c=c
end

def kind
  if @a+@b>@c && @a+@c>@b && @b+@c>@a && @a==@b && @b==@c
    :equilateral
  elsif @a+@b>@c && @a+@c>@b && @b+@c>@a &&(@a==@b ||@b==@c || @c==@a)
    :isosceles
  elsif @a+@b>@c && @a+@c>@b && @b+@c>@a && @a!=@b && @b!=@c
    :scalene
else
  raise TriangleError
  end
end
class TriangleError < StandardError
end

end
