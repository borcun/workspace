#! /opt/homebrew/bin/gawk -f

BEGIN { print "== prolog ==" }
{
    print "number of fields: " NF

    if ((2 == NF && $2 ~ "orl") || (3 == NF && $3 ~ "orl")) {
	print " - found text: " $1
    }

    print "NR: " NR ", FNR: " FNR
}

END { print "== epilog ==" }
