#Начальный Выбор
print "Привет! "
loop do
  loop do
    puts "Что хотите сделать:\r\nВведите 'r' - для для того чтобы получить массив рандомных чисел\r\nВведите 'i' для ввода с чисел с клавиатуры\r\nВведите 'exit' для выхода"
    usr_choice1 = gets.chomp
    case usr_choice1
    when "i"
      load "input.rb"
      break
    when "r"
      load "random.rb"
      break
    when "exit"
      puts "До скорого!"
      exit
    else
      puts "Неправильный ввод"
    end
  end
#Выбор дальнейших действий
  puts "Что хотите сделать дальше:\r\nВведите 'r' - для для того чтобы начать заново\r\nНажмите клавишу 'enter' для выхода..."
  usr_choice2 = gets.chomp.downcase

  case usr_choice2
  when "r"

  else
    exit
  end
end
