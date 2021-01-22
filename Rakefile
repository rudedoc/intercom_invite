# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: %i[spec rubocop]

desc "run the program"
task :run do
  input_file_path = "customers.txt"
  data_import = IntercomInvite::DataImporter.new(input_file_path)
  base_coordinates = ["53.339428", "-6.257664"]
  collection = IntercomInvite::Collection.new(data_import.entries, base_coordinates)
  filtered_entries = collection.entries_within_distance_ordered_by(100, :user_id)
  output_file_path = "output.txt"
  file_renderer = IntercomInvite::FileRenderer.new(filtered_entries, output_file_path)
  file_renderer.render
end
