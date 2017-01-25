Rails.application.routes.draw do
  root "tales#index"

  resources :tales, only: [:index, :show, :create, :destroy, :new]
end
