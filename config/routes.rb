Rails.application.routes.draw do
  root to: 'pages#home'
  get 'analyze', to: "pages#analyze", as: :analyze
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
