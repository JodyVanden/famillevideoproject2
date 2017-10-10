class VideosController < ApplicationController
  ressources :videos, only: [ :index, :show ]
end
