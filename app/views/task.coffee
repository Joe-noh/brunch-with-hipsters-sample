TaskModel      = require '../models/task'
TaskCollection = require '../collections/tasks'

module.exports = class TaskView extends Backbone.View
    model: new TaskModel()

    el: "#task_app"

    events: { "click button" : "addTask" }

    template: require "../views/templates/task"

    initialize: ->
        @collection = new TaskCollection
        @collection.bind "add", @render, @

    render: (task) ->
        $(@el).children('ul').append(@template task.toJSON())

    addTask: ->
        task = new TaskModel({ body: $("#new_task").val() })
        $("#new_task").val ""
        @collection.add task


