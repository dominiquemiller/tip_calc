class Calculate
  attr_accessor :bill, :percent, :people
  def initialize(bill, percent, people)
     @bill = bill
     @percent = percent
     @people = people
  end

end


def start
  puts "How much is your bill?"
    bill = gets.chomp.to_f

  puts "What percent tip would you like?"
  answer = gets.chomp.to_f
    percent = answer / 100

  puts "How many people are paying?"
      people = gets.chomp.to_i

  @calc = Calculate.new(bill, percent, people)
end

def tip
  @calc.bill * @calc.percent
end

def total_bill
  @calc.bill + tip
end

def split
  total_bill / @calc.people
end

def output
  puts "Thank you for dining at Wyncafe!"
  puts "********************************"
  puts "You bill is      $#{@calc.bill}"
  puts "The tip is       $#{tip.round(2)}"
  puts "The final total: $#{total_bill}"
  puts "Split total each $#{split.round(2)}"
  puts "********************************"
  puts "Thank you, have a nice day!"
end

start

output
