Rails.application.routes.draw do
  resources :resorts do
    match '/scrape', to: 'resorts#scrape', via :post, on: :collection
  end


  root to: 'resorts#index'
end
