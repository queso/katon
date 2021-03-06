common = require '../common'
render = require '../../render'
config = require '../../config'

module.exports =

  path: config.resolverPath

  create: ->
    content = render 'resolver.eco', config
    common.create @path, content

  remove: ->
    common.remove @path
