class HelloWorld
	def initialize(myname = "Ruby")
		@name = myname
	end

	def hello
		puts "Hello world, I am #{@name}"
	end
end

bob = HelloWorld.new("Noah")
alice = HelloWorld.new("alice")
ruby = HelloWorld.new

bob.hello
alice.hello
ruby.hello