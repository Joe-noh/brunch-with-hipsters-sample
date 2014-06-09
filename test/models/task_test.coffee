TaskModel = require 'models/task'

describe 'TaskModel', ->
    beforeEach ->
        @model = new TaskModel()

    it 'should exist', ->
        expect(@model).to.be.ok
