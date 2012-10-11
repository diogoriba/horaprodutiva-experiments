class Project < ActiveRecord::Base
  attr_accessible :description, :name, :tag_tokens
  has_and_belongs_to_many :tags
  attr_reader :tag_tokens

  def tag_tokens=(ids)
  	self.tags = []
  	ids.split(",").each { |tag_name| 
  		self.tags.push(Tag.find_or_create_by_name(tag_name))
  	}
  end
end
