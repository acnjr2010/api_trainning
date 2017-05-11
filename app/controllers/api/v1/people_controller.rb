class Api::V1::PeopleController < ApplicationController
  before_action :set_api_v1_person, only: [:show, :edit, :update, :destroy]

  def index
    @api_v1_people = Person.all
    render json: @api_v1_people
  end

  def show
    render json: @api_v1_people
  end

  def new
    @api_v1_person = Api::V1::Person.new
  end

  def edit
  end

  def create
    @api_v1_person = Person.new(api_v1_person_params)

    if @api_v1_person.save
      render json: @api_v1_person
    else
      render json: @api_v1_person.errors
    end
  end

  def update
    if @api_v1_person.update(api_v1_person_params)
      render json: @api_v1_person
    else
      render json: @api_v1_person.errors
    end
  end

  def destroy
    @api_v1_person.destroy
    render json: {message: 'Pessoa deletada com sucesso'}
  end

  private
    def set_api_v1_person
      @api_v1_person = Person.find(params[:id])
    end

    def api_v1_person_params
      params.require(:person).permit(:name, :local, :hability, :local, :obs)
    end
end
