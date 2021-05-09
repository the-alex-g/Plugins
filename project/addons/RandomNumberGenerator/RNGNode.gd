extends Node

# constants
const PRIME_1 := 115249
const PRIME_2 := 263167
const PRIME_3 := 797161

# variables
var _ignore
var _seed := 0


func seed_number(value:int)->void:
	_seed = value


func random_number(index:int = randi())->int:
	var number := index
	number *= PRIME_1
	number += _seed
	number *= number
	number += PRIME_2
	number *= number
	number *= PRIME_3
	number = abs(number)
	return number
