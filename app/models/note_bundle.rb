class NoteBundle < ActiveRecord::Base
  belongs_to :bundle
  belongs_to :note
end
