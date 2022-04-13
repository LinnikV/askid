Rails.application.routes.draw do
  root 'static_pages#landing_page'
  get 'pricing', to: 'static_pages#pricing'
  get 'privacy', to: 'static_pages#privasy'
  get 'terms', to: 'static_pages#terms'
  
end
