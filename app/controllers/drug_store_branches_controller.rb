class DrugStoreBranchesController < ApplicationController
  before_action :set_drug_store_branch, only: [:show, :edit, :update, :destroy]

  # GET /drug_store_branches
  # GET /drug_store_branches.json
  def index
    @drug_store_branches = DrugStoreBranch.all
  end

  # GET /drug_store_branches/1
  # GET /drug_store_branches/1.json
  def show
  end

  # GET /drug_store_branches/new
  def new
    @drug_store_branch = DrugStoreBranch.new
  end

  # GET /drug_store_branches/1/edit
  def edit
  end

  # POST /drug_store_branches
  # POST /drug_store_branches.json
  def create
    @drug_store_branch = DrugStoreBranch.new(drug_store_branch_params)

    respond_to do |format|
      if @drug_store_branch.save
        format.html { redirect_to @drug_store_branch, notice: 'Drug store branch was successfully created.' }
        format.json { render :show, status: :created, location: @drug_store_branch }
      else
        format.html { render :new }
        format.json { render json: @drug_store_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drug_store_branches/1
  # PATCH/PUT /drug_store_branches/1.json
  def update
    respond_to do |format|
      if @drug_store_branch.update(drug_store_branch_params)
        format.html { redirect_to @drug_store_branch, notice: 'Drug store branch was successfully updated.' }
        format.json { render :show, status: :ok, location: @drug_store_branch }
      else
        format.html { render :edit }
        format.json { render json: @drug_store_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drug_store_branches/1
  # DELETE /drug_store_branches/1.json
  def destroy
    @drug_store_branch.destroy
    respond_to do |format|
      format.html { redirect_to drug_store_branches_url, notice: 'Drug store branch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drug_store_branch
      @drug_store_branch = DrugStoreBranch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drug_store_branch_params
      params.require(:drug_store_branch).permit(:name, :address, :latitude, :longitude)
    end
end
