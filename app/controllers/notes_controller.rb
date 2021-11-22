class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def new
  end
end
