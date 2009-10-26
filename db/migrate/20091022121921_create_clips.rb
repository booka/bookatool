class CreateClips < ActiveRecord::Migration
  def self.up
    create_table :clips do |t|
      t.string :title
      t.string :description
      t.string :type
      t.text :body
      t.string :media_file_name
      t.string :media_content_type
      t.integer :media_file_size
      t.datetime :media_updated_at
      t.references :scope
      t.references :user

      t.timestamps
    end

    add_index :clips, :type
    add_index :clips, :title
    add_index :clips, :scope_id
  end

  def self.down
    drop_table :clips
  end
end
