class MisteryNumber
  def getIndex (string)
    string.each_index {
      |index|
      if string[index] == '?'
        return index
      end
    } 
  end

  def calculate(operation)
    operation = operation.split
    string = []
    number = 0
    result = operation.last.to_i
    position = 0
    achou = 0
    operation.each {
      |item|
      if item == '='
        break
      elsif string << item
      end
    }
    position = getIndex(operation)
    while (achou == 0)
      string[position] = number.to_s
      if eval(string.join('')) == result
        achou = 1
        return number
      else
        number += 1
      end
    end

  end

end

