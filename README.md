# GD4-BASIC_STATE_MACHINE

Move state machine and state to your folder.
assign A initial state at your state_machine
USE EXAMPLE

```
extends State
class_name one

func print_state():
	print("One")
	
func Enter():
	print_state()
	
func Update_State(_delta: float):
	print("One_Update")
	
func Physics_Update_State(_delta: float):
	if Input.is_action_just_pressed("2"):
		Transitioned.emit(self, "two")
```
```
extends State
class_name two

func print_state():
	print("Two")
	
func Enter():
	print_state()
	
func Update_State(_delta: float):
	print("Two_Update")
	
func Physics_Update_State(_delta: float):
	if Input.is_action_just_pressed("1"):
		Transitioned.emit(self, "one")
```
