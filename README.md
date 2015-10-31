# Thumbnail ALL the videos!

Forked from [Stillmaker, by jlarusso](https://github.com/jlarusso/Stillmaker)

Uses [ffmpeg](http://www.ffmpeg.org/) and [streamio-ffmpeg](https://github.com/streamio/streamio-ffmpeg) to take a screenshot of a directory of video files.

### Intention
A GUI that allows the selection of a folder, in which this program will recursively check the directory and all its subdirectories for files with common movie-file extensions.

For each that it finds, a single thumbnail will be generated with the name `#{videoname_thumb.jpg}`.

This is to make life a bit easier at [The Monkey's Cobbler](http://www.themonkeyscobbler.com.au)

### Dependencies
Requires [ffmpeg](http://www.ffmpeg.org/) binary. Easiest way to get hold of this is to use homebrew:

    brew install ffmpeg

This will place `ffmpeg` binary on your PATH, which is useful for this script and in the future!

### How to use

    ruby thumbnail-all-the-videos.rb <path_to_videos>

Pass a relative or absolute path to videos you wish to thumbnail as first argument.

If an argument is not passed, the script will use the current directory.

### Thanks
To jlarusso for getting the ball rolling with his [Stillmaker](https://github.com/jlarusso/Stillmaker) project 😀
