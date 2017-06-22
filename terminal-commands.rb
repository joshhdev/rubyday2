puts 'What would you like to name your project folder?'
projectFolder = gets.chomp
puts 'What language would you like to program in?'
language = gets.chomp
`mkdir "#{projectFolder}"`
`cd "#{projectFolder}"`
if language == 'javascript'
  `touch "#{projectFolder}/index.html"`
  `touch "#{projectFolder}/styles.css"`
  `touch "#{projectFolder}/app.js"`
end
if language == 'ruby'
  `touch "#{projectFolder}/index.html"`
  `touch "#{projectFolder}/styles.css"`
  `touch "#{projectFolder}/app.rb"`
end