class Permission < ActiveRecord::Base
  belongs_to :user
  belongs_to :entity, polymorphic: true
  VALUES = {DENIED: 0, READ: 1, WRITE: 2}
end
