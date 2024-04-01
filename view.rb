class View
  def ask_user_for_title
    puts "what do you want to do?"
    gets.chomp
  end

  def list_tasks(tasks)
    if tasks.nil?
      puts "no tasks"
    else
      tasks.each_with_index do |task, index|
        x = task.completed? ? "X" : " "
        puts "#{index + 1} -#{x}- #{task.title}"
      end
    end
  end

  def ask_for_task_index
    puts "wahts the index"
    gets.chomp.to_i - 1
  end
end
