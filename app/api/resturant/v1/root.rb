module Resturant::V1
  class Root < Grape::API

    version 'v1'

    mount Resturant::V1::Api::BookingApi::APIv1
  end
end
