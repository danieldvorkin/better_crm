class InventoryItemsController < ApplicationController
  before_action :set_inventory_item, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /inventory_items or /inventory_items.json
  def index
    @inventory_items = params[:account_id] ? InventoryItem.where(account_id: params[:account_id]) : InventoryItem.all
  end

  # GET /inventory_items/1 or /inventory_items/1.json
  def show
  end

  # GET /inventory_items/new
  def new
    @inventory_item = InventoryItem.new
  end

  # GET /inventory_items/1/edit
  def edit
  end

  # POST /inventory_items or /inventory_items.json
  def create
    @inventory_item = InventoryItem.new(inventory_item_params)

    respond_to do |format|
      if @inventory_item.save
        format.html { redirect_to inventory_item_url(@inventory_item), notice: "Inventory item was successfully created." }
        format.json { render :show, status: :created, location: @inventory_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inventory_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventory_items/1 or /inventory_items/1.json
  def update
    respond_to do |format|
      if @inventory_item.update(inventory_item_params)
        format.html { redirect_to inventory_item_url(@inventory_item), notice: "Inventory item was successfully updated." }
        format.json { render :show, status: :ok, location: @inventory_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inventory_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventory_items/1 or /inventory_items/1.json
  def destroy
    @inventory_item.destroy

    respond_to do |format|
      format.html { redirect_to inventory_items_url, notice: "Inventory item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_item
      @inventory_item = InventoryItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inventory_item_params
      params.require(:inventory_item).permit(:name, :description, :stock, :account_id, :active, :price, :category, :product_type)
    end
end
