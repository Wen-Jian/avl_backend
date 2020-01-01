module Resturant::V1::Api::BookingApi
  class APIv1 < Grape::API
    resource :resturants do
      group do
        get '/list' do
          wee_date = Date.today.strftime('%u')
          shops = Shop.includes(:operation_times).select {|s| s.is_opening?}
          {shops: shops.map{|s| s.name}}
        end

        get '/:name/operation_times' do
          wee_date = Date.today.strftime('%u')
          shops = Shop.includes(:operation_times).where(
            operation_times: {week_date: wee_date}
          )
          response = []
          shops.each do |shop|
            operation_times = []
            shop.operation_times.each do |ot|
              operation_times
            end
            {
              shop: shop.name,
              operation_time: [
                
              ]
            }
          end
        end
      end
    end
  end
end
