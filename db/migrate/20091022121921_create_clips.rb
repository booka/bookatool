class CreateClips < ActiveRecord::Migration
  def self.up
    create_table :clips do |t|
      t.string :title
      t.string :description
      t.text :body
      t.string :media_file_name
      t.string :media_content_type
      t.integer :media_file_size
      t.datetime :media_updated_at

      t.timestamps
    end

    create_index :clips, :title
  end

  def self.down
    drop_table :clips
  end
end
