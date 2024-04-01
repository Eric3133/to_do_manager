require_relative "task"

class Controller

  def initialize(view,repository)
    @view = view
    @repository = repository
  end
  def add_task
    # 1 ask user for task
    title = @view.ask_user_for_title
    # 2 take user's input
    # 3 create instance if task from input
    task = Task.new(title)
    # 4 give task to the repository
    @repository.add(task)
  end

  def list_tasks
    # 1 ask repo for all  task
    tasks = @repository.all
    # 2 ask view to print task
    @view.list_tasks(tasks)
  end

  def mark_as_completed
    # 1 ask user for index of completed task
  index = @view.ask_for_task_index
    # 2 ask repo for task instance at index
    task = @repository.find(index)
    # 3 mark task instance as completed
    task.mark_as_completed
  end
end
