class MoviesController < ApplicationController


    before_action :set_movie, only: [:show]

    def index
        @movies = Movie.all
    end

    def show
        # binding.pry
    end


    def set_movie
        @movie = Movie.find_by(id: params[:id])
        if !@movie
          redirect_to root_path
        end
      end
    
end