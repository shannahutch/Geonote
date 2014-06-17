class NotesController < ApplicationController
#binding.pry
   before_filter :authenticate_user!,  except: [:show]

  def index
    # this is using the gone gem to make a variable accessable by JS
    @notes = Note.all
    # gon.notes = @notes
    gon.notes = Note.all
    @note = Note.new
    # @note = Note.new(text: "my note", latitude: )
  end

  def show  
    @note = Note.find(params[:id])
    #gon.notes = Note.all
  end

  def new
    @note = Note.new
    redirect_to notes_path
    
  end

  def create
    #binding.pry

    @note = Note.new note_params
    if @note.save
      redirect_to notes_path(@note)
    else
      flash[:error] = "Your note was not saved. Try again"
      redirect_to notes_path
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
    session[:current_user_id] = nil
    flash[:notice] = "You have successfully logged out."
    redirect_to root_path
  end

  def search
    puts "SEARCH!"
    @search = SimpleSearch.new SimpleSearch.get_params(params)
    #may or may not need this
    @notes = Notes.none
    if @search.valid?
      @notes = @search.search_within Note.all, :text
    # end
    else 

    flash[:error] = "Your search criteria is invalid. "
            # flash[:errors]=@search.errors.full_messages
     end
    # render 'index'
    #   end
    # # end
  end

  private
    def note_params
      params.require(:note).permit(:text, :latitude, :longitude)
    end
  #   def current_user
  #   @_current_user ||= session[:current_user_id] &&
  #     User.find_by(id: session[:current_user_id])
  # end
 end

