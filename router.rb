class Router

  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts "what would you like to do?"
      puts "1 - add a task"
      puts "2 - List all tasks"
      puts "3 - Mask as completed"
      choice = gets.chomp.to_i

      if choice == 1
        @controller.add_task
      elsif choice == 2
        @controller.list_tasks
      elsif choice == 3
        @controller.mark_as_completed
      else
        puts "somethibg is wrong"
      end
    end
  end
end
