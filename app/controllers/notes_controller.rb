class NotesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :note_find, only: [:show, :edit, :update, :destroy]

  def index
    @notes = Note.includes(:user)
  end

  def new
    @note = Note.new
    @emotions = Emotion.all
  end

  def create
    @note = Note.new(note_params)
    @emotions = Emotion.all
    @emotion_ids = params[:note][:emotion_ids]
    @emotion_ids.shift
    if @note.save
      @emotion_ids.each do |emotion_id|
        emotion = Emotion.find(emotion_id.to_i)
        @note.emotions << emotion
      end
      redirect_to root_path
    else
      render :new
    end
  end
  
  def show
  end

  def edit
    @emotions = Emotion.all
    if current_user != @note.user 
      redirect_to root_path
    end
  end

  def update
    @emotion_ids = params[:note][:emotion_ids]
    @emotion_ids.shift
    if @note.update(note_params)
      @emotion_ids.each do |emotion_id|
        emotion = Emotion.find(emotion_id.to_i)
        @note.emotions << emotion
      end
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    note = Note.find(params[:id])
    if current_user == note.user
      note.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end  

  private

  def note_params
    params.require(:note).permit(:when, :fact, :visibility_id, :wanted_to, :wanted_you_to, emotion_ids: []).merge(user_id: current_user.id)
  end

  def note_find
    @note = Note.find(params[:id])
  end
end
