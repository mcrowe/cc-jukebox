def random_pitch
  %w(A B C D E F G).sample
end

def random_beats
  [1, 2, 3, 4].sample
end

def random_length
  5 + rand(30)
end

def random_notes
  (0..random_length).to_a.map {
    "#{random_pitch}*#{random_beats}"
  }.join(' ')
end

def random_title
  Faker::Commerce.product_name
end

# Remove all existing songs.
Song.destroy_all

# Create 100 fake songs.
100.times do |i|
  Song.create!(title: random_title, notes: random_notes)
end