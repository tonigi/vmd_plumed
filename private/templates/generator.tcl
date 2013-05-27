#!/bin/tclsh

# Template autogeneration for Plumed 2.  This file will generate (on
# stdout) "templates_list_v2_autogen.tcl" file.  The "unsubst" string
# contains a proc which returns a list, which defines the CURATED
# Templates menu to be used for Plumed 2. Right-hand sides can be
# specified manually (here), or contain %%XXXX placeholders that are
# expanded with the corresponding "plumed gentemplate" command.

# This script assumes that all of the actions have been expanded in
# templates.tmp/* and templates_full.tmp/* . This is done by
# generate_templates.sh .



set unsubst {
package provide plumed 2.1
namespace eval ::Plumed {
    variable templates_list_v2 {
	"Group definition"		"grp:   GROUP ATOMS=[chain A and name CA]"
	"Center of mass"		"com:   COM   ATOMS=[chain A and name CA]"
	"Ghost atom"			"%%GHOST"
	- -
	"Distance"			"%%DISTANCE"
	"Angle"				"%%ANGLE"
	"Torsion"			"%%TORSION"
        "Radius of gyration"		"%%GYRATION"
	"Electric dipole"		"%%DIPOLE"
	"Coordination"			"%%COORDINATION"
	- -
	"RMSD from reference structure" "%%RMSD"
	"S- and Z-path variables"	"%%PATHMSD"
	"Amount of \u03b1-helical structure"        
	                                "%%ALPHARMSD"
        "Amount of parallel-\u03b2 structure"       
	                                "%%PARABETARMSD"
	"Amount of antiparallel-\u03b2 structure"   
	                                "%%ANTIBETARMSD"
	"Distance RMSD"                 "%%DRMSD"
	- -
	"Polynomial function of CVs"	"%%COMBINE"
	"Piecewise function of CVs"	"%%PIECEWISE"
	"Arbitrary function of CVs"	"MATHEVAL ARG=cv1.x,cv2.y VAR=x,y FUNC=sin(x)+y   # If compiled-in"
	"Distance in CV space"		"%%TARGET"
	"Contact map"			"CONTACTMAP ATOMS1=1,2 ATOMS2=3,4 ... SWITCH=(RATIONAL R_0=1.5)"
	"Distance list"			"DISTANCES ATOMS1=3,5 ATOMS2=1,2 MIN={BETA=0.1}"
	"Coordination number list"	"%%COORDINATIONNUMBER"
	"Sort CV vector"		"%%SORT"
	- -
	"Restraint"			"%%RESTRAINT"
        "Moving restraint"		"%%MOVINGRESTRAINT"
	"Metadynamics"			"%%METAD"
	"External"			"%%EXTERNAL"
	"Adiabatic bias"		"%%ABMD"
	"Lower wall (allow higher)"	"%%LOWER_WALLS"
	"Upper wall (allow lower)"	"%%UPPER_WALLS"
	- -
	"Set system topology"           "%%MOLINFO"
	"Switch to VMD units"           "UNITS  LENGTH=A  ENERGY=kcal/mol  TIME=ps"
    }
}

# These are in the menu, but with a manual template
#       %%COM 
#       %%GROUP
#	%%CONTACTMAP 
#       %%DISTANCES 
#       %%UNITS

      
}


# Replace all the %%'s
while {[regexp {%%([A-Z_]+)} $unsubst pkw kw]} {
    set fc [open templates.tmp/$kw]
    set templ [string trim [gets $fc]]
    close $fc
#    puts stderr [format "%20s --> %s" $kw $templ]
    set unsubst [regsub $pkw $unsubst $templ]
    # Remember the set of replacements in the menu
    lappend replaced_kw_list $kw
}

# ----------------------------------------
# Part 1: the menu

puts "# AUTOGENERATED! DO NOT EDIT! on [exec date]"
puts "$unsubst"

# ----------------------------------------
# Part 2: popup to insert "short" template

# Generate keyword-help hashes for ALL keywords. 
puts "namespace eval ::Plumed {"
puts "  variable template_keyword_hash"
puts "  array set template_keyword_hash {"
foreach fkw [glob templates.tmp/*] {
    set kw [file tail $fkw]
    set fc [open $fkw]
    set templ [string trim [gets $fc]]
    close $fc
    # Hack to remove spaces in <some selection>
    set templ [string map { " selection>" _selection> } $templ]
    puts "  {$kw} {$templ}"
    # Keep a list of the templates we've seen
    lappend known_kw_list $kw
}
puts "  }"
puts "}"


# ----------------------------------------
# Part 3: popup to insert full template keywords

puts "namespace eval ::Plumed {"
puts "  variable template_full_hash"
puts "  array set template_full_hash {"
foreach fkw [glob templates_full.tmp/*] {
    set kw [file tail $fkw]
    set fc [open $fkw]
    set templ [string trim [gets $fc]]
    close $fc
    # Hack to remove spaces in <some selection>
    set templ [string map { " selection>" _selection> } $templ]
    puts "  {$kw} {$templ}"
}
puts "  }"
puts "}"


# ----------------------------------------
# Part 4: Remind of unused KWs (possibly new)

puts stderr "NOTE: Following keywords are known but may not be in menu"
foreach kw $known_kw_list {
    if {[lsearch $replaced_kw_list $kw]==-1} {
	puts  stderr "# %%$kw"
    }
}
puts stderr "\n\n"


