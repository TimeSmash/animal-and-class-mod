Dir[File.join(File.dirname(__FILE__), ".", "*.rb")].each {|f| require f}
# This requires all the files in the /lib directory