#!/bin/bash
FILE=$1
SAMPLEID=${FILE%.fasta.gbf}

sed '/^ORIGIN/,/^LOCUS/{/^ORIGIN/!{/^LOCUS/!d}}' ${FILE} \
| sed '/^ORIGIN/d' > ${SAMPLEID}_noORIGIN.gbf
