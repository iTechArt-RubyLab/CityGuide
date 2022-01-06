class EntityProfilesController < ApplicationController
  before_action :set_entity_profile, only: %i[show edit update destroy]
  def index
    @entity_profiles = EntityProfile.all
  end

  def new
    @entity_profile = EntityProfile.new
  end

  def create
    contact_information = ContactInformation.create(contact_information_params)
    @result = EntityProfiles::Create.new(contact_information, entity_profile_params).call
    respond_to do |format|
      if @result
        @entity_profile = @result.entity_profile
        format.html { redirect_to @entity_profile, notice: 'Entity profile was successfully created.' }
        format.json { render :show, status: :created, location: @entity_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entity_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def show; end

  def destroy
    @entity_profile.destroy

    respond_to do |format|
      format.html { redirect_to entity_profiles_url, notice: 'Entity profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update
    respond_to do |format|
      if @entity_profile.update(entity_profile_params)
        format.html { redirect_to @entity_profile, notice: 'Entity profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @entity_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entity_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_information_params
    params.require(:contact_information).permit(:phone_number, :email_address, :address, :messenger_link)
  end

  def entity_profile_params
    params.require(:entity_profile).permit(:name, :surname, :age, :note, :contact_information, :title_company,
                                           :min_price, :min_time, :price_one_hour, :price_two_hours,
                                           :start_work, :end_work, :type_of_service)
  end

  def set_entity_profile
    @entity_profile = EntityProfile.find(params[:id])
  end
end
