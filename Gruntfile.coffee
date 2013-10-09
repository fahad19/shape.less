module.exports = (grunt) ->

  grunt.initConfig

    pkg: grunt.file.readJSON 'package.json'

    less:
      shape:
        files:
          'dist/shapes.css': 'less/dist.less'

    watch:
      shape:
        files: ['less/**/*.less']
        tasks: ['build']

    grunt.loadNpmTasks 'grunt-contrib-less'
    grunt.loadNpmTasks 'grunt-contrib-watch'

    grunt.registerTask 'build', ['less:shape']
    grunt.registerTask 'default', 'build'
