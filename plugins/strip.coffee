module.exports = (warlock) ->
  warlock.flow 'code-to-strip',
    source: [ '<%= paths.source %>/**/*' ]
    dest: '<%= paths.build %>'
    tasks: [ 'webapp-build' ]

    depends: [ 'flow::karma-single-run' ]

  .add(50, 'strip-code', () ->
    throw new Error 'strip-code not yet implemented'
  )