module HasArticleValidations
  extend ActiveSupport::Concern

  included do
    validates :text, presence: true
  end

  class_methods do
    def method_name
      puts 'Motherfuckers'
    end
  end
end
