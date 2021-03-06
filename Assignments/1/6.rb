def glob_match(filenames, pattern)
	filenames.each {|filename| 
	file = File.new(filename,"w")
	file.close
	}
	matched_files = Dir.glob(pattern,File::FNM_DOTMATCH)
	filenames.each {|filename| File.delete(filename)}
	matched_files
end

puts glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"],"*part*rb?*") # ==> [“part2.rb~”, “.part3.rb.un~”]
