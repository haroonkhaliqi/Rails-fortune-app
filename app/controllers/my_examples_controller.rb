class MyExamplesController < ApplicationController
  def fortune_method
    fortunes = ["Wealth awaits you very soon!", "This summers success will be big for your dream!", "You will marry your lover!"]
    num = rand(0...fortunes.length)
    ft = fortunes[num]
    render json: { message: ft }
  end

  def lottery_method
    num = []
    6.times do
      n = rand(0...99)
      num << n
    end
    win_lottery = "#{num[0]} #{num[1]} #{num[2]} #{num[3]} #{num[4]} #{num[5]}"
    render json: { message: win_lottery }
  end

  def visit_method
    visit = 2
    visits = "You have visited this site #{visit} times!"
    render json: { message: visits}
  end
end
