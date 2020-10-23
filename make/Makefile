loop := _ x x_x x_x_x x_x_x_x x_x_x_x_x x_x_x_x_x_x x_x_x_x_x_x_x

# $1: iterations, counts down, stops when i == 0
# $2: current fibonacci number
# $3: previous fibonacci number
fibonacci = $(if $1, $(call fibonacci,$(call substract,$1,x),$(call add,$2,$3),$2), $2)

add = $1 $2

# a - b
# $1: a
# $2: b
substract = $(wordlist $(words $2 x),$(words $1),$1)

multiply = $(foreach i,$1,$2)

# a / b
# $1: a
# $2: b
# $3: result
divide = $(if $1,$(call divide,$(call substract,$1,$2),$2,$(call add,$3,x)),$3)

# a ^ b
# $1: a
# $2: b
# $3: result
pow = $(if $2,$(call pow,$1,$(call substract,$2,x),$(call multiply,$1,$3)),$3)

run:
	@echo $(words $(call pow,x x x,x x x,x))




#@echo $(foreach i,$(loop),$(words $(call fibonacci,$(subst _, ,$(i)),x,)))