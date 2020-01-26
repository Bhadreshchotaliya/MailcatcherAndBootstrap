Rails.application.routes.draw do
  devise_for :users, path: '',path_names:{
  	sign_in: 'login',
  	sign_up: 'registrations'
  } 

  get 'welcome/index'
  root 'welcome#index'
  devise_scope :user do  
   get '/sign_out' => 'devise/sessions#destroy'     
end  
end
