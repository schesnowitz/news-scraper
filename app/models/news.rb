class News < ApplicationRecord
  validates :title, uniqueness: true
  paginates_per 5
  def self.search(term)
    if term
      where('title ILIKE ? OR source ILIKE ?', "%#{term}%", "%#{term}%").order('id DESC')
    else
      order('id DESC') 
    end
  end
end
