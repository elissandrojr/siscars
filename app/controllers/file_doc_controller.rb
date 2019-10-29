class FileDocController < ApplicationController
  def new
    @carro = Carro.find(params[:carro_id])
  end

  def create
    @carro = Carro.find(params[:carro_id])
    @carro.files.attach(params[:carro][:files])
    redirect_to carro_path(@carro)
  end

  def destroy
    @carro = Carro.find(params[:carro_id])
    @carro.files.find(params[:id]).purge
    redirect_to carro_path(@carro)
  end
end
