# frozen_string_literal: true

def board
  $ar = (1..9).to_a
  puts "\n #{ar[0]} | #{ar[1]} | #{ar[2]} \n---+---+--- \n #{ar[3]} | #{ar[4]} | #{ar[5]} \n---+---+--- \n #{ar[6]} | #{ar[7]} | #{ar[8]}\n"
end
