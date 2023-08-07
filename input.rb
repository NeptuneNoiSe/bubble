#Импортируем данные с клавиатуры
class Input
  def self.out
    @inp_a
  end
  print "Введите массив чисел через пробел\r\nНапример(1 2 3 4 5): "
  input = gets.chomp
  @inp_a = input.split(/ /).map{ |value| value.to_f }
end
def init
  $array = []
end

$array = Input.out
load "bublesort.rb"
