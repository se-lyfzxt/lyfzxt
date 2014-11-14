class HcmtsController < ApplicationController
  before_action :signed_in_user, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_hcmt, only: [:show, :edit, :update, :destroy]

  # GET /hcmts
  # GET /hcmts.json
  def index
    @hcmts = Hcmt.all
  end

  # GET /hcmts/1
  # GET /hcmts/1.json
  def show
  end

  # GET /hcmts/new
  def new
    @hcmt = Hcmt.new
  end

  # GET /hcmts/1/edit
  def edit
  end

  # POST /hcmts
  # POST /hcmts.json
  def create
    @hcmt = Hcmt.new(hcmt_params)

    respond_to do |format|
      if @hcmt.save
        format.html { redirect_to @hcmt, notice: 'Hcmt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hcmt }
      else
        format.html { render action: 'new' }
        format.json { render json: @hcmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hcmts/1
  # PATCH/PUT /hcmts/1.json
  def update
    respond_to do |format|
      if @hcmt.update(hcmt_params)
        format.html { redirect_to @hcmt, notice: 'Hcmt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hcmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hcmts/1
  # DELETE /hcmts/1.json
  def destroy
    @hcmt.destroy
    respond_to do |format|
      format.html { redirect_to hcmts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hcmt
      @hcmt = Hcmt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hcmt_params
      params.require(:hcmt).permit(:hotel_id, :user_id, :content)
    end
end
