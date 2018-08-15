class V1::CapsulasController < ApplicationController

  def show
   capsulas = Capsula.select("id, name").where(tipo_id: params[:id])
   render json: capsulas 
  end
  
end
