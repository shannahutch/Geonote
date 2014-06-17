Geonote::Application.routes.draw do
  
  devise_for :users

  root 'notes#new'


  resources :notes do

  get 'search', on: :collection

  # get "/notes/index", to: 'notes#index', as: 'notes'
  # get '/notes/new', to: 'notes#new', as: 'new_note'
  # post '/notes', to: 'notes#create'
  # get '/notes/:id', to: 'notes#show', as: 'note'

  end
end

# #                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                     root GET    /                              notes#new
#                    notes GET    /notes(.:format)               notes#index
#                          POST   /notes(.:format)               notes#create
#                 new_note GET    /notes/new(.:format)           notes#new
#                edit_note GET    /notes/:id/edit(.:format)      notes#edit
#                     note GET    /notes/:id(.:format)           notes#show
#                          PATCH  /notes/:id(.:format)           notes#update
#                          PUT    /notes/:id(.:format)           notes#update
#                          DELETE /notes/:id(.:format)           notes#destroy
