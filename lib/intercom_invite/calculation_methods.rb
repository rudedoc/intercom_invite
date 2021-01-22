# frozen_string_literal: true

require "bigdecimal"

module IntercomInvite
  # CalculationsMethods - instance methods for performing distance calculations
  module CalculationsMethods
    include Math

    RADIUS = 6371

    def distance(origin)
      origin_latitude_radian = degree_to_radian(origin[0])
      origin_longitude_radian = degree_to_radian(origin[1])
      delta_of_longitude = longitude_radian - origin_longitude_radian
      central_angle = arccos((sin(latitude_radian) * sin(origin_latitude_radian)) +
                             (cos(latitude_radian) * cos(origin_latitude_radian) * cos(delta_of_longitude)))
      central_angle * RADIUS
    end

    def arccos(val)
      atan2(sqrt(1.0 - val * val), val)
    end

    def degree_to_radian(deg)
      BigDecimal(deg) * PI / 180
    end
  end
end
