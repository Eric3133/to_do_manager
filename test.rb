require_relative "task"
require_relative "repository"
require_relative "controller"
require_relative "view"
require_relative "router"



repository = Repository.new
view = View.new
controller = Controller.new(view, repository)


# controller.add_task
# controller.add_task

# p repository
# controller.list_tasks
# controller.mark_as_completed
# controller.list_tasks

router = Router.new(controller)
router.run

# repository  --- database
# view -- html/inform
#controller
#router --- pages

# create task class (model)
# 2 store "title" and "completed" inside
# 3 create repository - holds instance of task model
# 4 indentify user actions (add list etc)
# 5 inplemented controller for these actions
# 6 create view to do puts and gets
#7 create router to send user to where they want to go
