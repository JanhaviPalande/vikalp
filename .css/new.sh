for file in *.less
do
	lessc ${file} > ${file%.less}.css
done
