class CocktailsController < ApplicationController
before_action :set_cocktail, only: [:show, :destroy]
  # GET /cocktail
  def index
    @cocktails = Cocktail.all
  end

  # GET /cocktail/1
  def show
    @dose = Dose.new
  end

  # GET /cocktail/new
  def new
    @cocktail = Cocktail.new
  end

  # GET /cocktail/1/edit
  def edit
  end

  # POST /cocktail
  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail, notice: 'Cocktail was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cocktail/1
  def update
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail, notice: 'Cocktail was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cocktail/1
  def destroy
    @cocktail.destroy
    redirect_to cocktails_url, notice: 'Cocktail was successfully destroyed.'
  end

  private
    # Use callbacks to shre common setup or constraints between actions.
  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

   # Only allow a trusted parameter "white list" through.
  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
