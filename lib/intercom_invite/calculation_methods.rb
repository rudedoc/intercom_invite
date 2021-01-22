# frozen_string_literal: true

require "bigdecimal"

module IntercomInvite
  # CalculationsMethods - instance methods for performing distance calculations
  module CalculationsMethods
    include Math

    RADIUS = 6371

    # rubocop:disable Metrics/AbcSize
    def distance(origin)
      origin_latitude_radian = degree_to_radian(origin[0])
      origin_longitude_radian = degree_to_radian(origin[1])
      central_angle = arccos((sin(latitude_radian) * sin(origin_latitude_radian)) +
                             (cos(latitude_radian) * cos(origin_latitude_radian) *
                             cos(longitude_radian - origin_longitude_radian)))
      central_angle * RADIUS
    end
    # rubocop:enable Metrics/AbcSize

    def arccos(val)
      atan2(sqrt(1.0 - val * val), val)
    end

    def degree_to_radian(deg)
      BigDecimal(deg) * PI / 180
    end
  end
end
