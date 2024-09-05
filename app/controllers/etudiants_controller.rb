class EtudiantsController < ApplicationController
    before_action :set_etudiant, only: [:show, :edit, :update, :destroy]
  
    def index
      @etudiants = Etudiant.all
    end
  
    def show
    end
  
    def new
      @etudiant = Etudiant.new
    end
  
    def create
      @etudiant = Etudiant.new(etudiant_params)
      if @etudiant.save
        redirect_to @etudiant, notice: 'Étudiant créé avec succès.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @etudiant.update(etudiant_params)
        redirect_to @etudiant, notice: 'Étudiant mis à jour avec succès.'
      else
        render :edit
      end
    end
  
    def destroy
      @etudiant.destroy
      redirect_to etudiants_url, notice: 'Étudiant supprimé avec succès.'
    end
  
    private
  
    def set_etudiant
      @etudiant = Etudiant.find(params[:id])
    end
  
    def etudiant_params
      params.require(:etudiant).permit(:nom, :prenom, :email, :date_naissance)
    end
  end
  