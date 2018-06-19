Rails.application.routes.draw do
  devise_for :users
  resources :registers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: "registers#index"
end
