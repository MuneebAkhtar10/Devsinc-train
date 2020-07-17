Rails.application.routes.draw do
  resources :books
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # shallow do
  # 	resources :articles do
  # 	resources :posts

  # end

	# authenticated :admin do
	  shallow do
			resources :articles do
				member do
					get 'posts'
				end	
				
				resources :posts
				
			end
	  end


  devise_for :users, :controllers => { registrations: 'registrations'}
  root 'welcome#index'
end
