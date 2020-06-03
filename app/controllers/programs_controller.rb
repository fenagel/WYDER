class ProgramsController < ApplicationController
  before_action :set_program, only: [:show, :edit, :update, :destroy]

  def index
    @programs = Program.all

    if params[:name].present?
      @programs = @programs.where(name: params[:name])
    end

    if params[:degree].present?
      @programs = @programs.where(degree: params[:degree])
    end

    if params[:location].present?
            sql_query = " \
        universities.location @@ :query \
      "
      @programs = @programs.joins(:university).where(sql_query, query: "%#{params[:location]}%")
    end
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_program
    @program = Program.find(params[:id])
  end
end
