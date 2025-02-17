#!/usr/bin/env bash

VERSION=$1

if [ -z "$VERSION" ]
then
    echo "Syntax: $0 VERSION (without initial 'v')"

    exit 1
fi

starts_with_v=$(echo $VERSION | grep '^v')
if [ -n "$starts_with_v" ]
then
    echo "The version should be without the initial 'v'"
    exit 1
fi

echo "Copy the following lines at the top of CHANGELOG.md"
echo ""
echo ""
echo "## $VERSION (Unreleased)"
echo ""
echo "Changes in progress for v$VERSION are available at [.changes/v$VERSION](https://github.com/vmware/go-vcloud-director/tree/master/.changes/v$VERSION) until the release."
echo ""

