class CongressmembersController < ApplicationController
  before_action :set_congressmember, only: [:show, :edit, :update, :destroy]

  # GET /congressmembers
  # GET /congressmembers.json
  def index
    @congressmembers = Congressmember.all
  end

  # GET /congressmembers/1
  # GET /congressmembers/1.json
  def show
  end

  # GET /congressmembers/new
  def new
    @congressmember = Congressmember.new
  end

  # GET /congressmembers/1/edit
  def edit
  end

  # POST /congressmembers
  # POST /congressmembers.json
  def create
    @congressmember = Congressmember.new(congressmember_params)

    respond_to do |format|
      if @congressmember.save
        format.html { redirect_to @congressmember, notice: 'Congressmember was successfully created.' }
        format.json { render action: 'show', status: :created, location: @congressmember }
      else
        format.html { render action: 'new' }
        format.json { render json: @congressmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /congressmembers/1
  # PATCH/PUT /congressmembers/1.json
  def update
    respond_to do |format|
      if @congressmember.update(congressmember_params)
        format.html { redirect_to @congressmember, notice: 'Congressmember was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @congressmember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /congressmembers/1
  # DELETE /congressmembers/1.json
  def destroy
    @congressmember.destroy
    respond_to do |format|
      format.html { redirect_to congressmembers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_congressmember
      @congressmember = Congressmember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def congressmember_params
      params.require(:congressmember).permit(:first_name, :last_name, :party, :state)
    end
end
