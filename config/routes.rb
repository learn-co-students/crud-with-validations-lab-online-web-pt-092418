Rails.application.routes.draw do
  resources :songs, only: %i[index show new edit create update destroy]

  root "songs#index"

end
