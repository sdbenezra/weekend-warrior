require 'pry'
class Alouette
  VERSES = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
  
  def self.lines_for_verse(verse_num)
    lines = VERSES.map { |verse|
      "Et #{verse}!"
    }
    return lines[0..verse_num].reverse
  end

  def self.verse(verse_num)
    verse = ""
    index = 0
    lines_for_verse = self.lines_for_verse(verse_num)
    2.times do
      verse << "Je te plumerai #{VERSES[verse_num]}.\n"
    end
    while index <= verse_num
      2.times do
        verse << "#{lines_for_verse[index]}\n"
      end
      index += 1
    end
    verse << "Alouette!\nAlouette!\nA-a-a-ah"
  return verse
  end

  def self.sing
    song = ""
    VERSES.length.times do |index|
      song << "Alouette, gentille alouette,\nAlouette, je te plumerai.\n\n#{self.verse(index)}\n\n"
    end
    song << "Alouette, gentille alouette,\nAlouette, je te plumerai."
    return song
  end
end
