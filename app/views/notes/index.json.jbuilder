json.array!(@notes) do |note|
  json.extract! note, :id, :titel, :description
  json.url note_url(note, format: :json)
end
