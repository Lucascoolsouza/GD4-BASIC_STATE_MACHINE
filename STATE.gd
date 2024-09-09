#this is a state node, that is a base for every state.
extends Node
class_name State

signal Transitioned(new_state_name: String)

func Enter():
	pass

func Exit():
	pass
	
func Update_State(_delta: float):
	pass
	
func Physics_Update_State(_delta: float):
	pass
