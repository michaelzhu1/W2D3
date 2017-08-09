class Array
  def two_sum
    result = []
    self.each_index do |i|
      j = i + 1
      (j...self.length).each do |j|
        if self[i] + self[j] == 0
          result << [i,j]
        end
      end
    end
    result 
  end


end
