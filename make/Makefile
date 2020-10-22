loop := _ x x_x x_x_x x_x_x_x x_x_x_x_x x_x_x_x_x_x x_x_x_x_x_x_x

fibonacci = $(if $1, $(call fibonacci,$(call substract,x,$1),$(call add,$2,$3),$2), $2)

substract = $(wordlist $(words $1 x),$(words $2),$2)

add = $1 $2

run:
	@echo $(foreach i,$(loop),$(words $(call fibonacci,$(subst _, ,$(i)),x,$())))