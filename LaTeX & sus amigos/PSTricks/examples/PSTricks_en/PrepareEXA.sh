#!/bin/sh
perl -pi -e '~s/article/article/g' *
perl -pi -e '~s/book/book/g' *
perl -pi -e '~s/beamer/beamer/g' *
perl -pi -e '~s/powerdot/powerdot/g' *
perl -pi -e '~s/\//g' *
perl -pi -e '~s/\//g' *

