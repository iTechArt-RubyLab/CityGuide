class OrganizationsController < ApplicationController
  before_action :set_organization, only: %i[show edit update destroy approve]

  # GET /organizations or /organizations.json
  def index
    @organizations = if current_user.is_admin
                       Organization.all
                     else
                       Organization.where('status = 2')
                     end
  end

  # GET /organizations/1 or /organizations/1.json
  def show; end

  # GET /organizations/new
  def new
    @organization = current_user.organizations.build
  end

  # GET /organizations/1/edit
  def edit; end

  # POST /organizations or /organizations.json
  def create
    @organization = current_user.organizations.build(temp_params)

    if @organization.save
      redirect_to organization_url(@organization), notice: 'Organization was successfully created.'
      CreateNotificationOrganizationJob.perform_later(current_user, 'wait confirmation from admin')
      admins = User.where(is_admin: true)
      (0..admins.size).each do |i|
        CreateNotificationOrganizationJob.perform_later(admins[i], 'confirm the request')
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organizations/1 or /organizations/1.json
  def update
    if @organization.update(temp_params)
      redirect_to organization_url(@organization), notice: 'Organization was successfully updated.'
    else
      render :edit, status: :unprocessable_entity, method: :put
    end
  end

  # DELETE /organizations/1 or /organizations/1.json
  def destroy
    @organization.destroy
    redirect_to organizations_url, notice: 'Organization was successfully destroyed.'
  end

  def approve
    @organization.approve
    @organization.save
    ApproveNotificationOrganizationJob.perform_later(@organization.user)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_organization
    @organization = Organization.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def temp_params
    o = params.require(:organization).permit(:title, :min_price, :min_time, :price_one_hour, :price_two_hours,
                                             :start_work, :end_work, :type_of_services, :status,
                                             place_attributes: %i[latitude longitude name], images: [])
    o[:type_of_services] = params[:organization][:type_of_services].to_i
    o[:status] = params[:organization][:status].to_i
    o
  end
end
