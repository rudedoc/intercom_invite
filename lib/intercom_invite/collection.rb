# frozen_string_literal: true

module IntercomInvite
  # Collection of entries
  # Params:
  # - data_import: object that responds to records
  # - base_latitude: latitude of point from which distances are calculated
  # - base_longitude: longitude of point from which distances are calculated
  class Collection
    attr_reader :entries, :base_coordinates

    def initialize(entries, base_coordinates)
      @base_coordinates = base_coordinates
      @entries = entries.map { |e| Entry.new(e) }
    end

    def entries_within_distance(kms)
      entries.select { |c| c.distance(base_coordinates) <= kms }
    end

    def entries_within_distance_ordered_by(kms, attr)
      entries_within_distance(kms).sort_by { |e| e.send(attr) }
    end
  end
end
