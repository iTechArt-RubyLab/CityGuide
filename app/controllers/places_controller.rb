class PlacesController < ApplicationController
  before_action :place, only: %i[show edit update destroy]

  # GET /places or /places.json
  def index
    @places = Place.all
  end

  # GET /places/1 or /places/1.json
  def show; end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit; end

  # POST /places or /places.json
  def create
    @place = Place.new(place_params)
    if @place.save
      redirect_to place_url(@place), notice: 'Place was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end
end

# PATCH/PUT /places/1 or /places/1.json
def update
  if @place.update(place_params)
    redirect_to place_url(@place), notice: 'Place was successfully updated.'
  else
    render :edit, status: :unprocessable_entity
  end
end

# DELETE /places/1 or /places/1.json
def destroy
  @place.destroy
  redirect_to places_url, notice: 'Place was successfully destroyed.'
end

  private

# Use callbacks to share common setup or constraints between actions.
def place
  @place = Place.find(params[:id])
end

# Only allow a list of trusted parameters through.
def place_params
  params.require(:place).permit(:name, :latitude, :longitude)
end
