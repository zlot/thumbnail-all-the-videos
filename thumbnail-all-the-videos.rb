require 'rubygems'
require 'streamio-ffmpeg'

# run bundle init: this will create your Gemfile with source pointing to https://rubygems.org
# run bundle install
# then $ git add Gemfile Gemfile.lock
# The second command adds the Gemfile and Gemfile.lock to your repository. This ensures that other developers on your app, as well as your deployment environment, will all use the same third-party code that you are using now. 


# set location of ffmpeg binary
FFMPEG.ffmpeg_binary = "./vendor/ffmpeg"

# flag for whether any movie files exist in chosen folder
$FOUND_FILES = false;

Dir.glob('**/*.{mkv,mov,mp4,wmv}') do | video_rel_path |

	#video_rel_path is simply a string name of relative path
	puts "processing #{video_rel_path}"
	movie = FFMPEG::Movie.new("#{video_rel_path}")

	seek_time = 3;

	# if duration is less than 3 seconds, adjust seek_time.
	if (movie.duration < 1)
		seek_time = 0.3
	elsif (movie.duration < 2)
		seek_time = 1
	elsif (movie.duration < 3)
		seek_time = 2
	end


	

	movie.screenshot("#{video_rel_path}_thumb.jpg", {seek_time:seek_time, resolution: "640x480"}, preserve_aspect_ratio: :width)
	
	puts "output #{video_rel_path}.jpg"

	# TODO:::
	# Think about Automatically killing hung processes:
		# Change the Timeout
		# Transcoder.timeout = 10
	# Should hold all errors and display at end of the program.
	# It is very important to be notified about when a screenshot couldn't be generated
	# for whatever reason!

	$FOUND_FILES = true
end

if(!$FOUND_FILES) 
	puts "Didn't find any movie files! Are you sure you're looking in the right directory?" 
end