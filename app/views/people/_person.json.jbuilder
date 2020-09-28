json.extract! person, :id, :title, :first_name, :last_name, :homonym, :note, :created_at, :updated_at
json.url person_url(person, format: :json)
