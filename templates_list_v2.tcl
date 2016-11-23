# AUTOGENERATED! DO NOT EDIT! on Wed 23 Nov 16:48:39 CET 2016 via Plumed 2.2

package provide plumed 2.6
# AUTOGENERATED! 
namespace eval ::Plumed {
    variable templates_list_v2 {
	"Group definition"		"grp:   GROUP ATOMS=[chain A and name CA]"
	"Center of mass"		"com:   COM   ATOMS=[chain A and name CA]"
	"Ghost atom"			"GHOST ATOMS=<atom_selection> COORDINATES=<atom_selection>"
	- -
	"Distance"			"DISTANCE ATOMS=<atom_selection>"
	"Angle"				"ANGLE ATOMS=<atom_selection>"
	"Torsion"			"TORSION ATOMS=<atom_selection>"
        "Radius of gyration"		"GYRATION ATOMS=<atom_selection> TYPE=RADIUS"
	"Electric dipole"		"DIPOLE GROUP=<atom_selection>"
	"Coordination"			"COORDINATION GROUPA=<atom_selection> GROUPB=<atom_selection> NN=6  MM=12  D_0=0.0  R_0="
	- -
	"RMSD from reference structure" "RMSD REFERENCE=ref.pdb TYPE=OPTIMAL"
	"S- and Z-path variables"	"PATHMSD LAMBDA=     REFERENCE="
	"Amount of \u03b1-helical structure"        
	                                "ALPHARMSD RESIDUES=<residue_selection> TYPE=DRMSD  R_0=     D_0=0.0  NN=8  MM=12"
        "Amount of parallel-\u03b2 structure"       
	                                "PARABETARMSD RESIDUES=<residue_selection> TYPE=DRMSD  R_0=     D_0=0.0  NN=8  MM=12  STYLE=all"
	"Amount of antiparallel-\u03b2 structure"   
	                                "ANTIBETARMSD RESIDUES=<residue_selection> TYPE=DRMSD  R_0=     D_0=0.0  NN=8  MM=12  STYLE=all"
	"Distance RMSD"                 "DRMSD REFERENCE=     LOWER_CUTOFF=     UPPER_CUTOFF="
	- -
	"Polynomial function of CVs"	"COMBINE ARG=     PERIODIC=     COEFFICIENTS=1.0  POWERS=1.0"
	"Piecewise function of CVs"	"PIECEWISE ARG=     POINT="
	"Arbitrary function of CVs"	"MATHEVAL ARG=cv1.x,cv2.y VAR=x,y FUNC=sin(x)+y   # If compiled-in"
	"Distance in CV space"		"TARGET TYPE=EUCLIDEAN  REFERENCE="
	"Contact map"			"CONTACTMAP ATOMS1=1,2 ATOMS2=3,4 ... SWITCH=(RATIONAL R_0=1.5)"
	"Distance list"			"DISTANCES ATOMS1=3,5 ATOMS2=1,2 MIN={BETA=0.1}"
	"Coordination number list"	"COORDINATIONNUMBER SPECIES=<atom_selection> NN=6  MM=12  D_0=0.0  R_0="
	- -
	"Restraint"			"RESTRAINT ARG=     SLOPE=0.0  KAPPA=0.0  AT="
        "Moving restraint"		"MOVINGRESTRAINT ARG=     VERSE=B  STEP=     AT=     KAPPA="
	"Metadynamics"			"METAD ARG=     SIGMA=     PACE=     FILE=HILLS"
	"Adiabatic bias"		"ABMD ARG=     TO=     KAPPA="
	"Lower wall (allow higher)"	"LOWER_WALLS ARG=     AT=     KAPPA=     OFFSET=0.0  EXP=2.0  EPS=1.0"
	"Upper wall (allow lower)"	"UPPER_WALLS ARG=     AT=     KAPPA=     OFFSET=0.0  EXP=2.0  EPS=1.0"
	- -
	"Set system topology"           "MOLINFO CHAIN=<atom_selection> STRUCTURE=     MOLTYPE=protein"
	"Switch to VMD units"           "UNITS  LENGTH=A  ENERGY=kcal/mol  TIME=ps"
    }
}

# These are in the menu, but with a manual template
#       COM ATOMS=<atom_selection> 
#       GROUP ATOMS=<atom_selection> REMOVE=<atom_selection>
#       RMSD REFERENCE=     TYPE=SIMPLE
#	CONTACTMAP ATOMS=<atom_selection> SWITCH= 
#       DISTANCES ATOMS=<atom_selection> 
#       UNITS

      

array set ::Plumed::template_keyword_hash {
  {ABMD} {ABMD ARG=     TO=     KAPPA=}
  {ALPHABETA} {ALPHABETA ATOMS=<atom_selection> REFERENCE=}
  {ALPHARMSD} {ALPHARMSD RESIDUES=<residue_selection> TYPE=DRMSD  R_0=     D_0=0.0  NN=8  MM=12}
  {ANGLE} {ANGLE ATOMS=<atom_selection>}
  {ANGLES} {ANGLES ATOMS=<atom_selection>}
  {ANTIBETARMSD} {ANTIBETARMSD RESIDUES=<residue_selection> TYPE=DRMSD  R_0=     D_0=0.0  NN=8  MM=12  STYLE=all}
  {AROUND} {AROUND ATOM=<atom_selection> DATA=     SIGMA=     KERNEL=gaussian  XLOWER=0.0  XUPPER=0.0  YLOWER=0.0  YUPPER=0.0  ZLOWER=0.0  ZUPPER=0.0}
  {BIASVALUE} {BIASVALUE ARG=}
  {BRIDGE} {BRIDGE ATOMS=<atom_selection>}
  {CAVITY} {CAVITY ATOMS=<atom_selection> DATA=     SIGMA=     KERNEL=gaussian}
  {CELL} {CELL}
  {CENTER} {CENTER ATOMS=<atom_selection>}
  {CLASSICAL_MDS} {CLASSICAL_MDS ATOMS=<atom_selection> METRIC=EUCLIDEAN  STRIDE=1  RUN=     LANDMARKS=ALL  NLOW_DIM=     OUTPUT_FILE=     EMBEDDING_OFILE=dont output}
  {COM} {COM ATOMS=<atom_selection>}
  {COMBINE} {COMBINE ARG=     PERIODIC=     COEFFICIENTS=1.0  POWERS=1.0}
  {COMMITTOR} {COMMITTOR ARG=     STRIDE=1  BASIN_A_LOWER=     BASIN_A_UPPER=     BASIN_B_LOWER=     BASIN_B_UPPER=}
  {CONSTANT} {CONSTANT VALUE=}
  {CONTACTMAP} {CONTACTMAP ATOMS=<atom_selection> SWITCH=}
  {COORDINATION} {COORDINATION GROUPA=<atom_selection> GROUPB=<atom_selection> NN=6  MM=12  D_0=0.0  R_0=}
  {COORDINATIONNUMBER} {COORDINATIONNUMBER SPECIES=<atom_selection> NN=6  MM=12  D_0=0.0  R_0=}
  {DEBUG} {DEBUG STRIDE=1}
  {DENSITY} {DENSITY SPECIES=<atom_selection>}
  {DHENERGY} {DHENERGY GROUPA=<atom_selection> GROUPB=<atom_selection> I=1.0  TEMP=300.0  EPSILON=80.0}
  {DIHCOR} {DIHCOR ATOMS=<atom_selection>}
  {DIPOLE} {DIPOLE GROUP=<atom_selection>}
  {DISTANCE} {DISTANCE ATOMS=<atom_selection>}
  {DISTANCES} {DISTANCES ATOMS=<atom_selection>}
  {DRMSD} {DRMSD REFERENCE=     LOWER_CUTOFF=     UPPER_CUTOFF=}
  {DUMPATOMS} {DUMPATOMS ATOMS=<atom_selection> STRIDE=1  FILE=     UNITS=PLUMED}
  {DUMPDERIVATIVES} {DUMPDERIVATIVES ARG=     STRIDE=1  FILE=     FMT=%15.10f}
  {DUMPFORCES} {DUMPFORCES ARG=     STRIDE=1  FILE=}
  {DUMPMASSCHARGE} {DUMPMASSCHARGE ATOMS=<atom_selection> STRIDE=1  FILE=}
  {DUMPMULTICOLVAR} {DUMPMULTICOLVAR DATA=     STRIDE=1  FILE=     UNITS=PLUMED}
  {DUMPPROJECTIONS} {DUMPPROJECTIONS ARG=     STRIDE=1  FILE=     FMT=%15.10f}
  {EFFECTIVE_ENERGY_DRIFT} {EFFECTIVE_ENERGY_DRIFT STRIDE=1  FILE=     PRINT_STRIDE=}
  {ENERGY} {ENERGY}
  {ENSEMBLE} {ENSEMBLE ARG=}
  {EXTENDED_LAGRANGIAN} {EXTENDED_LAGRANGIAN ARG=     KAPPA=     TAU=     FRICTION=0.0}
  {EXTERNAL} {EXTERNAL ARG=     FILE=}
  {FAKE} {FAKE ATOMS=<atom_selection> PERIODIC=}
  {FIT_TO_TEMPLATE} {FIT_TO_TEMPLATE STRIDE=1  REFERENCE=     TYPE=SIMPLE}
  {FLUSH} {FLUSH STRIDE=}
  {FUNCPATHMSD} {FUNCPATHMSD ARG=     LAMBDA=}
  {FUNCSUMHILLS} {FUNCSUMHILLS ARG=}
  {GHOST} {GHOST ATOMS=<atom_selection> COORDINATES=<atom_selection>}
  {GPROPERTYMAP} {GPROPERTYMAP REFERENCE=     PROPERTY=     TYPE=OPTIMAL-FAST  LAMBDA=}
  {GROUP} {GROUP ATOMS=<atom_selection> REMOVE=<atom_selection>}
  {GYRATION} {GYRATION ATOMS=<atom_selection> TYPE=RADIUS}
  {HISTOGRAM} {HISTOGRAM ARG=     STRIDE=1  RUN=     GRID_MIN=     GRID_MAX=     KERNEL=gaussian  GRID_WFILE=histogram}
  {INCLUDE} {INCLUDE FILE=}
  {INCYLINDER} {INCYLINDER ATOM=<atom_selection> DATA=     KERNEL=gaussian  DIRECTION=     RADIUS=     LOWER=0.0  UPPER=0.0}
  {INPLANEDISTANCES} {INPLANEDISTANCES VECTORSTART=<atom_selection> VECTOREND=<atom_selection>}
  {LOAD} {LOAD FILE=}
  {LOCAL_AVERAGE} {LOCAL_AVERAGE DATA=     NN=6  MM=12  D_0=0.0  R_0=}
  {LOWER_WALLS} {LOWER_WALLS ARG=     AT=     KAPPA=     OFFSET=0.0  EXP=2.0  EPS=1.0}
  {METAD} {METAD ARG=     SIGMA=     PACE=     FILE=HILLS}
  {MFILTER_BETWEEN} {MFILTER_BETWEEN DATA=     LOWER=     UPPER=     SMEAR=0.5}
  {MFILTER_LESS} {MFILTER_LESS DATA=     NN=6  MM=12  D_0=0.0  R_0=}
  {MFILTER_MORE} {MFILTER_MORE DATA=     NN=6  MM=12  D_0=0.0  R_0=}
  {MOLINFO} {MOLINFO CHAIN=<atom_selection> STRUCTURE=     MOLTYPE=protein}
  {MOVINGRESTRAINT} {MOVINGRESTRAINT ARG=     VERSE=B  STEP=     AT=     KAPPA=}
  {MULTI-RMSD} {MULTI-RMSD REFERENCE=     TYPE=MULTI-SIMPLE}
  {MULTICOLVARDENS} {MULTICOLVARDENS ORIGIN=<atom_selection> DATA=     STRIDE=1  RUN=     DIR=     NBINS=     BANDWIDTH=     KERNEL=gaussian  OFILE=density}
  {NLINKS} {NLINKS DATA=     NN=6  MM=12  D_0=0.0  R_0=}
  {NOE} {NOE GROUPA=<atom_selection> GROUPB=<atom_selection> WRITE_NOE=0}
  {PARABETARMSD} {PARABETARMSD RESIDUES=<residue_selection> TYPE=DRMSD  R_0=     D_0=0.0  NN=8  MM=12  STYLE=all}
  {PATH} {PATH REFERENCE=     TYPE=OPTIMAL-FAST  LAMBDA=}
  {PATHMSD} {PATHMSD LAMBDA=     REFERENCE=}
  {PBMETAD} {PBMETAD ARG=     SIGMA=     PACE=     FILE=}
  {PCARMSD} {PCARMSD AVERAGE=     EIGENVECTORS=}
  {PCAVARS} {PCAVARS REFERENCE=     TYPE=OPTIMAL}
  {PIECEWISE} {PIECEWISE ARG=     POINT=}
  {POSITION} {POSITION ATOM=<atom_selection>}
  {PRINT} {PRINT ARG=     STRIDE=1}
  {PROPERTYMAP} {PROPERTYMAP LAMBDA=     REFERENCE=     PROPERTY=}
  {PUCKERING} {PUCKERING ATOMS=<atom_selection>}
  {RANDOM_EXCHANGES} {RANDOM_EXCHANGES}
  {RDC} {RDC ATOMS=<atom_selection> WRITE_DC=0}
  {READ} {READ STRIDE=1  EVERY=1  VALUES=     FILE=}
  {RESTART} {RESTART}
  {RESTRAINT} {RESTRAINT ARG=     SLOPE=0.0  KAPPA=0.0  AT=}
  {RMSD} {RMSD REFERENCE=     TYPE=SIMPLE}
  {SORT} {SORT ARG=}
  {SPRINT} {SPRINT DATA=}
  {TARGET} {TARGET TYPE=EUCLIDEAN  REFERENCE=}
  {TEMPLATE} {TEMPLATE ATOMS=<atom_selection> TEMPLATE_COMPULSORY=}
  {TETRAHEDRALPORE} {TETRAHEDRALPORE ATOMS=<atom_selection> DATA=     SIGMA=     KERNEL=gaussian}
  {TIME} {TIME}
  {TORSION} {TORSION ATOMS=<atom_selection>}
  {TORSIONS} {TORSIONS ATOMS=<atom_selection>}
  {UNITS} {UNITS}
  {UPPER_WALLS} {UPPER_WALLS ARG=     AT=     KAPPA=     OFFSET=0.0  EXP=2.0  EPS=1.0}
  {VOLUME} {VOLUME}
  {WHOLEMOLECULES} {WHOLEMOLECULES ENTITY=<atom_selection> STRIDE=1}
  {WRAPAROUND} {WRAPAROUND AROUND=<atom_selection> ATOMS=<atom_selection> STRIDE=1  GROUPBY=1}
  {XDISTANCES} {XDISTANCES ATOMS=<atom_selection>}
  {XYDISTANCES} {XYDISTANCES ATOMS=<atom_selection>}
  {XZDISTANCES} {XZDISTANCES ATOMS=<atom_selection>}
  {YDISTANCES} {YDISTANCES ATOMS=<atom_selection>}
  {YZDISTANCES} {YZDISTANCES ATOMS=<atom_selection>}
  {ZDISTANCES} {ZDISTANCES ATOMS=<atom_selection>}
}
array set ::Plumed::template_full_hash {
  {ABMD} {ABMD [LABEL] [NUMERICAL_DERIVATIVES] [STRIDE] ARG=     TO=     KAPPA=     [MIN] [NOISE] [SEED]}
  {ALPHABETA} {ALPHABETA ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS] REFERENCE=}
  {ALPHARMSD} {ALPHARMSD RESIDUES=<residue_selection> [LABEL] [NUMERICAL_DERIVATIVES] [RESIDUES] TYPE=DRMSD  R_0=     D_0=0.0  NN=8  MM=12  [VERBOSE] [NL_STRIDE] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [LESS_THAN] [MIN] [ALT_MIN] [NL_TOL] [LOWEST] [HIGHEST]}
  {ANGLE} {ANGLE ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [ATOMS]}
  {ANGLES} {ANGLES ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS] [MEAN] [LESS_THAN] [BETWEEN] [HISTOGRAM] [MORE_THAN] [GROUP] [GROUPA] [GROUPB] [GROUPC] [SWITCH] [SWITCHA] [SWITCHB]}
  {ANTIBETARMSD} {ANTIBETARMSD RESIDUES=<residue_selection> [LABEL] [NUMERICAL_DERIVATIVES] [RESIDUES] TYPE=DRMSD  R_0=     D_0=0.0  NN=8  MM=12  [VERBOSE] [NL_STRIDE] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [LESS_THAN] [MIN] [ALT_MIN] [NL_TOL] [LOWEST] [HIGHEST] STYLE=all  [STRANDS_CUTOFF]}
  {AROUND} {AROUND ATOM=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] DATA=     [MEAN] [LESS_THAN] [MORE_THAN] [BETWEEN] [HISTOGRAM] SIGMA=     KERNEL=gaussian  [OUTSIDE] [ATOM] XLOWER=0.0  XUPPER=0.0  YLOWER=0.0  YUPPER=0.0  ZLOWER=0.0  ZUPPER=0.0}
  {BIASVALUE} {BIASVALUE [LABEL] [NUMERICAL_DERIVATIVES] [STRIDE] ARG=}
  {BRIDGE} {BRIDGE ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS] [BRIDGING_ATOMS] [GROUPA] [GROUPB] [SWITCH] [SWITCHA] [SWITCHB]}
  {CAVITY} {CAVITY ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] DATA=     [MEAN] [LESS_THAN] [MORE_THAN] [BETWEEN] [HISTOGRAM] SIGMA=     KERNEL=gaussian  [OUTSIDE] [ATOMS] [PRINT_BOX] [FILE] [UNITS]}
  {CELL} {CELL [LABEL] [NUMERICAL_DERIVATIVES]}
  {CENTER} {CENTER ATOMS=<atom_selection> [LABEL] [ATOMS] [WEIGHTS] [NOPBC] [MASS]}
  {CLASSICAL_MDS} {CLASSICAL_MDS ATOMS=<atom_selection> [LABEL] [ARG] [ATOMS] METRIC=EUCLIDEAN  STRIDE=1  [USE_ALL_DATA] RUN=     [FMT] [REWEIGHT_BIAS] [TEMP] [REWEIGHT_TEMP] [WRITE_CHECKPOINT] [REUSE_DATA_FROM] [IGNORE_REWEIGHTING] [RESTART] [UPDATE_FROM] [UPDATE_UNTIL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] LANDMARKS=ALL  NLOW_DIM=     OUTPUT_FILE=     EMBEDDING_OFILE=dont output}
  {COM} {COM ATOMS=<atom_selection> [LABEL] [ATOMS] [NOPBC]}
  {COMBINE} {COMBINE [LABEL] [NUMERICAL_DERIVATIVES] ARG=     PERIODIC=     COEFFICIENTS=1.0  POWERS=1.0  [NORMALIZE]}
  {COMMITTOR} {COMMITTOR [LABEL] ARG=     STRIDE=1  BASIN_A_LOWER=     BASIN_A_UPPER=     BASIN_B_LOWER=     BASIN_B_UPPER=     [FILE] [FMT]}
  {CONSTANT} {CONSTANT [LABEL] VALUE=}
  {CONTACTMAP} {CONTACTMAP ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [ATOMS] SWITCH=     [REFERENCE] [WEIGHT] [SUM] [CMDIST] [SERIAL]}
  {COORDINATION} {COORDINATION GROUPA=<atom_selection> GROUPB=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [SERIAL] [PAIR] [NLIST] [NL_CUTOFF] [NL_STRIDE] [GROUPA] [GROUPB] NN=6  MM=12  D_0=0.0  R_0=     [SWITCH]}
  {COORDINATIONNUMBER} {COORDINATIONNUMBER SPECIES=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [SPECIES] [SPECIESA] [SPECIESB] NN=6  MM=12  D_0=0.0  R_0=     [SWITCH] [MEAN] [MORE_THAN] [LESS_THAN] [MAX] [MIN] [BETWEEN] [HISTOGRAM] [MOMENTS] [ALT_MIN] [LOWEST] [HIGHEST]}
  {DEBUG} {DEBUG [LABEL] STRIDE=1  [logActivity] [logRequestedAtoms] [NOVIRIAL] [DETAILED_TIMERS] [FILE]}
  {DENSITY} {DENSITY SPECIES=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [SPECIES]}
  {DHENERGY} {DHENERGY GROUPA=<atom_selection> GROUPB=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [SERIAL] [PAIR] [NLIST] [NL_CUTOFF] [NL_STRIDE] [GROUPA] [GROUPB] I=1.0  TEMP=300.0  EPSILON=80.0}
  {DIHCOR} {DIHCOR ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS]}
  {DIPOLE} {DIPOLE GROUP=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [GROUP] [COMPONENTS]}
  {DISTANCE} {DISTANCE ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [ATOMS] [COMPONENTS] [SCALED_COMPONENTS]}
  {DISTANCES} {DISTANCES ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS] [ALT_MIN] [LOWEST] [HIGHEST] [MEAN] [MIN] [MAX] [LESS_THAN] [MORE_THAN] [BETWEEN] [HISTOGRAM] [MOMENTS] [GROUP] [GROUPA] [GROUPB]}
  {DRMSD} {DRMSD [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] REFERENCE=     LOWER_CUTOFF=     UPPER_CUTOFF=}
  {DUMPATOMS} {DUMPATOMS ATOMS=<atom_selection> [LABEL] STRIDE=1  [ATOMS] FILE=     UNITS=PLUMED  [PRECISION] [TYPE] [RESTART] [UPDATE_FROM] [UPDATE_UNTIL]}
  {DUMPDERIVATIVES} {DUMPDERIVATIVES [LABEL] ARG=     STRIDE=1  FILE=     FMT=%15.10f  [RESTART] [UPDATE_FROM] [UPDATE_UNTIL]}
  {DUMPFORCES} {DUMPFORCES [LABEL] ARG=     STRIDE=1  FILE=     [RESTART] [UPDATE_FROM] [UPDATE_UNTIL]}
  {DUMPMASSCHARGE} {DUMPMASSCHARGE ATOMS=<atom_selection> [LABEL] STRIDE=1  [ATOMS] FILE=}
  {DUMPMULTICOLVAR} {DUMPMULTICOLVAR [LABEL] DATA=     STRIDE=1  FILE=     UNITS=PLUMED  [PRECISION]}
  {DUMPPROJECTIONS} {DUMPPROJECTIONS [LABEL] ARG=     STRIDE=1  FILE=     FMT=%15.10f  [RESTART] [UPDATE_FROM] [UPDATE_UNTIL]}
  {EFFECTIVE_ENERGY_DRIFT} {EFFECTIVE_ENERGY_DRIFT [LABEL] STRIDE=1  FILE=     PRINT_STRIDE=     [RESTART] [UPDATE_FROM] [UPDATE_UNTIL]}
  {ENERGY} {ENERGY [LABEL]}
  {ENSEMBLE} {ENSEMBLE [LABEL] [NUMERICAL_DERIVATIVES] ARG=}
  {EXTENDED_LAGRANGIAN} {EXTENDED_LAGRANGIAN [LABEL] [NUMERICAL_DERIVATIVES] [STRIDE] ARG=     KAPPA=     TAU=     FRICTION=0.0  [TEMP]}
  {EXTERNAL} {EXTERNAL [LABEL] [NUMERICAL_DERIVATIVES] [STRIDE] ARG=     FILE=     [NOSPLINE] [SPARSE]}
  {FAKE} {FAKE ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [ATOMS] PERIODIC=     [COMPONENTS]}
  {FIT_TO_TEMPLATE} {FIT_TO_TEMPLATE [LABEL] STRIDE=1  REFERENCE=     TYPE=SIMPLE}
  {FLUSH} {FLUSH STRIDE=}
  {FUNCPATHMSD} {FUNCPATHMSD [LABEL] [NUMERICAL_DERIVATIVES] ARG=     LAMBDA=     [NEIGH_SIZE] [NEIGH_STRIDE]}
  {FUNCSUMHILLS} {FUNCSUMHILLS [LABEL] [NUMERICAL_DERIVATIVES] ARG=     [HILLSFILES] [HISTOFILES] [HISTOSIGMA] [PROJ] [KT] [GRID_MIN] [GRID_MAX] [GRID_BIN] [GRID_SPACING] [INTERVAL] [OUTHILLS] [OUTHISTO] [INITSTRIDE] [STRIDE] [ISCLTOOL] [PARALLELREAD] [NEGBIAS] [NOHISTORY] [MINTOZERO] [FMT]}
  {GHOST} {GHOST ATOMS=<atom_selection> COORDINATES=<atom_selection> [LABEL] [ATOMS] [COORDINATES]}
  {GPROPERTYMAP} {GPROPERTYMAP [LABEL] [NUMERICAL_DERIVATIVES] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] REFERENCE=     PROPERTY=     TYPE=OPTIMAL-FAST  [DISABLE_CHECKS] LAMBDA=     [NOZPATH] [NOMAPPING]}
  {GROUP} {GROUP ATOMS=<atom_selection> REMOVE=<atom_selection> [LABEL] [ATOMS] [REMOVE] [SORT] [UNIQUE] [NDX_FILE] [NDX_GROUP]}
  {GYRATION} {GYRATION ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [ATOMS] TYPE=RADIUS  [NOT_MASS_WEIGHTED]}
  {HISTOGRAM} {HISTOGRAM [LABEL] ARG=     [METRIC] STRIDE=1  [USE_ALL_DATA] RUN=     [FMT] [REWEIGHT_BIAS] [TEMP] [REWEIGHT_TEMP] [WRITE_CHECKPOINT] [REUSE_DATA_FROM] [IGNORE_REWEIGHTING] [RESTART] [UPDATE_FROM] [UPDATE_UNTIL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] GRID_MIN=     GRID_MAX=     [GRID_BIN] [GRID_SPACING] KERNEL=gaussian  [BANDWIDTH] [FREE-ENERGY] [UNNORMALIZED] GRID_WFILE=histogram  [NOMEMORY]}
  {INCLUDE} {INCLUDE [LABEL] FILE=}
  {INCYLINDER} {INCYLINDER ATOM=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] DATA=     [MEAN] [LESS_THAN] [MORE_THAN] [BETWEEN] [HISTOGRAM] [SIGMA] KERNEL=gaussian  [OUTSIDE] [ATOM] DIRECTION=     RADIUS=     LOWER=0.0  UPPER=0.0}
  {INPLANEDISTANCES} {INPLANEDISTANCES VECTORSTART=<atom_selection> VECTOREND=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ALT_MIN] [LOWEST] [HIGHEST] [MEAN] [MIN] [MAX] [LESS_THAN] [MORE_THAN] [BETWEEN] [HISTOGRAM] [MOMENTS] [VECTORSTART] [VECTOREND] [GROUP]}
  {LOAD} {LOAD FILE=}
  {LOCAL_AVERAGE} {LOCAL_AVERAGE [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [TIMINGS] [NL_TOL] [NL_STRIDE] DATA=     NN=6  MM=12  D_0=0.0  R_0=     [SWITCH] [MEAN] [MORE_THAN] [LESS_THAN] [BETWEEN] [HISTOGRAM] [MOMENTS] [LOWMEM]}
  {LOWER_WALLS} {LOWER_WALLS [LABEL] [NUMERICAL_DERIVATIVES] [STRIDE] ARG=     AT=     KAPPA=     OFFSET=0.0  EXP=2.0  EPS=1.0}
  {METAD} {METAD [LABEL] [NUMERICAL_DERIVATIVES] [STRIDE] ARG=     SIGMA=     PACE=     FILE=HILLS  [HEIGHT] [FMT] [BIASFACTOR] [TEMP] [TAU] [GRID_MIN] [GRID_MAX] [GRID_BIN] [GRID_SPACING] [REWEIGHTING_NGRID] [REWEIGHTING_NHILLS] [GRID_SPARSE] [GRID_NOSPLINE] [GRID_WSTRIDE] [GRID_WFILE] [STORE_GRIDS] [ADAPTIVE] [WALKERS_ID] [WALKERS_N] [WALKERS_DIR] [WALKERS_RSTRIDE] [INTERVAL] [GRID_RFILE] [SIGMA_MAX] [SIGMA_MIN] [WALKERS_MPI] [ACCELERATION] [RESTART] [UPDATE_FROM] [UPDATE_UNTIL]}
  {MFILTER_BETWEEN} {MFILTER_BETWEEN [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] DATA=     [MEAN] [MOMENTS] [MIN] [MAX] [ALT_MIN] [LOWEST] [HIGHEST] LOWER=     UPPER=     SMEAR=0.5  [BEAD]}
  {MFILTER_LESS} {MFILTER_LESS [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] DATA=     [MEAN] [MOMENTS] [MIN] [MAX] [ALT_MIN] [LOWEST] [HIGHEST] NN=6  MM=12  D_0=0.0  R_0=     [SWITCH]}
  {MFILTER_MORE} {MFILTER_MORE [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] DATA=     [MEAN] [MOMENTS] [MIN] [MAX] [ALT_MIN] [LOWEST] [HIGHEST] NN=6  MM=12  D_0=0.0  R_0=     [SWITCH]}
  {MOLINFO} {MOLINFO CHAIN=<atom_selection> STRUCTURE=     MOLTYPE=protein  [CHAIN]}
  {MOVINGRESTRAINT} {MOVINGRESTRAINT [LABEL] [NUMERICAL_DERIVATIVES] [STRIDE] ARG=     VERSE=B  STEP=     AT=     KAPPA=}
  {MULTI-RMSD} {MULTI-RMSD [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] REFERENCE=     TYPE=MULTI-SIMPLE  [SQUARED]}
  {MULTICOLVARDENS} {MULTICOLVARDENS ORIGIN=<atom_selection> [LABEL] DATA=     STRIDE=1  RUN=     [ORIGIN] DIR=     NBINS=     BANDWIDTH=     KERNEL=gaussian  OFILE=density  [FRACTIONAL] [NOMEMORY] [DUMP_CUBE]}
  {NLINKS} {NLINKS [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [TIMINGS] [NL_TOL] [NL_STRIDE] DATA=     NN=6  MM=12  D_0=0.0  R_0=     [SWITCH] [LOWMEM]}
  {NOE} {NOE GROUPA=<atom_selection> GROUPB=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [GROUPA] [GROUPB] [NOEDIST] [UPPER_LIMITS] WRITE_NOE=0  [ENSEMBLE] [SERIAL]}
  {PARABETARMSD} {PARABETARMSD RESIDUES=<residue_selection> [LABEL] [NUMERICAL_DERIVATIVES] [RESIDUES] TYPE=DRMSD  R_0=     D_0=0.0  NN=8  MM=12  [VERBOSE] [NL_STRIDE] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [LESS_THAN] [MIN] [ALT_MIN] [NL_TOL] [LOWEST] [HIGHEST] STYLE=all  [STRANDS_CUTOFF]}
  {PATH} {PATH [LABEL] [NUMERICAL_DERIVATIVES] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] REFERENCE=     TYPE=OPTIMAL-FAST  [DISABLE_CHECKS] LAMBDA=     [NOZPATH] [NOSPATH]}
  {PATHMSD} {PATHMSD [LABEL] [NUMERICAL_DERIVATIVES] LAMBDA=     REFERENCE=     [NEIGH_SIZE] [NEIGH_STRIDE]}
  {PBMETAD} {PBMETAD [LABEL] [NUMERICAL_DERIVATIVES] [STRIDE] ARG=     SIGMA=     PACE=     FILE=     [HEIGHT] [FMT] [BIASFACTOR] [TEMP] [TAU] [GRID_MIN] [GRID_MAX] [GRID_BIN] [GRID_SPACING] [GRID_SPARSE] [GRID_NOSPLINE] [INTERVAL_MIN] [INTERVAL_MAX] [MULTIPLE_WALKERS]}
  {PCARMSD} {PCARMSD [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] AVERAGE=     EIGENVECTORS=     [SQUARED-ROOT]}
  {PCAVARS} {PCAVARS [LABEL] [NUMERICAL_DERIVATIVES] REFERENCE=     TYPE=OPTIMAL  [NORMALIZE]}
  {PIECEWISE} {PIECEWISE [LABEL] [NUMERICAL_DERIVATIVES] ARG=     POINT=}
  {POSITION} {POSITION ATOM=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [ATOM] [SCALED_COMPONENTS]}
  {PRINT} {PRINT [LABEL] ARG=     STRIDE=1  [FILE] [FMT] [_ROTATE] [RESTART] [UPDATE_FROM] [UPDATE_UNTIL]}
  {PROPERTYMAP} {PROPERTYMAP [LABEL] [NUMERICAL_DERIVATIVES] LAMBDA=     REFERENCE=     [NEIGH_SIZE] [NEIGH_STRIDE] PROPERTY=}
  {PUCKERING} {PUCKERING ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [ATOMS]}
  {RANDOM_EXCHANGES} {RANDOM_EXCHANGES [LABEL] [SEED]}
  {RDC} {RDC ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [ATOMS] [COUPLING] [GYROM] [SCALE] [BONDLENGTH] [ENSEMBLE] [CORRELATION] [SERIAL] [SVD] WRITE_DC=0}
  {READ} {READ [LABEL] STRIDE=1  EVERY=1  VALUES=     FILE=     [IGNORE_TIME] [IGNORE_FORCES] [UPDATE_FROM] [UPDATE_UNTIL]}
  {RESTART} {RESTART [NO]}
  {RESTRAINT} {RESTRAINT [LABEL] [NUMERICAL_DERIVATIVES] [STRIDE] ARG=     SLOPE=0.0  KAPPA=0.0  AT=}
  {RMSD} {RMSD [LABEL] [NUMERICAL_DERIVATIVES] REFERENCE=     TYPE=SIMPLE  [SQUARED]}
  {SORT} {SORT [LABEL] [NUMERICAL_DERIVATIVES] ARG=}
  {SPRINT} {SPRINT [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] DATA=     [SWITCH]}
  {TARGET} {TARGET [LABEL] [NUMERICAL_DERIVATIVES] TYPE=EUCLIDEAN  REFERENCE=}
  {TEMPLATE} {TEMPLATE ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TEMPLATE_DEFAULT_OFF_FLAG] [TEMPLATE_DEFAULT_ON_FLAG] TEMPLATE_COMPULSORY=     [TEMPLATE_OPTIONAL] [ATOMS]}
  {TETRAHEDRALPORE} {TETRAHEDRALPORE ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] DATA=     [MEAN] [LESS_THAN] [MORE_THAN] [BETWEEN] [HISTOGRAM] SIGMA=     KERNEL=gaussian  [OUTSIDE] [ATOMS] [PRINT_BOX] [FILE] [UNITS]}
  {TIME} {TIME [LABEL] [NUMERICAL_DERIVATIVES]}
  {TORSION} {TORSION ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [ATOMS] [AXIS] [VECTOR1] [VECTOR2] [COSINE]}
  {TORSIONS} {TORSIONS ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS] [BETWEEN] [HISTOGRAM]}
  {UNITS} {UNITS [LENGTH] [ENERGY] [TIME] [NATURAL]}
  {UPPER_WALLS} {UPPER_WALLS [LABEL] [NUMERICAL_DERIVATIVES] [STRIDE] ARG=     AT=     KAPPA=     OFFSET=0.0  EXP=2.0  EPS=1.0}
  {VOLUME} {VOLUME [LABEL] [NUMERICAL_DERIVATIVES]}
  {WHOLEMOLECULES} {WHOLEMOLECULES ENTITY=<atom_selection> [LABEL] STRIDE=1  [ENTITY] [RESIDUES] [MOLTYPE]}
  {WRAPAROUND} {WRAPAROUND AROUND=<atom_selection> ATOMS=<atom_selection> [LABEL] STRIDE=1  [AROUND] [ATOMS] GROUPBY=1}
  {XDISTANCES} {XDISTANCES ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS] [MAX] [ALT_MIN] [MEAN] [MIN] [LESS_THAN] [LOWEST] [HIGHEST] [MORE_THAN] [BETWEEN] [HISTOGRAM] [MOMENTS] [GROUP] [GROUPA] [GROUPB]}
  {XYDISTANCES} {XYDISTANCES ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS] [MAX] [ALT_MIN] [MEAN] [MIN] [LESS_THAN] [LOWEST] [HIGHEST] [MORE_THAN] [BETWEEN] [HISTOGRAM] [MOMENTS] [GROUP] [GROUPA] [GROUPB]}
  {XZDISTANCES} {XZDISTANCES ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS] [MAX] [ALT_MIN] [MEAN] [MIN] [LESS_THAN] [LOWEST] [HIGHEST] [MORE_THAN] [BETWEEN] [HISTOGRAM] [MOMENTS] [GROUP] [GROUPA] [GROUPB]}
  {YDISTANCES} {YDISTANCES ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS] [MAX] [ALT_MIN] [MEAN] [MIN] [LESS_THAN] [LOWEST] [HIGHEST] [MORE_THAN] [BETWEEN] [HISTOGRAM] [MOMENTS] [GROUP] [GROUPA] [GROUPB]}
  {YZDISTANCES} {YZDISTANCES ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS] [MAX] [ALT_MIN] [MEAN] [MIN] [LESS_THAN] [LOWEST] [HIGHEST] [MORE_THAN] [BETWEEN] [HISTOGRAM] [MOMENTS] [GROUP] [GROUPA] [GROUPB]}
  {ZDISTANCES} {ZDISTANCES ATOMS=<atom_selection> [LABEL] [NUMERICAL_DERIVATIVES] [NOPBC] [TOL] [MAXDERIVATIVES] [SERIAL] [LOWMEM] [TIMINGS] [NL_TOL] [NL_STRIDE] [VERBOSE] [ATOMS] [MAX] [ALT_MIN] [MEAN] [MIN] [LESS_THAN] [LOWEST] [HIGHEST] [MORE_THAN] [BETWEEN] [HISTOGRAM] [MOMENTS] [GROUP] [GROUPA] [GROUPB]}
}



# NOTE: The following keywords were known, but left out of the menu
#  ALPHABETA
#  ANGLES
#  AROUND
#  BIASVALUE
#  BRIDGE
#  CAVITY
#  CELL
#  CENTER
#  CLASSICAL_MDS
#  COMMITTOR
#  CONSTANT
#  DEBUG
#  DENSITY
#  DHENERGY
#  DIHCOR
#  DUMPATOMS
#  DUMPDERIVATIVES
#  DUMPFORCES
#  DUMPMASSCHARGE
#  DUMPMULTICOLVAR
#  DUMPPROJECTIONS
#  EFFECTIVE_ENERGY_DRIFT
#  ENERGY
#  ENSEMBLE
#  EXTENDED_LAGRANGIAN
#  EXTERNAL
#  FAKE
#  FIT_TO_TEMPLATE
#  FLUSH
#  FUNCPATHMSD
#  FUNCSUMHILLS
#  GPROPERTYMAP
#  HISTOGRAM
#  INCLUDE
#  INCYLINDER
#  INPLANEDISTANCES
#  LOAD
#  LOCAL_AVERAGE
#  MFILTER_BETWEEN
#  MFILTER_LESS
#  MFILTER_MORE
#  MULTI-RMSD
#  MULTICOLVARDENS
#  NLINKS
#  NOE
#  PATH
#  PBMETAD
#  PCARMSD
#  PCAVARS
#  POSITION
#  PRINT
#  PROPERTYMAP
#  PUCKERING
#  RANDOM_EXCHANGES
#  RDC
#  READ
#  RESTART
#  SORT
#  SPRINT
#  TEMPLATE
#  TETRAHEDRALPORE
#  TIME
#  TORSIONS
#  VOLUME
#  WHOLEMOLECULES
#  WRAPAROUND
#  XDISTANCES
#  XYDISTANCES
#  XZDISTANCES
#  YDISTANCES
#  YZDISTANCES
#  ZDISTANCES



