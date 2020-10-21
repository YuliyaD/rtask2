class Array
  def to_histogram
    counts = Hash.new(0)
    each do |value|
      counts[value] += 1
    end
    counts
  end
end

p ['orange', 'banana', 'banana', 'banana', 'lemon', 'lemon'].to_histogram
