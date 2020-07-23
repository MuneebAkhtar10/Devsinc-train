Rails.application.routes.draw do

  shallow do
	  resources :newsfeeds do
	  	resources :comments
		end
	end
	get 'search', to: 'newsfeeds#search'
	get 'search_comment', to: 'newsfeeds#search_comment'
  root 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
