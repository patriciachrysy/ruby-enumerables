Module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    listArray = []
    list.each do |element|
      listArray.push(element) if yield(element)
    end
    print listArray.length == list.length
  end

  def any?
    listArray = []
    list.each do |element|
      listArray.push(element) if yield(element)
    end
    puts !listArray.empty?
  end

  def filter?
    listArray = []
    list.each do |element|
      listArray.push(element) if yield(element)
    end
    print listArray
  end  
end
