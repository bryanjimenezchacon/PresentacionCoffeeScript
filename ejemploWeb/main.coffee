###
GLYNROB COFFEE SCRIPT EXAMPLE
###

# Assignment:
setNumber   = 42

$ ->
	$('.assignedNumber').click ->
		alert setNumber
		
	$('.assignedNumberText').click ->
		alert "Assigned Number is #{setNumber}"
		
	$('.assignedNumberMulti').click ->
		alert "Assigned Number is #{setNumber} 
which is a value set in the 
main.coffee file"
		
	$('.biggerThan50').click ->
		biggerThan50 = if setNumber > 50 then 'Yes' else 'No'
		alert biggerThan50
		
	$('.switchRange').click ->
		switch setNumber
			when 41 then alert 'Snake'
			when 42 then alert 'Dog'
			when 43 then alert 'Cat'
			else alert 'No animal present'
		
	$('.tryCatchFinally').click ->
		tmpvar = setNumber
		try
			setNumber += 5
			alert setNumber
		catch error
			alert error
		finally
			setNumber = tmpvar
	
	$('.divideByTwo').click ->
		alert divideByTwo(setNumber)
	
	$('.arrayExample').click ->
		alert list
	
	$('.objectExample').click ->
		alert "Mums name is #{family.mum.name} whos age is #{family.mum.age}"
	
	$('.loopExample').click ->
		totalval = 0
		totalval += value for value in list when value isnt 3
		alert totalval
	
	$('.slicingExample').click ->
		alert list[1..3]
	
	$('.splicingExample').click ->
		alert list[3..]
	
	$('.splatExample').click ->
		race ["Adam","Mark","Luke","John"]...
	
	$('.classesExample').click ->
		adam.move()
		mark.move()

# Functions:
divideByTwo = (x) -> x / 2

# Arrays:
list = [1, 2, 3, 4, 5]

# Objects:
family =
	mum:
		name: "Jane"
		age: 34
	dad:
		name: "Jon"
		age: 37
	son:
		name: "Mark"
		age: 12

# Splats:
race = (winner, runners...) ->
	alert "The winner is: #{winner}. Others that ran were: #{runners}"

# Classes
class Step
	constructor: (@name) ->
	move: (meters) ->
		alert "Moving " + @name + " #{meters} steps"

class SmallSteps extends Step
	move: ->
		super 5

class LargeSteps extends Step
	move: ->
		super 45

adam = new SmallSteps "Adam"
mark = new LargeSteps "Mark"