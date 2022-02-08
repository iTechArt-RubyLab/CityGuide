class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update destroy]

  # GET /profiles or /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1 or /profiles/1.json
  def show; end

  # GET /profiles/new
  def new
    @profile = current_user.build_profile
  end

  # GET /profiles/1/edit
  def edit; end

  # POST /profiles or /profiles.json
  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to profile_url(@profile), notice: 'Profile was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end
end

# PATCH/PUT /profiles/1 or /profiles/1.json
def update
  if @profile.update(profile_params)
    redirect_to profile_url(@profile), notice: 'Profile was successfully updated.'
  else
    render :edit, status: :unprocessable_entity
  end
end

# DELETE /profiles/1 or /profiles/1.json
def destroy
  @profile.destroy

  redirect_to profiles_url, notice: 'Profile was successfully destroyed.'
end

  private

# Use callbacks to share common setup or constraints between actions.
def set_profile
  @profile = Profile.find(params[:id])
end

# Only allow a list of trusted parameters through.
def profile_params
  params.require(:profile).permit(:name, :surname, :birthday, :note, :phone_number, :email_address, :avatar)
end
