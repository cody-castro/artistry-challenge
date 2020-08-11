class ArtistsController < ApplicationController

def index
    @artists = Artist.all 
end

def new
    @artist = Artist.new
end

def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(artist)
end

def edit
    @artist = Artist.update(artist_params)
    redirect_to artist_path(artist)
end

def update

end

def show
    @artist = Artist.find(params[:id])
end

def destroy
    @artist = Aartist.find(params[:id]).destroy
end


private
def artist_params
    params.require(:artist).permit(:name, :age, :title)
end


end
