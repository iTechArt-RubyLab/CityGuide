class HumanProfilesController < ApplicationController
  before_action :set_human_profile, only: %i[show edit update destroy]
  def index
    @human_profiles = HumanProfile.all
  end

  def new
    @human_profile = HumanProfile.new
  end

  def create
    contact_information = ContactInformation.create(contact_information_params)
    @params = human_profile_params.merge(contact_information_id: contact_information.id)
    @human_profile = HumanProfile.new(@params)
    respond_to do |format|
      if @human_profile.save
        # current_user.profilable = @entity_profile
        format.html { redirect_to @human_profile, notice: 'Human profile was successfully created.' }
        format.json { render :show, status: :created, location: @entity_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @human_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def show; end

  def destroy
    @human_profile.destroy

    respond_to do |format|
      format.html { redirect_to human_profiles_url, notice: 'Human profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update
    respond_to do |format|
      if @human_profile.update(human_profile_params)
        format.html { redirect_to @human_profile, notice: 'Human profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @human_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @human_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_information_params
    params.require(:contact_information).permit(:phone_number, :email_address, :address, :messenger_link)
  end

  def human_profile_params
    params.require(:human_profile).permit(:name, :surname, :age, :note, :contact_information)
  end

  def set_human_profile
    @human_profile = HumanProfile.find(params[:id])
  end
end
