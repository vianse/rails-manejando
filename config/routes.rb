Rails.application.routes.draw do
  resources :enterados
  resources :comentarios
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :plataforms
  resources :states
  resources :photos
  resources :drivers

   root 'home#index'
   post 'chofer' => 'home#crear', as: :chofer
  namespace :api do
    namespace :v1 do

      resources :drivers, path: "buscar_chofer"
      resources :enterado, path: "enterado"
      resources :conteo, path: "conteo"
      resources :comentarios, path: "comentarios"
      
    end
  end
end
