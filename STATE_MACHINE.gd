#this is the whole state machine, that take care of changing states.
extends Node
class_name State_machine
@export var init_state : State
@export var current_state : State = null
@export var states_dict : Dictionary = {}

func _ready() -> void:
	for child in get_children():
		if child is State:
			states_dict[child.name.to_lower()] = child
			child.Transitioned.connect(_signal_Transition)
	if init_state:
		init_state.Enter()
		current_state = init_state
		
func _process(delta: float) -> void:
	if current_state:
		current_state.Update_State(delta)
		
func _physics_process(delta: float) -> void:
	if current_state:
		current_state.Physics_Update_State(delta)
		
func _signal_Transition(old_state, new_state):
	if old_state != current_state:
		return
	new_state = states_dict.get(new_state.to_lower())
	if !new_state:
		return
	if current_state:
		current_state.Exit()
	new_state.Enter()
	current_state = new_state
