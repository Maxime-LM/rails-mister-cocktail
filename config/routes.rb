Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    # GET "cocktails/42/doses/new"
    # POST "cocktails/42/doses"
    resources :doses, only: [:new, :create]
  end

  # DELETE "/doses/25"

  resources :doses, only: [:destroy]
end
