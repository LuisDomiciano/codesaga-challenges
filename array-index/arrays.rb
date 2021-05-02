class Arrays
  def self.multiplica_indices(array)
    for index in 0 .. array.length-1
      array[index] = index * array[index]
    end
    array
  end
end

