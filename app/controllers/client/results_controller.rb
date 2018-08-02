class Client::ResultsController < ApplicationController
  def index
    client_params = {
      search: params[:client_search]
    }
    response = Unirest.get("http://localhost:3000/api/results",
      parameters: client_params
    )
    @results = response.body
    render "index.html.erb"
  end  
end
