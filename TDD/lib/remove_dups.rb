class Array

  def my_uniq
    uniques = []
    self.each do |el|
      unless uniques.include?(el)
        uniques << el
      end
    end
    uniques
  end

end
