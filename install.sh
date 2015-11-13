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
# Top-level install script for rctools

# Remember current directory so we can go back
WD="$(pwd)"

if [ $# -eq 1 ]
then
    BINDIR="$(cd $1 && pwd)"
    
    # Move the scripts directory for simiplicity
    cd "$( dirname "${BASH_SOURCE[0]}" )"
    
    echo "====== Installing rctools ======"
    
    ./rcres/install.sh $BINDIR
    
    echo "=== Done - rctools installed ==="
else
    echo "Error: Missing target bin directory."  
fi

# Back to original working dirctory
cd $WD
