Rails.application.routes.draw do

   resources :locations do
    resources :surfcamps, only: [:new, :create, :show]
  end
end
