file 'default www' do
	path '/var/www/html/index.html'
	content 'Hello there, you cheeky blitter!'
end

webnotes = search('node', 'role:web')

webnods.each do |node|
	puts node
end
