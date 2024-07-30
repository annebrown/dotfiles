# Find the Cursor
export DISPLAY=:0.0

# Working Geometries:
# 	200x200+500+2000
#	+100+0"
#   120x100+20-2

GEOMETRY="120x100+0-0"

xeyes -geometry $GEOMETRY

printf "Current GEOMETRY: $GEOMETRY\n"