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
# install script for ipmi tools

# Remember current directory so we can go back
WD="$(pwd)"

SCRIPTDIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
BINDIR="$(cd $1 && pwd)"

# Move the scripts directory for simiplicity
cd $SCRIPTDIR

echo "---> Installing IPMI tools"

ln -s $SCRIPTDIR/rcreboot $BINDIR/rcreboot
ln -s $SCRIPTDIR/rcrebootall $BINDIR/rcrebootall
ln -s $SCRIPTDIR/rcshutdown $BINDIR/rcshutdown
ln -s $SCRIPTDIR/rcstartup $BINDIR/rcstartup
ln -s $SCRIPTDIR/rcstatus $BINDIR/rcstatus
ln -s $SCRIPTDIR/rczap $BINDIR/rczap

echo "---> Done"

# Back to original working dirctory
cd $WD