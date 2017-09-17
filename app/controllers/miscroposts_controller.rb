class MiscropostsController < ApplicationController
  before_action :set_miscropost, only: [:show, :edit, :update, :destroy]

  # GET /miscroposts
  # GET /miscroposts.json
  def index
    @miscroposts = Miscropost.all
  end

  # GET /miscroposts/1
  # GET /miscroposts/1.json
  def show
  end

  # GET /miscroposts/new
  def new
    @miscropost = Miscropost.new
  end

  # GET /miscroposts/1/edit
  def edit
  end

  # POST /miscroposts
  # POST /miscroposts.json
  def create
    @miscropost = Miscropost.new(miscropost_params)

    respond_to do |format|
      if @miscropost.save
        format.html { redirect_to @miscropost, notice: 'Miscropost was successfully created.' }
        format.json { render :show, status: :created, location: @miscropost }
      else
        format.html { render :new }
        format.json { render json: @miscropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miscroposts/1
  # PATCH/PUT /miscroposts/1.json
  def update
    respond_to do |format|
      if @miscropost.update(miscropost_params)
        format.html { redirect_to @miscropost, notice: 'Miscropost was successfully updated.' }
        format.json { render :show, status: :ok, location: @miscropost }
      else
        format.html { render :edit }
        format.json { render json: @miscropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miscroposts/1
  # DELETE /miscroposts/1.json
  def destroy
    @miscropost.destroy
    respond_to do |format|
      format.html { redirect_to miscroposts_url, notice: 'Miscropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miscropost
      @miscropost = Miscropost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miscropost_params
      params.require(:miscropost).permit(:context, :user_id)
    end
end
