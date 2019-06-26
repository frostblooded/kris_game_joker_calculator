puts "This program helps you calculate the chance of drawing a joker as the last (active) card on the first turn of Kris's Game(tm). It is assumed that all players get an equal amount of cards and the jokers are evenly split between all players."

# Player count
k = 4.0

# Deck count
p = 2.0

# Amount of sides that die has
z = 6.0

puts "Player count:"
k = gets.to_i

puts "Deck count:"
p = gets.to_i

puts "Amount of sides that die has (usually 6):"
z = gets.to_i

# Cards per deck
n = 52.0

# All cards
t = p * n

# Cards in each player
s = t / k

# Joker count
f = 2 * p

# Jokers in each player
q = f / k

good_res = 0.0
all_res = 0.0

(1..z).each do |i|
  (0..i-1).each do |j|
    current_el = [(q - j) / (s - i + 1), 0].max
    good_res += current_el
    all_res += 1
  end
end

# Multiply by the amount of players since the found res is only for if a ingle player finds a joker
res = k * good_res / all_res

puts "The chance to draw a joker as the last (active) card is #{res * 100}%"
puts "Press enter to exit..."
gets

