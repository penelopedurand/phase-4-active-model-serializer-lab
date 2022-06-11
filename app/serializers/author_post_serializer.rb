class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content

  has_many :tags
  def short_content
  "#{self.object.content[...40]}..."
  end

end
