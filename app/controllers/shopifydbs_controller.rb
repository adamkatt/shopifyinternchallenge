class ShopifydbsController < ApplicationController
  before_action :set_shopifydb, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /shopifydbs
  # GET /shopifydbs.json
  def index
    @shopifydbs = Shopifydb.all
  end

  # GET /shopifydbs/1
  # GET /shopifydbs/1.json
  def show
  end

  # GET /shopifydbs/new
  def new
    #@shopifydb = Shopifydb.new
    @shopifydb = current_user.shopifydbs.build
  end

  # GET /shopifydbs/1/edit
  def edit
  end

  # POST /shopifydbs
  # POST /shopifydbs.json
  def create
    #@shopifydb = Shopifydb.new(shopifydb_params)
    @shopifydb = current_user.shopifydbs.build(shopifydb_params)
    respond_to do |format|
      if @shopifydb.save
        format.html { redirect_to @shopifydb, notice: 'Shopifydb was successfully created.' }
        format.json { render :show, status: :created, location: @shopifydb }
      else
        format.html { render :new }
        format.json { render json: @shopifydb.errors, status: :unprocessable_entity }
      end
    end
  end

  def search
    @shopifydbs = Shopifydb.where("tags LIKE ?","%"+ params[:q] +"%")
  end
  # PATCH/PUT /shopifydbs/1
  # PATCH/PUT /shopifydbs/1.json
  def update
    respond_to do |format|
      if @shopifydb.update(shopifydb_params)
        format.html { redirect_to @shopifydb, notice: 'Shopifydb was successfully updated.' }
        format.json { render :show, status: :ok, location: @shopifydb }
      else
        format.html { render :edit }
        format.json { render json: @shopifydb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shopifydbs/1
  # DELETE /shopifydbs/1.json
  def destroy
    @shopifydb.destroy
    respond_to do |format|
      format.html { redirect_to shopifydbs_url, notice: 'Shopifydb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def correct_user
    @shopifydb = current_user.shopifydbs.find_by(id: params[:id])
    redirect_to shopifydbs_path, notice: "wrong auth" if @shopifydb.nil? 
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shopifydb
      @shopifydb = Shopifydb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shopifydb_params
      params.require(:shopifydb).permit(:treetype, :price, :image, :location, :inventory, :user_id, :tags)
    end
end
