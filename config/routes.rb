Atacado::Application.routes.draw do
  resources :clients

  root 'pages#landing'
end
