#!/usr/bin/env bash

PICTURE=$1

BLUR="10x5"

scrot $PICTURE
convert $PICTURE -blur $BLUR $PICTURE
i3lock -i $PICTURE
rm $PICTURE
