require 'standalone_migrations'
StandaloneMigrations::Tasks.load_tasks

require_relative "config/application.rb"

task default: %[test]

task :test do
  # TODO:
end

task :import_data do
  data_manager = DataManager.new
  data_manager.import_csv!
end
