class Shop < ApplicationRecord
    has_many :operation_times

    def is_opening?
        week_date = Date.today.strftime('%u')
        operation_times = self.operation_times.where(week_date: week_date)
        operation_times.any? {|ot| ot.open_time.in_time_zone("Taipei")  < DateTime.now && ot.close_time.in_time_zone("Taipei") > DateTime.now }
    end

    def is_available?(week_date)
        operation_times = self.operation_times.where(week_date: week_date).present?
    end

end
