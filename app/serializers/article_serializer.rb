class ArticleSerializer < ActiveModelSerializer::Base
  attributes :id, :title, :text, :created_at
end
