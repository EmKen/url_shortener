Rails.application.routes.draw do
	root "urls#index"
	resources :urls
	get "/urls/:id/short" => "urls#short"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
