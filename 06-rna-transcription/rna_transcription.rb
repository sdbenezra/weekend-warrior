require 'pry'
class Complement
  def self.of_dna(strand)
    complement_strand = ''
    strand.chars.each do |base|
      case base
      when 'G'
        complement_strand << 'C'
      when 'C'
        complement_strand << 'G'
      when 'T'
        complement_strand << 'A'
      when 'A'
        complement_strand << 'U'
      else
        raise ArgumentError
      end
    end
    return complement_strand
  end

  def self.of_rna(strand)
    complement_strand = ''
    strand.chars.each do |base|
      case base
      when 'G'
        complement_strand << 'C'
      when 'C'
        complement_strand << 'G'
      when 'U'
        complement_strand << 'A'
      when 'A'
        complement_strand << 'T'
      else
        raise ArgumentError
      end
    end
    return complement_strand
  end
end
#
#
# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`
