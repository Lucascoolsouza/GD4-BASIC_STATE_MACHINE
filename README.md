# GD4-BASIC_STATE_MACHINE


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
