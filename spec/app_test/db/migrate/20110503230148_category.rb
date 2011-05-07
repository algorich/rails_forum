class Category < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string  :name
      t.string  :label
      t.text  :value
      t.string  :type
      t.integer  :position
    end
  end

  def self.down
    drop_table :categories
  end
end

