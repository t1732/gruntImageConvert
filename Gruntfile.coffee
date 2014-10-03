module.exports = (grunt) ->
  mozjpeg = require('imagemin-mozjpeg')

  grunt.initConfig
    imagemin:                          # Task
      dynamic:                         # Another target
        options:                       # Target options
          optimizationLevel: 3,        # 0-7
          use: [mozjpeg()]
        files: [
          expand: true,                      # Enable dynamic expansion
          cwd: 'input_image_files/',  # Src matches are relative to this path
          src: ['**/*.{png,jpg,gif}'],       # Actual patterns to match
          dest: 'output_image_files/'  # Destination path prefix
        ]

    image_resize:
      resize:
        options:
          width: grunt.option("width")
          height: grunt.option("height")
        files: [
          expand: true,
          cwd: 'input_image_files/',
          src: ['**/*.{png,jpg,gif}'],
          dest: 'output_image_files/'
        ]

  grunt.loadNpmTasks('grunt-contrib-imagemin')
  grunt.loadNpmTasks('grunt-image-resize');
  grunt.registerTask('default', ['imagemin'])
