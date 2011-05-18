require 'rails/generators'
require 'rails/generators/migration'

module RailsForum

  class RailsForumGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
    namespace "rails_forum"

   def self.next_migration_number(dirname)
     if ActiveRecord::Base.timestamped_migrations
       Time.now.utc.strftime("%Y%m%d%H%M%S")
     else
       "%.3d" % (current_migration_number(dirname) + 1)
     end
   end

    def create_category_database
      migration_template "category_table.rb", "db/migrate/category.rb"
    end

    def create_topic_database
      migration_template "topic_table.rb", "db/migrate/topic.rb"
    end

  end

end

