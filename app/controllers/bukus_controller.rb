class BukusController < ApplicationController
  before_action :set_buku, only: [:show, :edit, :update, :destroy]

  # GET /bukus
  # GET /bukus.json
  def index
    @bukus = Buku.all
  end

  # GET /bukus/1
  # GET /bukus/1.json
  def show
  end

  # GET /bukus/new
  def new
    @buku = Buku.new
  end

  # GET /bukus/1/edit
  def edit
  end

  # POST /bukus
  # POST /bukus.json
  def create
    @buku = Buku.new(buku_params)

    respond_to do |format|
      if @buku.save
        format.html { redirect_to @buku, notice: 'Buku was successfully created.' }
        format.json { render :show, status: :created, location: @buku }
      else
        format.html { render :new }
        format.json { render json: @buku.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bukus/1
  # PATCH/PUT /bukus/1.json
  def update
    respond_to do |format|
      if @buku.update(buku_params)
        format.html { redirect_to @buku, notice: 'Buku was successfully updated.' }
        format.json { render :show, status: :ok, location: @buku }
      else
        format.html { render :edit }
        format.json { render json: @buku.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bukus/1
  # DELETE /bukus/1.json
  def destroy
    @buku.destroy
    respond_to do |format|
      format.html { redirect_to bukus_url, notice: 'Buku was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buku
      @buku = Buku.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buku_params
      params.fetch(:buku, {})
    end
end
