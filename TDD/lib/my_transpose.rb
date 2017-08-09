def my_transpose(array)
  result = []
  sub_result = []
  i = 0
  while i < array.length
    j = 0
    while j < array.length
      sub_result << array[j][i]
      j += 1
    end
    result << sub_result
    sub_result = []
    i += 1
  end
  result
end
