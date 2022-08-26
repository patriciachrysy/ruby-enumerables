module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    list_array = []
    list.each do |element|
      list_array.push(element) if yield(element)
    end
    print list_array.length == list.length
  end

  def any?
    list_array = []
    list.each do |element|
      list_array.push(element) if yield(element)
    end
    puts !list_array.empty?
  end

  def filter?
    list_array = []
    list.each do |element|
      list_array.push(element) if yield(element)
    end
    print list_array
  end
end
