module Resturant::V1::Api::BookingApi
  class APIv1 < Grape::API
    resource :resturants do
      group do
        get '/list' do
          wee_date = Date.today.strftime('%u')
          shops = Shop.includes(:operation_times).select {|s| s.is_opening?}
          {shops: shops.map{|s| s.name}}
        end

        get '/list/:date' do
          wee_date = params[:date].to_date.strftime('%u')
          shops = Shop.includes(:operation_times).select {|s| s.is_available?(wee_date)}
          {shops: shops.map{|s| s.name}}
        end
      end
    end
  end
end
