#!/bin/bash

mkdir -p public

function clase1() {
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
}

function clase2() {
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
}

function clase3() {
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
}

function clase4() {
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
}

function practice() {
    pushd practice
    arara main
    mv main.pdf sheet.pdf
    mv sheet.pdf ../public
    popd
}

function all() {
    clase1
    clase2
    clase3
    clase4
    practice
    # wait
}

function clean() {
    rm -f public/*
}

function lint() {
    tex-fmt
}

case "$1" in
    clase1)
        clase1
        ;;
    clase2)
        clase2
        ;;
    clase3)
        clase3
        ;;
    clase4)
        clase4
        ;;
    practice)
        practice
        ;;
    all)
        all
        ;;
    clean)
        clean
        ;;
    lint)
        lint
        ;;
    *)
        echo "Usage: $0 {clase1|clase2|clase3|clase4|all|clean|lint}"
        exit 1
        ;;
esac

