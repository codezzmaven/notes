class Bundle < ActiveRecord::Base
  #Relationship
  belongs_to :user
  has_many :note_bundles
  has_many :notes, through: :note_bundles
  has_many :permissions, as: :entity
  #Callbacks
  after_create :give_permission_to_creator
  #Validations
  #validates :notes, presence: true

  def crate_bundle(user, note_ids)
  end
  
  private
  def give_permission_to_creator
    self.permissions.create(user: self.user, level: 2)
  end
end
