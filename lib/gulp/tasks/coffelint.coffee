coffeelint = require "gulp-coffeelint"

gulp.task "coffeelint", (callback) ->
    gulp.src [ "webapps/**/*.coffee", "lib/**/*.coffee", "!webapps/*/node_modules/**" ]
    .pipe coffeelint("./coffeelint.json")
    .pipe coffeelint.reporter()
    .pipe coffeelint.reporter('fail')
    .on "error", (error) ->
        callback error
