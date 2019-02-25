Rails.application.routes.draw do
  resources :songs, only: %i[index show new edit create update destroy]

  # get 'songs/show'
  #
  # get 'songs/new'
  #
  # get 'songs/edit'
  #
  # get 'songs/create'
  #
  # get 'songs/update'
  #
  # get 'songs/delete'

end
