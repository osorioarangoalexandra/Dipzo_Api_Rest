class Api::V1::CompetencesController < ApplicationController
    before_action :find_competence, only: [:show, :update, :destroy]


    def index 
        @competences = Competence.all
        render json: @competences
    end

    def show       
        render json: @competence
    end

    def create
        @competence =  Competence.new(competence_params)
        if @competence.save
            render json: @competence
        else
            render json: {error: 'No fue creada la competencia'}, status: 400
        end
    end
            
    def update
        
        if @competence
            @competence.update(competence_params)
            render json: {message:'Competencia actualizado exitosamente.'}, status: 200
        else
            render json: {error: 'No fue posible actualizar la competencia'}, status: 400
        end
    end

    def destroy
        
        if @competence
            @competence.destroy
            render json: {message: 'La Competencia fue eliminado'}, status: 200
        else
            render json: {error: 'No fue posible eliminar la competencia'}, status: 400
        end
    end

    private

    def competence_params
        params.require(:competence).permit(:art, :movie, :music, :user_id)

    end

    def find_competence
        @competence = Competence.find(params[:id])
    end


end
