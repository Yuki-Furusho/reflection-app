class NotesController < ApplicationController
  def index
    @notes = Note.includes(:user)
  end

  def new
  end
end
