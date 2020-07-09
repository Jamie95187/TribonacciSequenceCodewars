class Tribonacci

  def present(array, number)
    return array[0...number] if number <= 3
    counter = 3
    while number > counter do
      array << array[array.length - 3] + array[array.length - 2] + array[array.length - 1]
      counter += 1
    end
    array
  end

end
