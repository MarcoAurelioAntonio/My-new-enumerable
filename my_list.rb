require_relative 'my_enumerable'

class Mylist
  include MyEnumerable

  def initialize(*list)
    @list = list
  end
end

list = Mylist.new(1, 2, 4, 3)

p list

p(list.all? { |e| e < 5 })
p(list.all? { |e| e > 5 })

p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })

p list.filter(&:even?)
p list.filter(&:odd?)
