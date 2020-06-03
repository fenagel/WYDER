class ProgramsController < ApplicationController
  before_action :set_program, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @programs = Program.where(location: params[:query])
      @subjects = Subject.all
      @names = []
      @subjects.each do |s|
        @names << s.name
      end
      @no_duplicates = @names.uniq
    else
      @programs = Program.all
      @subjects = Subject.all
      @subjects = Subject.all
      @names = []
      @subjects.each do |s|
        @names << s.name
      end
      @no_duplicates = @names.uniq
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
