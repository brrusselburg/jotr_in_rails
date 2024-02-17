class Note < ApplicationRecord
  def initialize(note)
    @note = File.open(note)
  end

  # import markdown file, then

  def note_title
    "Cool Title"
    # makes the file name the title
    # error for when it doesn't exist
  end

  def self.note_contents(note)
    body = File.readlines(note, chomp: true)
    body[0]
    # ^^ this is extremely close!! just need to figure out how to pass the note file path as an argument and that should work fingies crossed :00000000

    # opens the file and prints the body
    # maybe something if the file is empty
  end
end
