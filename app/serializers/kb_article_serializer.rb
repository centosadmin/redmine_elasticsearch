class KbArticleSerializer < BaseSerializer
  attributes :project_id,
             :title, :summary, :content,
             :created_on, :updated_on,
             :tag, :category

  # has_many :attachments, serializer: AttachmentSerializer

  def _parent
    object.try(:project_id)
  end

  def tag
    object.tags.last.try(:name)
  end

  def category
    object.category.try(:title)
  end

  def created_on
    object.try(:created_at)
  end

  def updated_on
    object.try(:updated_at)
  end
end