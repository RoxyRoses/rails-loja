Rails.application.routes.draw do
  root to: "produtos#index"

  # post para salvar produtos, buscando o metodo create no controller de produtos
  post "produtos", to: "produtos#create"
  get "produtos/new", to: "produtos#new"
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
