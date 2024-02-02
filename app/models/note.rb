class Note < ApplicationRecord
  NOTES_DIR = Dir.home + "/Notes/"

  def def initialize(note)
    @note = File.open(note)
  end

  # import markdown file, then

  def note_title
    "Cool Title"
    # makes the file name the title
    # error for when it doesn't exist
  end

  def note_contents
    File.read("#{note}")
    # opens the file and prints the body
    # maybe something if the file is empty
  end
end
