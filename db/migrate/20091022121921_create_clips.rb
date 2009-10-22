class CreateClips < ActiveRecord::Migration
  def self.up
    create_table :clips do |t|
      t.string :title
      t.string :description
      t.string :type
      t.string :content
      t.text :body
      t.string :media_file_name
      t.string :media_content_type
      t.integer :media_file_size
      t.datetime :media_updated_at
      t.references :project
      t.references :user

      t.timestamps
    end

    add_index :clips, :title
  end

  def self.down
    drop_table :clips
    
    remove_index :clips, :column => :title
  end
end
