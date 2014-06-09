TasksCollection = require 'collections/tasks'

describe 'TasksCollection', ->
    beforeEach ->
        @collection = new TasksCollection()

    it 'should exist', ->
        expect(@collection).to.be.ok
