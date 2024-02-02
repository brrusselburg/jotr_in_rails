class NotesController < ApplicationController
  NOTES_DIR = Dir.home + "/Notes/"

  def index
    @notes = self.sync_notes
    # might need to pull in the path and the name a la main.rs:44
  end

  def preview(note)
    content = File.readlines(note, chomp: true)
    # ^^ this is extremely close!! just need to figure out how to pass the note file path as an argument and that should work fingies crossed :00000000
    #content.each_with_index{ |line, i| puts "#{i+1}: #{line}"}
  end

  def self.hi(note)
    File.readlines(note, chomp: true)
  end

  private

  def sync_notes
    notes = Dir[File.join(NOTES_DIR, '*')]

    notes
  end
end
