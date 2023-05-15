# Generic Abella makefile
#  1. Ensure abella is in your PATH
#  2. Run 'make'


.PHONY: all
all: common_definitions.thc complements___ms-normal_is_well_defined.thc	micro_weak_head.thc relating_pi_and_lsc.thc weak_head.thc complements___equivalence_of_pi_presentations.thc equivalence_of_presentations.thc postponement_of_structural_equivalence.thc relating_wh_and_mwh.thc

# Everything after this point is generic and should be duplicated
# in user's makefiles

%.thc :
	abella $*.thm -c $*.thc

-include depend
depend: *.thm *.sig *.mod
	abella -M *.thm > depend-stage
	mv depend-stage depend

.PHONY: clean
clean:
	rm -f *.thc depend
