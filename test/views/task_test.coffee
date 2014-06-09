TaskView = require 'views/task'

describe 'TaskView', ->
    beforeEach ->
        @view = new TaskView()

    it 'should exist', ->
        expect(@view).to.be.ok
