class CreateProperties < ActiveRecord::Migration

  def self.up
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

    add_index :properties, :id

    load(Rails.root.join('db', 'seeds', 'properties.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Properties"})

    Page.delete_all({:link_url => "/properties"})

    drop_table :properties
  end

end
