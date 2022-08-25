module MyEnumerable
<<<<<<< HEAD
<<<<<<< HEAD
  def list
    @list ||= []
  end

  def all?
    listArray = []
    list.each do |element|
      listArray.push(element) if yield(element)
=======
    def list
      @list ||= []
>>>>>>> parent of 3c23f4a (fix error)
=======
    def list
      @list ||= []
>>>>>>> parent of 3c23f4a (fix error)
    end
  
    def all?
      listArray = []
      list.each do |element|
        listArray.push(element) if yield(element)
      end
      print listArray.length == list.length
    end
  
    def any?
      myArray = []
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