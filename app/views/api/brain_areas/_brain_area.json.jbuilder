json.id brain_area.id
json.name brain_area.name
json.description brain_area.description

json.articles do
  json.array! brain_area.articles, partial: "api/articles/article", as: :article
end

json.diseases do
  json.array! brain_area.diseases, partial: "api/diseases/disease", as: :disease
end

json.primary_connections brain_area.primary_brain_connections
json.secondary_connections brain_area.secondary_brain_connections