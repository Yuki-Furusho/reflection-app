class Visibility < ActiveHash::Base
  include ActiveHash::Associations
  has_many :notes

  self.data = [
    { id: 1, name: '公開' },
    { id: 2, name: '非公開' }
  ]
end
