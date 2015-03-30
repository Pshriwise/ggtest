

CGM_MAKE = /home/shriwise/dagmc_blds/cgm_dev/lib/cgm.make
MOAB_MAKE = /home/shriwise/dagmc_blds/moabs/lib/moab.make

#CGM_MAKE = /home/shriwise/occ_blds/cgm/lib/cgm.make
#MOAB_MAKE = /home/shriwise/occ_blds/moab/lib/moab.make


include ${CGM_MAKE}
include ${MOAB_MAKE}

build: occ acis

acis:
	g++ ggtest_acis.cpp -o ggtest_acis -g -fpermissive  $(CGM_INCLUDES) $(CGM_LIBS_LINK) $(MOAB_INCLUDES) $(MOAB_LIBS_LINK)

occ:
	g++ ggtest_occ.cpp -o ggtest_occ -g $(CGM_INCLUDES) $(CGM_LIBS_LINK) $(MOAB_INCLUDES) $(MOAB_LIBS_LINK)

occ_cube_test:

	g++ occ_cube_test.cpp -o occ_cube_test -g $(CGM_INCLUDES) $(CGM_LIBS_LINK) $(MOAB_INCLUDES) $(MOAB_LIBS_LINK)

measure_test: 

	g++ dagmc_measure.cpp -o measure_test -g $(MOAB_INCLUDES) $(DAGMC_LIBS_LINK)

clean:
	rm ggtest_acis ggtest_occ measure_test occ_cube_test a.out
