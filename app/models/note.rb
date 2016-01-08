class Note < ActiveRecord::Base
  #Relationships
  belongs_to :user
  has_many :permissions, as: :entity
  has_many :note_bundles
  has_many :bundles, through: :note_bundles
  #callbacks
  after_create :give_permission_to_creator
  #validations
  validates :titel, presence: true, length: { minimum: 1, maaximum: 100 }
  validates :description, presence: true, length: { minimum: 1, maximum: 10000 }
  
  def crud_permission(user)
    permission = self.permissions.where(user: user).first
    unless permission.nil?
      return true if permission.level = 2
    end
  end

  def read_permission(user)
    permission = self.permissions.where(user: user).first
    unless permission.nil?
      return true if permission.level >= 1
    end
  end

  def bundles_not_part_of(user)
    bundles_part_of = self.bundles
    user_bundles = user.bundles
    return user_bundles - bundles_part_of
  end

 
  private
  def give_permission_to_creator
    self.permissions.create(user: self.user, level: 2)
  end
end
