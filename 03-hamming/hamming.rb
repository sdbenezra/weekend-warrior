class Hamming

  def self.compute(strand1, strand2)
    index = 0
    count = 0
    length = strand1.length

    raise ArgumentError, "Strands are not same length" if length != strand2.length

    while index != length do
      if strand1[index] != strand2[index]
        count += 1
        index += 1
      else
        index += 1
      end
    end

    return count
  end

end
