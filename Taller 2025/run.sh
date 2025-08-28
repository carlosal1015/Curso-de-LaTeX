#!/bin/bash

mkdir -p public

pushd clase1
sed -i 's/% handout/handout/' ../preamble.tex
sed -i 's/\\input{forms}/% \\input{forms}/' main.tex
sed -i 's/\\input{toc}/% \\input{toc}/' main.tex
sed -i 's/\\section/% \\section/' sections/*.tex
arara main
arara notes
mv notes.pdf t1_notes.pdf
mv t1_notes.pdf ../public
sed -i 's/% \\pgfpagesuselayout/\\pgfpagesuselayout/' ../preamble.tex
arara main
mv main.pdf t1_x4.pdf
mv t1_x4.pdf ../public
sed -i 's/handout/% handout/' ../preamble.tex
sed -i 's/\\pgfpagesuselayout/% \\pgfpagesuselayout/' ../preamble.tex
sed -i 's/% \\input{forms}/\\input{forms}/' main.tex
sed -i 's/% \\input{toc}/\\input{toc}/' main.tex
sed -i 's/% \\section/\\section/' sections/*.tex
arara main
mv main.pdf t1.pdf
mv t1.pdf ../public
popd

pushd clase2
sed -i 's/% handout/handout/' ../preamble.tex
sed -i 's/\\input{toc}/% \\input{toc}/' main.tex
sed -i 's/\\section/% \\section/' sections/*.tex
arara main
arara notes
mv notes.pdf t2_notes.pdf
mv t2_notes.pdf ../public
sed -i 's/% \\pgfpagesuselayout/\\pgfpagesuselayout/' ../preamble.tex
arara main
mv main.pdf t2_x4.pdf
mv t2_x4.pdf ../public
sed -i 's/handout/% handout/' ../preamble.tex
sed -i 's/\\pgfpagesuselayout/% \\pgfpagesuselayout/' ../preamble.tex
sed -i 's/% \\input{toc}/\\input{toc}/' main.tex
sed -i 's/% \\section/\\section/' sections/*.tex
arara main
mv main.pdf t2.pdf
mv t2.pdf ../public
popd

pushd clase3
sed -i 's/% handout/handout/' ../preamble.tex
sed -i 's/\\input{toc}/% \\input{toc}/' main.tex
sed -i 's/\\section/% \\section/' sections/*.tex
arara main
arara notes
mv notes.pdf t3_notes.pdf
mv t3_notes.pdf ../public
sed -i 's/% \\pgfpagesuselayout/\\pgfpagesuselayout/' ../preamble.tex
arara main
mv main.pdf t3_x4.pdf
mv t3_x4.pdf ../public
sed -i 's/handout/% handout/' ../preamble.tex
sed -i 's/\\pgfpagesuselayout/% \\pgfpagesuselayout/' ../preamble.tex
sed -i 's/% \\input{toc}/\\input{toc}/' main.tex
sed -i 's/% \\section/\\section/' sections/*.tex
arara main
mv main.pdf t3.pdf
mv t3.pdf ../public
popd

pushd clase4
sed -i 's/% handout/handout/' ../preamble.tex
sed -i 's/\\input{toc}/% \\input{toc}/' main.tex
sed -i 's/\\section/% \\section/' sections/*.tex
arara main
arara notes
mv notes.pdf t4_notes.pdf
mv t4_notes.pdf ../public
sed -i 's/% \\pgfpagesuselayout/\\pgfpagesuselayout/' ../preamble.tex
arara main
mv main.pdf t4_x4.pdf
mv t4_x4.pdf ../public
sed -i 's/handout/% handout/' ../preamble.tex
sed -i 's/\\pgfpagesuselayout/% \\pgfpagesuselayout/' ../preamble.tex
sed -i 's/% \\input{toc}/\\input{toc}/' main.tex
sed -i 's/% \\section/\\section/' sections/*.tex
arara main
mv main.pdf t4.pdf
mv t4.pdf ../public
popd
