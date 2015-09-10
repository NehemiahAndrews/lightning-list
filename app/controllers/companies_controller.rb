class CompaniesController < ApplicationController
  def index
    api_url = 'https://api.import.io/store/data/'
    api_guid = ENV["import_io_api_guid"]
    query_string = '/_query?input/zip='
    zip = '48386'
    user_string = '&_user='
    user_id = ENV["import_io_user_id"]
    api_string = '&_apikey='
    api_key = ENV["import_io_api_key"]

    rest_string = api_url+api_guid+query_string+zip+user_string+user_id+api_string+api_key
    @company = Company.all
    json_string = RestClient.get rest_string

    @parsed = JSON.parse(json_string)
  end  

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)
    if @company.valid?
      redirect_to root_path
    else
      render :new, :status => :unprocessable_entity
    end 
  end

  private

  def company_params
      params.required(:company).permit(:name,:phone_number,:contact_name,:address,:city,:state,:zip)
  end
end
  
