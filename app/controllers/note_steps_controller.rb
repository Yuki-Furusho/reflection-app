class NoteStepsController < ApplicationController
  include Wicked::Wizard
  steps :emotion, :wanted

  def show
    @note = current_note
    render_wizard
  end

  def update
    @note = current_note
    @note.attributes = note_params
    render_wizard @note
  end

  private

  def finish_wizard_path
    note_finish_path([params])
  end

  def current_note
    Note.find_by(id: session[:note_id])
  end

  def note_params
    params.require(:note).permit(:when, :fact, :visibility_id, :emotions_id, :wanted_to, :wanted_you_to).merge(user_id: current_user.id)
  end
end
