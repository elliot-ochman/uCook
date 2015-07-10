class ReceptsController < ApplicationController
  before_action :authenticate_user!
  impressionist actions: [:show]

  def index
    @recepts = Recept.all
  end

  def show
    @recept = Recept.find(params[:id])
  end

  def new
    @recept = Recept.new
  end

  def edit
    @recept = Recept.find(params[:id])
  end

  def update
    @recept = Recept.find(params[:id])
    if @recept.update_attributes(recept_params)
      redirect_to recepts_path, notice: "Uppdaterade recept: #{@recept.title}"
    else
      render :edit, notice: 'Något är galet'
    end
  end

  def create
    @recept = Recept.create(recept_params)

    if @recept.save
      redirect_to recepts_path, notice: 'Skapade nytt recept'
    else
      render :new, notice: 'Något är galet'
    end

  end

  def destroy
    @recept = Recept.find(params[:id])
    @recept.delete
    redirect_to recepts_path, notice: "Raderade recept: #{@recept.title} "
  end

  private

  def recept_params
    params[:recept].permit(:title, :description)
  end
end
