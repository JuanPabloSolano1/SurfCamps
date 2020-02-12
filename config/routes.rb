Rails.application.routes.draw do
 resources :continents do
   resources :locations do
    resources :surfcamps, only: [:index,:new, :create, :show]
  end
  end
end
