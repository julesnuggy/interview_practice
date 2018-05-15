
def get_max_profit(array)
  best_buy = 0
  best_sell = 0
  best_profit = -Float::INFINITY

  array.each.with_index { |el, idx|
    if idx < array.length - 1
      start = idx + 1
      length = array.length - idx - 1
      max_test = array.slice(start, length)
      curr_max_sell = max_test.max
      curr_max_profit = curr_max_sell - el

      if best_profit <= curr_max_profit
          best_profit = curr_max_profit
          best_buy = el
          best_sell = curr_max_sell
      end
    end
    }
    p result = "Buy at #{best_buy} and sell at #{best_sell} to get a return of #{best_profit}"
end
