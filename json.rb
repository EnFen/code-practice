#items = [{ customer: "John", item: "Soup", cost: 8.50}, {customer: "Sarah", item: "Pasta", cost: 12}, {customer: "John", item: "Coke", cost: 2.50}]
require 'json'

#File.write('items.json', JSON.dump(items))

items = JSON.parse(File.read('items.json'), :symbolize_names => true ) # the second argument converts string keys in json (default) to symbols
#puts items

puts "Enter a customer's name"
name = gets.chomp

total = 0.00
for order in items
    if order[:customer] == name
        total += order[:cost]
    end
end

puts "#{name} owes $#{'%.2f' % total}"