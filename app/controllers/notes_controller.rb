class NotesController < ApplicationController
  before_action :note_find, only: [:show, :edit, :update]
  def index
    @notes = Note.includes(:user)
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    unless params[:note][:emotion].nil?
      params[:note][:emotion].each do |key, value|  
        if value == false
          next
        else
          emotion_id = Emotion.find_by(emotion_name: key).id
          note_emotion = NoteEmotion.create(note_id: @note.id, emotion_id: emotion_id)
        end
      end
      redirect_to 
    else
      render :new
    end
    redirect_to root_path
  end
  
  def edit
    if current_user != @note.user 
      redirect_to root
    end
  end

  private

  def note_params
    params.require(:note).permit(:when, :fact, :visibility_id, :wanted_to, :wanted_you_to).merge(user_id: current_user.id)
  end

  def note_find
    @note = Item.find(params[:id])
  end
end
