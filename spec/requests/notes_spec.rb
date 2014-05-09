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
end