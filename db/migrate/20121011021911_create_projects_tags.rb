class CreateProjectsTags < ActiveRecord::Migration
  def up
  	create_table :projects_tags, :id => false do |t|
  		t.integer :tag_id
  		t.integer :project_id
  	end
  end

  def down
  	drop_table :projects_tags
  end
end
