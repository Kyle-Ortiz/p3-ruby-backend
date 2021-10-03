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

  patch '/customers/:id' do
    customer = Customer.find(params[:id])
    customer.update_attributes(full_name: params[:full_name], email: params[:email], phone_number: params[:phone_number])
  end

  get '/orders' do
    orders = Order.all
    orders.to_json
  end

  post '/orders' do
    order = Order.create(
      style_number: params[:style_number],
      color: params[:color],
      size: params[:size],
      print_color: params[:print_color],
      print_location: params[:print_location],
      due_date: params[:due_date],
      customer_id: params[:customer_id],
      order_status: params[:order_status],
    )
  end

  delete '/orders/:id' do
    order = Order.find(params[:id])
    order.destroy
    order.to_json
  end

    #invoice CRUD
      get '/invoices' do
      invoices = Invoice.all
      invoices.to_json
      end
    
      post '/invoice' do
      invoice = Invoice.create(
          price: params[:price],
          quantity: params[:quantity],
          payment_status: params[:payment_status],
          due_by: params[:due_by], 
          order_id: params[:order_id]
        )
      invoice.to_json
      end

end
