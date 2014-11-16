class AcmtsController < ApplicationController
  before_action :signed_in_user, only: [:create]
  before_action :admin_user, only: [:index, :show, :new, :edit, :update, :destroy]
  before_action :set_acmt, only: [:show, :edit, :update, :destroy]

  # GET /acmts
  # GET /acmts.json
  def index
    @acmts = Acmt.all
  end

  # GET /acmts/1
  # GET /acmts/1.json
  def show
  end

  # GET /acmts/new
  def new
    @acmt = Acmt.new
  end

  # GET /acmts/1/edit
  def edit
  end

  # POST /acmts
  # POST /acmts.json
  def create
    @acmt = Acmt.new(acmt_params)
    if !@acmt.user_id
      @acmt.user_id = current_user.id
    end
    respond_to do |format|
      if @acmt.save
        format.html { redirect_to :back, notice: 'Bcmt was successfully created.' }
        format.json { render action: 'show', status: :created, location: @acmt }
      else
        format.html { redirect_back_or 'new' }
        format.json { render json: @acmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acmts/1
  # PATCH/PUT /acmts/1.json
  def update
    respond_to do |format|
      if @acmt.update(acmt_params)
        format.html { redirect_to @acmt, notice: 'Acmt was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @acmt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acmts/1
  # DELETE /acmts/1.json
  def destroy
    @acmt.destroy
    respond_to do |format|
      format.html { redirect_to acmts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acmt
      @acmt = Acmt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acmt_params
      params.require(:acmt).permit(:attraction_id, :user_id, :content)
    end
end
