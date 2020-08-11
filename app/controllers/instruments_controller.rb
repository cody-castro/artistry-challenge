class InstrumentsController < ApplicationController
def index
    @instruments = Instrument.all
end

def new
    @instrument = Instrument.new
end

def create
    @instrument = Instrument.create(instrument_params)
end

def edit

end

def update

end

def show
    @instrument = Instrument.find(params[:id])
end

def destroy

end

private

def instrument_params
    params.require(:instrument).permit(:name, :classification)
end


end
