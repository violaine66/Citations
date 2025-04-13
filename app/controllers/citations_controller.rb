class CitationsController < ApplicationController
  def index
    @citations = Citation.all
  end

  def show
    @citation = Citation.find(params[:id])
  end

  def new
    @citation = Citation.new
  end

  def create
    @citation = Citation.new(citation_params)
    if @citation.save
      redirect_to @citation, notice: 'La citation a été crée avec succès.'
    else
      render :new
    end
  end

  def edit
    @citation = Citation.find(params[:id])
  end

  def update
    @citation = Citation.find(params[:id])
    if @citation.update(citation_params)
      redirect_to @citation, notice: 'La citation a été mise à jour avec succès.'
    else
      render :edit
    end
  end

  def destroy
    @citation = Citation.find(params[:id])
    @citation.destroy
    redirect_to citations_path, notice: 'La citation a été supprimée avec succès.'
  end

  private

  def citation_params
    params.require(:citation).permit(:auteur, :contenu, :categorie)
  end
end
