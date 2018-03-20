require 'httparty'

# Exercise 1
toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)

list_of_wards = toronto_wards_json["objects"].map do |ward|
  ward["name"]
end

puts list_of_wards


# Exercise 2
toronto_candidates_response = HTTParty.get('https://represent.opennorth.ca/candidates/')
toronto_candidates_json = JSON.parse(toronto_candidates_response.body)

list_of_candidates = toronto_candidates_json["objects"].map do |candidate|
  candidate["name"]
end

puts list_of_candidates
