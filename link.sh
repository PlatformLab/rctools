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
# helper script that links and checks the provided script

TARGET=$1
LINK=$2

NAME="$(basename $LINK)"

if [ -L $LINK ]
then
    rm $LINK
fi

if [ -a $LINK ]
then
    echo "Error: Can't install $LINK : File exists"
else
    ln -s $TARGET $LINK
fi

echo "---> Checking installation of $NAME"

which rcres > /dev/null 2>&1
if [ $? -ne 0 ]
then
    echo "Warning: $LINK not a command in PATH"
fi