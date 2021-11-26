class FilepicsController < ApplicationController
  before_action :set_filepic, only: [:show, :update, :destroy]

  # GET /filepics
  def index
    @filepics = Filepic.all

    render json: @filepics
  end

  # GET /filepics/1
  def show
    render json: @filepic
  end

  # POST /filepics
  def create
    @filepic = Filepic.new(filepic_params)

    if @filepic.save
      render json: @filepic, status: :created, location: @filepic
    else
      render json: @filepic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /filepics/1
  def update
    if @filepic.update(filepic_params)
      render json: @filepic
    else
      render json: @filepic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /filepics/1
  def destroy
    @filepic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filepic
      @filepic = Filepic.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def filepic_params
      params.permit(:name, :picture, :geolocation, :devicetype, :description)
    end
end

