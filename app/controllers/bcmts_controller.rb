class BcmtsController < ApplicationController
  before_action :signed_in_user, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_bcmt, only: [:show, :edit, :update, :destroy]

  # GET /bcmts
  # GET /bcmts.json
  def index
    @bcmts = Bcmt.all
  end

  # GET /bcmts/1
  # GET /bcmts/1.json
  def show
  end

  # GET /bcmts/new
  def new
    @bcmt = Bcmt.new
  end

  # GET /bcmts/1/edit
  def edit
  end

  # POST /bcmts
  # POST /bcmts.json
  def create
    @bcmt = Bcmt.new(bcmt_params)

    respond_to do |format|
      if @bcmt.save
        format.html { redirect_to @bcmt, notice: 'Bcmt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bcmt }
      else
        format.html { render action: 'new' }
        format.json { render json: @bcmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bcmts/1
  # PATCH/PUT /bcmts/1.json
  def update
    respond_to do |format|
      if @bcmt.update(bcmt_params)
        format.html { redirect_to @bcmt, notice: 'Bcmt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bcmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bcmts/1
  # DELETE /bcmts/1.json
  def destroy
    @bcmt.destroy
    respond_to do |format|
      format.html { redirect_to bcmts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bcmt
      @bcmt = Bcmt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bcmt_params
      params.require(:bcmt).permit(:blog_id, :user_id, :content)
    end
end
