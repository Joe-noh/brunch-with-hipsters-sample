class MainRouter extends Backbone.Router
    routes:
        '': 'index'

    index: ->
        TaskView = require 'views/task'
        index = new TaskView()

main = new MainRouter()
module.exports = main
