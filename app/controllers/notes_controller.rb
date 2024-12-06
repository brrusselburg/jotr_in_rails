class NotesController < ApplicationController
  NOTES_DIR = Dir.home + "/Notes/"

  def index
    @notes = self.sync_notes
    # might need to pull in the path and the name a la main.rs:44
  end

  private

  def sync_notes
    notes = Dir[File.join(NOTES_DIR, '*')]

    notes
  end
end
