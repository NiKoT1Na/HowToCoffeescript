

# Assignment:
foo = 42
# --

# Defining objects:
player =
  name: 'Pegasus'
  age: 'MMXIV'
# --

limit = max_limit ? 5
# Existencial operator, gets first non undefined|null value
# --

bar = 8 ** 2
# Shortcut for `Math.pow(8, 2)`
# --

# Array comprehensions:
cubes = (Math.sqrt num for num in [25, 64, 100])
# [5, 8, 10]
# --

# Array with sequence of numbers from 0 to 100
foo = (x for x in [0..100])
# --

# Array of numbers skiping everything between 10 and 20
bar = (x for x in [0..100] when x < 10 or x > 20)
# --

# Code block with array sequence
for x in [0..100]
    console.log x
# --

foo = (2 ** x for x in [1..10])
# [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]
# --

foo = $('.buttons').getPosition()?.left || 0
# Question makes it error-free if .getPosition() returns null 
# --

# if 'ignition' is defined and 'ignition' is true then launch()
launch() if ignition? is on
# --

#  avoid throwing erros with the "?" symbol
zip = data?.users?.paul?.money
# --

# vars never need to be initialized (even for assigments)
six = (one = 1) + (two = 2) + (three = 3)

# Assings the first var which exists (or last one if none are)
foo = jQuery ? 
      underscore ?
      throw Error 'Missing jQuery and underscore'
      # throw acts as expression
# --

$ -> $('#logo')
        .addClass 'foo'
        .click -> $(@).hide()
# $(function() {
#   $('#logo').addClass('foo').click(function() {
#     $(this).hide();
#   });
# });    
# --

# 'Hi, I'm Slim Shady'
foo = 
    name: 'Slim Shady',
    hello: -> "Hi, I'm #{@name}" 
foo.hello()
# --

foo = "today is #{new Date().toLocaleDateString()}"
# today is 3/14/2019
# --

# sequence ending between 5 and 15 (randomly) 
foo = [0..(Math.random() * 10 + 5)]
# --

# [0, 5, 9, 0, 5, 9]
# create a new array by repeating another one 2 times
source = [0, 5, 9]
result = (result ? []).concat(source) for [0...2]
# --

$('form').submit -> $(@).find('.ajax-loader').show()
#   $('form').submit(function() {
#     $(this).find('.ajax-loader').show();
#   });
# --

# "Batman just attacked the Joker!"
class Hero
    constructor: (@name) ->
    fight: (enemy)-> "#{@name} just attacked #{enemy}!"

batman = new Hero 'Batman'
batman.fight 'the Joker'
# --
