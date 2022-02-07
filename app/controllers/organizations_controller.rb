class OrganizationsController < ApplicationController
  before_action :set_organization, only: %i[show edit update destroy approve]

  # GET /organizations or /organizations.json
  def index
    if current_user.is_admin
      @organizations = Organization.all
    else 
      @organizations = Organization.where('status = ?', 2)
    end
  end

  # GET /organizations/1 or /organizations/1.json
  def show; end

  # GET /organizations/new
  def new
    @organization = current_user.organizations.build
  end

  # GET /organizations/1/edit
  def edit;end

  # POST /organizations or /organizations.json
  def create
    @organization = current_user.organizations.build(organization_params)

    respond_to do |format|
      if @organization.save
        format.html { redirect_to organization_url(@organization), notice: 'Organization was successfully created.' }
        format.json { render :show, status: :created, location: @organization }
        CreateNotificationOrganizationJob.perform_later(current_user, 'wait confirmation from admin')
        admins = User.where(is_admin: true)
        (0..admins.size).each do |i|
          CreateNotificationOrganizationJob.perform_later(admins[i], 'confirm the request')
        end
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizations/1 or /organizations/1.json
  def update
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to organization_url(@organization), notice: 'Organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit, status: :unprocessable_entity, method: :put }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizations/1 or /organizations/1.json
  def destroy
    @organization.destroy

    respond_to do |format|
      format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def approve
    @organization.approve
    @organization.save
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_organization
    @organization = Organization.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def organization_params
    p = params.require(:organization).permit(:title, :min_price, :min_time, :price_one_hour, :price_two_hours,
                                             :start_work, :end_work, :type_of_services, :status,
                                             place_attributes: %i[latitude longitude name], images: [])
    p[:type_of_services] = params[:organization][:type_of_services].to_i
    p[:status] = params[:organization][:status].to_i
    p
  end
end
