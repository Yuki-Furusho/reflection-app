class NotesController < ApplicationController
  def index
    @notes = Note.includes(:user)
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      session[:note_id] = @note.id
      redirect_to note_steps_path(:emotion)
    else
      render :new
    end
  end

  private

  def note_params
    params.require(:note).permit(:when, :fact, :emotions_id, :visibility_id, :wanted_to, :wanted_you_to).merge(user_id: current_user.id)
  end
end
