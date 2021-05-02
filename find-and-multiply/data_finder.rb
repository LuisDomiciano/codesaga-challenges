class DataFinder
  def find_and_multiply(list)
    result = 0
    target = 1984
    list = list.sort.reverse
    first = list.first
    for item in 0 .. list.length-1
      list.each {
        |item|
        if first - item == target
          result = first * item
        end
      }
      list.shift
      first = list.first
    end
    result
  end
end

