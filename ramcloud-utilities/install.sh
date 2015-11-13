#! /bin/bash

# Copyright (c) 2015 Stanford University
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR(S) DISCLAIM ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL AUTHORS BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

################################################################################
# install script for RAMCloud related utilities tools

# Remember current directory so we can go back
WD="$(pwd)"
# Move the scripts directory for simiplicity
cd "$( dirname "${BASH_SOURCE[0]}" )"

CURDIR="$(pwd)"
BINDIR=$1

echo "---> Installing RAMCloud utility scripts"

mkdir db
chmod 777 db
ln -s $CURDIR/rcdo $BINDIR/rcdo
ln -s $CURDIR/rcdop $BINDIR/rcdop
ln -s $CURDIR/rckill $BINDIR/rckill
ln -s $CURDIR/rckillp $BINDIR/rckillp
ln -s $CURDIR/rcps $BINDIR/rcps
ln -s $CURDIR/rcremount $BINDIR/rcremount

echo "---> Done"

# Back to original working dirctory
cd $WD