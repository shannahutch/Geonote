require 'spec_helper'

describe NotesController do

      describe "GET 'index'" do
        it "returns http success" do
          get 'index'
          response.should be_success
        end
      end

      describe "GET 'new'" do
        it "returns http success" do
          get 'new'
          response.should be_success
        end
      end

    end

#   describe 'Get index' do
#     before do
#       u = User.create!()
#     end
#     it 'returns a 200 Ok status' do
#       note = Note.create
#       get :index
#       expect(response.status).to eq(200)
#     end
#     it 'renders the index template' do
#       get :index
#       expect(response).to render_template("index")  
#     end
#   end
# end