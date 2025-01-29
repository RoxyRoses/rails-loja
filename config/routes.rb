Rails.application.routes.draw do
  root to: "produtos#index"
  resources :produtos, only: [:new, :create, :destroy]
  get "produtos/busca", to: "produtos#busca", as: :busca_produto
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
