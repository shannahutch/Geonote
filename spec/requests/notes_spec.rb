# each method for routes in method
require 'spec_helper'
# 200 status check
  
  

  
describe NotesController do
  before do
    u = User.create!(email: 'shannahutch@gmail.com', password: 'asdasdasd', password_confirmation: 'asdasdasd')
    post user_session_path, :user => {:email => u.email, :password => u.password}
  end
  describe 'Get index' do
    it 'returns a 200 Ok status' do
      note = Note.create
      get notes_path
      expect(response.status).to eq(200)
    end
    it 'renders the index template' do
      get notes_path
      expect(response).to render_template("index")  
    end
  end

  describe 'Get new' do
    it 'returns a 200 Ok status' do
      ntoe = Note.create
      get notes_path
      expect(response.status).to eq(200)
    end

  describe 'Get edit' do
    it 'returns a 200 Ok status' do
      get notes_path
      expect(response.status).to eq(200)
    end
  end  

  describe 'Get show' do
      it 'returns a 20 OK status' do
        get notes_path
        expect(response.status).to eq(200)
      end   
      # it 'renders the show template' do
      #   get :show, id:@url.id
      #   expect(response).to render_template("show")
      # end   
    end

end