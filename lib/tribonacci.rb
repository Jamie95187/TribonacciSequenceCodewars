class Tribonacci

  def present(array, number)
    return array[0...number] if number <= 3
    array << array[array.length - 2] + array[array.length - 1]
  end

end
