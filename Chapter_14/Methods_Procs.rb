def do_self_importantly some_proc
    puts "Everybody just HOLD ON! I'm doing something..."
    some_proc.call
    puts "OK everyone, I'm done. As you were."
end

say_hello = Proc.new do 
    puts 'hello'
end

say_goodbye = Proc.new do
    puts 'Goodbye.'
end

do_self_importantly say_hello
do_self_importantly say_goodbye

puts

def maybe_do a_proc
    if rand(2) == 0
        a_proc.call
    end
end

def twice_do a_proc
    a_proc.call
    a_proc.call 
end

wink = Proc.new do 
    puts '<wink>'
end

glance = Proc.new do
    puts '<glance>'
end

maybe_do wink
maybe_do wink
maybe_do glance
maybe_do glance
twice_do wink
twice_do glance
