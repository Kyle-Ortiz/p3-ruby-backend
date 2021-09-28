class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/customers" do
    customers = Customer.all
    customers.to_json
  end

  post "/customers" do
    customer = Customer.create(
      full_name: params[:full_name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    customer.to_json
  end

  delete '/customers/:id' do
    customer = Customer.find(params[:id])
    customer.destroy
    customer.to_json
  end

  patch '/customers/id' do
    customer = Customer.find(params[:id])
    customer.update_attributes(full_name: params[:full_name], email: params[:email], phone_number: params[:phone_number])
  end

end
