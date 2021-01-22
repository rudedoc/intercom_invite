# frozen_string_literal: true

module IntercomInvite
  # Renders results to a file
  # Params:
  # - entries: array of entry objects
  # - file_path: where the output file is to be saved
  class FileRenderer
    attr_reader :entries, :file_path

    def initialize(entries, file_path)
      @entries = entries
      @file_path = file_path
    end

    def render
      File.delete(file_path) if File.exist?(file_path)

      file = File.open(file_path, "w")
      entries.each do |entry|
        file.puts "#{entry.user_id}, #{entry.name}"
      end
      file.close
    end
  end
end
