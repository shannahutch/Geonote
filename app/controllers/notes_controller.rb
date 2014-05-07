class NotesController < ApplicationController
  def index
    # this is using the gone gem to make a variable accessable by JS
    @notes = Note.all
    gon.pin = Note.last

    # @note = Note.new(text: "my note", latitude: )
  end

  def show  
    @note = Note.find(params[:id])
    #gon.notes = Note.all
  end

  def new
    @note = Note.new
    
  end

  def create
    binding.pry

    @note = Note.new note_params
    if @note.save
      redirect_to note_path(@note)
    else
      flash[:error] = "Your note was not saved. Try again"
      redirect_to root_path
    end
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    @note = Note.find(params[:id])
    @note.update note_params
    redirect_to note_path(@note)
  end

  def destroy
    Note.find(params[:id]).destroy
    redirect_to root_path
  end

  private
    def note_params
      params.require(:note).permit(:text, :latitude, :longitude)
    end
end
