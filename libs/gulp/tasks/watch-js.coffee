gulp.task 'watch:js', ->
    # do not use path starting with './' when you also use file globs. Does not work correctly
    gulp.watch [ 'app/public/js/**/*', 'app/public/js', 'app/public/js/**' ], [ 'copy:js' ]
