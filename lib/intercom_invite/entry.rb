# frozen_string_literal: true

module IntercomInvite
  # Individual Customer
  # Params:
  # - hash: keys latitude, longitude, base_coordinates
  class Entry < OpenStruct
    include CalculationsMethods

    def latitude_radian
      degree_to_radian(latitude)
    end

    def longitude_radian
      degree_to_radian(longitude)
    end
  end
end
