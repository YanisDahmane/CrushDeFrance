class Post < ApplicationRecord
  belongs_to :city
  belongs_to :user
  validates :content, presence: true

  STATUS = {
    'created' => 'Créé',
    'published' => 'Publié',
    'declined' => 'Refusé',
  }

  def status_color_class
    case status
    when "created"
      'bg-blue-200' # Choisissez la classe de couleur appropriée pour le statut 'created'
    when "published"
      'bg-green-200' # Choisissez la classe de couleur appropriée pour le statut 'published'
    when "declined"
      'bg-red-200' # Choisissez la classe de couleur appropriée pour le statut 'declined'
    else
      'bg-gray-200' # Couleur par défaut pour les statuts non définis
    end
  end
end
