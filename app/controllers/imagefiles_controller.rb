class ImagefilesController < ApplicationController
  before_action :set_imagefile, only: %i[ show edit update destroy ]

  # GET /imagefiles or /imagefiles.json
  def index
    @imagefiles = Imagefile.all
  end

  # GET /imagefiles/1 or /imagefiles/1.json
  def show
  end

  # GET /imagefiles/new
  def new
    @imagefile = Imagefile.new
  end

  # GET /imagefiles/1/edit
  def edit
  end

  # POST /imagefiles or /imagefiles.json
  def create
    @imagefile = Imagefile.new(imagefile_params)

    respond_to do |format|
      if @imagefile.save
        format.html { redirect_to imagefile_url(@imagefile), notice: "Imagefile was successfully created." }
        format.json { render :show, status: :created, location: @imagefile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @imagefile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imagefiles/1 or /imagefiles/1.json
  def update
    respond_to do |format|
      if @imagefile.update(imagefile_params)
        format.html { redirect_to imagefile_url(@imagefile), notice: "Imagefile was successfully updated." }
        format.json { render :show, status: :ok, location: @imagefile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @imagefile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imagefiles/1 or /imagefiles/1.json
  def destroy
    @imagefile.destroy

    respond_to do |format|
      format.html { redirect_to imagefiles_url, notice: "Imagefile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagefile
      @imagefile = Imagefile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def imagefile_params
      params.require(:imagefile).permit(:title, :image)
    end
end
