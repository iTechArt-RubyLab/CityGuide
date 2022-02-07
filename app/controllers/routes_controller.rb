class RoutesController < ApplicationController
  before_action :set_route, only: %i[ show edit update destroy approve]

  # GET /routes or /routes.json
  def index
    if current_user.is_admin || current_user.organizations.count > 0
      @routes=Route.all
    else
      @routes = Route.where(visitor_id: current_user.id)
    end
  end

  # GET /routes/1 or /routes/1.json
  def show
  end

  # GET /routes/new
  def new
    @route = Route.new
  end

  # GET /routes/1/edit
  def edit
  end

  # POST /routes or /routes.json
  def create
    @route = Route.new(route_params)

    respond_to do |format|
      if @route.save
        format.html { redirect_to route_url(@route), notice: "Route was successfully created." }
        format.json { render :show, status: :created, location: @route }
        CreateNotificationRouteJob.perform_later(current_user, 'wait confirmation from tour agency')
        CreateNotificationRouteJob.perform_later(@route.tour_agency.user, 'confirm the request')
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /routes/1 or /routes/1.json
  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to route_url(@route), notice: "Route was successfully updated." }
        format.json { render :show, status: :ok, location: @route }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routes/1 or /routes/1.json
  def destroy
    @route.destroy

    respond_to do |format|
      format.html { redirect_to routes_url, notice: "Route was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def approve
    @route.approve
    @route.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def route_params
      r = params.require(:route).permit(:tour_agency_id, :visitor_id, :start_date, :end_date, :hotel_id, :cost, {:place_ids=>[]}, :mode_of_transport, :status)
      r[:status] = params[:route][:status].to_i
      r
    end
end
