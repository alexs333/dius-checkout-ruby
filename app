#!/usr/bin/env ruby
# frozen_string_literal: true

Dir['./lib/**/*.rb'].each { |file| require file }

checkout = Checkout.new

loop do
  puts 'please scan a product or type done to finish'

  product_code = gets.chomp.to_sym

  case product_code
  when *Products::LIST.keys
    checkout.scan product_code
  when :done
    puts "The total: $#{checkout.total}"
    exit
  else
    puts 'invalid argument, please scan again'
  end
end
