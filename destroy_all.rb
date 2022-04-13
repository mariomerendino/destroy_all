p_ids = %x(ps | awk '{print $1}')
p_ids = p_ids.split("\n")

current_process = %x( echo $$ )
current_process = current_process.split("\n")[0]

current_shell = ARGV[0]

p_ids.delete(current_process)
p_ids.delete(current_shell)
p_ids.delete("PID")


killed = system("kill -9 #{p_ids.join(' ')}")