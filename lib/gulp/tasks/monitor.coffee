nodemon = require "gulp-nodemon"

gulp.task "monitor", ->
    nodemon {
        script : "./"
        ext : "coffee js json"
        verbose : false
        watch : [
            "webapps/**/"
            "./lib/"
        ]
        ignore : [
            "webapps/*/public/"
            "webapps/*/tests/"
            "webapps/*/node_modules/"
            "./lib/gulp/"
        ]
    }
