require "bigdecimal"
require 'bigdecimal/util'
#Запрос параметров массива с клавиатуры
class Input2
  def self.out_a
    @inp_a
  end
  def self.out_b
    @inp_b
  end
  def self.out_c
    @inp_c
  end
  def self.out_round
    @inp_d
  end
  print "Введите количество цифр: "
  @inp_a = gets.to_i
  if @inp_a > 0
  else
    loop do
      print "Число должно быть больше нуля !!! Повторите ввод: "
      @inp_a = gets.to_i
      if @inp_a > 0
        break
      end
    end
  end
  if @inp_a > 100000000
    loop do
      print "Массив слишком большой !!! Ввдедите меньшее число: "
      @inp_a = gets.to_i
      if @inp_a < 100000000
        break
      end
    end
    end
  print "Введите минимальное число: "
  @inp_b = gets.to_f
  print "Введите максимальное число: "
  @inp_c = gets.to_f
  if @inp_c > @inp_b
  else
    loop do
      print "Максимальное число не может быть меньше минимального!!! Повторите ввод: "
      @inp_c = gets.to_f
      if @inp_c>@inp_b
        break
      end
    end
  end
  print "Введите количество знаков после запятой: "
  @inp_d = gets.to_i
  if @inp_d >= 0
  else
    loop do
      print "Число должно быть больше или равно нулю !!! Повторите ввод: "
      @inp_d = gets.to_i
      if @inp_d >= 0
        break
      end
    end
  end

end
#Алгоритм рандомных чисел
class Random
  def self.out_rz
    @randres
  end
  a = Input2.out_a
  b = Input2.out_b
  c = Input2.out_c
  d = Input2.out_round
  random_numbers = Array.new(a) { rand(b...c) }
  @randres = random_numbers.map {|x| x.round(d)}
  p @randres
  def init
    $array = []
  end
  $array = Random.out_rz
end
loop do
  puts "Что хотите сделать:\r\nВведите 'bs' - для того чтобы сортировать массив способом пузырьковой сортировки\r\nВведите 's' - для того чтобы сортировать массив\r\nВведите 'avg' - для того чтобы найти арифметическое среднее\r\nВведите 'next' для перехода к следующему шагу\r\nВведите 'exit' для выхода"
  usr_choice1 = gets.chomp
  case usr_choice1
  when "bs"
    load "bublesort.rb"
    break
  when "s"
    sort = Random.out_rz.sort { |a, b| a <=> b }
    p sort
  when "avg"
    avg = Random.out_rz.inject(0.0) { |sum, el| sum + el } / Random.out_rz.size
    p avg
  when "exit"
    exit
  when "next"
    break
  else
    puts "Неправильный ввод"
  end
end
