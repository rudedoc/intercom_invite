# frozen_string_literal: true

require "json"

module IntercomInvite
  # Data Importer
  # Params:
  # - file_path: path to customers.txt file
  class DataImporter
    attr_reader :entries

    def initialize(file_path)
      raise "file not present" unless File.exist?(file_path)

      @entries = File.open(file_path).each_line.map { |line| JSON.parse(line) }
    end
  end
end
