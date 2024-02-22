class NotesController < ApplicationController
  NOTES_DIR = Dir.home + "/Notes/"

  def index
    @notes = self.sync_notes

    # render_template('partial')
    # assumption index -> #partial
  end

  def show
    name = "#{params[:id]}.md"
    @notes = self.sync_notes

    @md_content = File.readlines(File.join(NOTES_DIR, name), chomp: true)

    render(:index)
  end

  private

  def sync_notes
    notes = Dir[File.join(NOTES_DIR, '*')]
  end
end

# TODO: add Save button under preview div
# TODO: make editable div under preview
# TODO: go through the full CRUD methodology (update, delete, etc)
