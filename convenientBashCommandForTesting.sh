tests=~/syllabus/project/tests; 
project=~/project-dtroberts1; 
outdir=$tests/out; 
mkdir -p $outdir; 
for i in $tests/*.pl0; 
	do stem=$(basename -- ${i%%.pl0});
$project/compiler --typecheck $i > $outdir/${stem}.types 2>&1; 
echo $stem;
diff $tests/${stem}.types $outdir/${stem}.types | tee $outdir/${stem}.types_diff; 
done
