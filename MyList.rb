require_relative 'module'

class Mylist
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

# Create instance of MyList

new_list = Mylist.new(1, 2, 3, 4)

# Test all? method

new_list.all? { |e| e < 5 } # => true
new_list.all? { |e| e > 5 } # => false

# Test any? method

new_list.any? { |e| e == 2 } # => true
new_list.any? { |e| e == 5 } # => false

# Test filter? method

new_list.filter?(&:even?) # => [2, 4]
