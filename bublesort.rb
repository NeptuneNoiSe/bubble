#Сортируем данные
array = $array
class << array
  def bubble_sort(array)
    array_length = array.size
    return array if array_length <= 1
    loop do
      swapped = false
      (array_length-1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
        end
      end
      break if not swapped
    end
    array
  end
end
ares = array.bubble_sort(array)
result = ares.map {|x| x.to_s.gsub(/(\.)0+$/, '').downcase}
p result
loop do
  puts "Что хотите сделать:\r\nВведите 'avg' - для того чтобы найти арифметическое среднее\r\nВведите 'next' для перехода к следующему шагу\r\nВведите 'exit' для выхода"
  usr_choice1 = gets.chomp
  case usr_choice1
  when "avg"
    avg = ares.inject(0.0) { |sum, el| sum + el } / ares.size
    p avg
    break
  when "exit"
    exit
  when "next"
    break
  else
    puts "Неправильный ввод"
  end
end
