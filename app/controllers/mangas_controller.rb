class MangasController < ApplicationController
  before_action :set_manga, only: %i[ show edit update destroy ]

  # GET /mangas or /mangas.json
  def index
    @mangas = Manga.all
    @mangas = Manga.order(:title)
  end

  # GET /mangas/1 or /mangas/1.json
  def show
    @owned_vols = @manga.volumes.collect { |v| v.number }
    @published_array = (1..@manga.pub_vols).to_a
    @missing_volumes = @published_array - @owned_vols
    
  end

  # GET /mangas/new
  def new
    @manga = Manga.new
    italy_status = ["ongoing", "paused"]
  end

  # GET /mangas/1/edit
  def edit
  end

  # POST /mangas or /mangas.json
  def create
    @manga = Manga.new(manga_params)

    respond_to do |format|
      if @manga.save
        format.html { redirect_to manga_url(@manga), notice: "Manga was successfully created." }
        format.json { render :show, status: :created, location: @manga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mangas/1 or /mangas/1.json
  def update
    respond_to do |format|
      if @manga.update(manga_params)
        format.html { redirect_to manga_url(@manga), notice: "Manga was successfully updated." }
        format.json { render :show, status: :ok, location: @manga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @manga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mangas/1 or /mangas/1.json
  def destroy
    @manga.destroy

    respond_to do |format|
      format.html { redirect_to mangas_url, notice: "Manga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manga
      @manga = Manga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manga_params
      params.require(:manga).permit(:title, :pub_vols, :own_vols, :mis_vols, :status, :collection)
    end
end
