class WordHunter
  def hunt(matrix, words)
    array = []
    matrix_line = matrix.join('')
    matrix_column = matrix.transpose.join('')
    matrix = []
    matrix = matrix_line + matrix_column
    matrix
    words.split.map do |item|
      if matrix.match(item) or matrix.match(item.reverse)
        array << item
      end
    end
    array.sort.join(' ')
  end
end

