imagemin = require "gulp-imagemin"

SRC = "app/public/img/**/*"
DEST = "public/img/"

gulp.task "images", ->
    gulp.src SRC
    .pipe changed(DEST)
    .pipe imagemin {
        optimizationLevel : 5
        progressive : true
        interlaced : true
    }
    .pipe gulp.dest(DEST)
