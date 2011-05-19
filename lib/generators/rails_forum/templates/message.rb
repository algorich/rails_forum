class Message < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.text  :content
      t.references :topic
    end
  end

  def self.down
    drop_table :messages
  end
end

