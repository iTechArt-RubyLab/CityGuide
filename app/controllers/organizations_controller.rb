class OrganizationsController < ApplicationController
  before_action :current_organization, only: %i[show edit update destroy]

  # GET /organizations or /organizations.json
  def index
    @organizations = if params[:search_key]
                       Organization.where('title LIKE ?', "%#{params[:search_key]}%")
                     else
                       Organization.all
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
    @organization = current_user.organizations.build(organization_params)

    respond_to do |format|
      if @organization.save
        format.html { redirect_to organization_url(@organization), notice: 'Organization was successfully created.' }
        format.json { render :show, status: :created, location: @organization }
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
        format.html { render :edit, status: :unprocessable_entity }
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

  private

  # Use callbacks to share common setup or constraints between actions.
  def current_organization
    @organization = Organization.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def organization_params
    p = params.require(:organization).permit(:title, :min_price, :min_time, :price_one_hour, :price_two_hours,
                                             :start_work, :end_work, :type_of_services, :status,
                                             place_attributes: %i[latitude longitude name])
    p[:type_of_services] = params[:organization][:type_of_services].to_i
    p[:status] = params[:organization][:status].to_i
    p
  end
end
