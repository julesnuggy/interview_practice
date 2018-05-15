require_relative '../lib/stock_profit.rb'

describe '#get_max_profit' do
  it 'should return buy at 1 and sell at 10' do
    arr = [7, 8, 4, 1, 5, 9, 10]
    result = get_max_profit(arr)
    expect(result).to eq("Buy at 1 and sell at 10 to get a return of 9")
  end

  it 'should return buy at 10 and sell at 100' do
    arr = [17, 11, 10, 100, 99, 89, 30, 2]
    result = get_max_profit(arr)
    expect(result).to eq("Buy at 10 and sell at 100 to get a return of 90")
  end

  it 'should return buy at 5 and sell at 66' do
    arr = [7, 8, 6, 67, 5, 66, 10]
    result = get_max_profit(arr)
    expect(result).to eq("Buy at 5 and sell at 66 to get a return of 61")
  end

  it 'should return buy at -1 and sell at -2' do
    arr = [-1, -3, -13, -34, -95]
    result = get_max_profit(arr)
    expect(result).to eq("Buy at -1 and sell at -3 to get a return of -2")
  end

  it 'should return buy at -1 and sell at -2' do
    arr = [-1, -3, -13, -34, -95, -110, -99, -23, -45, -765, -33, -99999, 1]
    result = get_max_profit(arr)
    expect(result).to eq("Buy at -99999 and sell at 1 to get a return of 100000")
  end
end
