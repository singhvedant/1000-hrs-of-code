calculate_distance() {
    local x1=$1
    local y1=$2
    local x2=$3
    local y2=$4

    echo "scale=2; sqrt(($x2 - $x1)^2 + ($y2 - $y1)^2)" | bc
}

get_point() {
    read -p "Enter the X coordinate of point $1: " x
    read -p "Enter the Y coordinate of point $1: " y
    echo $x $y
}

echo "Line Segment Comparator"

echo "Enter the coordinates for the first line segment"
point1=($(get_point 1X))
point2=($(get_point 1Y))

echo "Enter the coordinates for the second line segment"
point3=($(get_point 2X))
point4=($(get_point 2Y))

length1=$(calculate_distance ${point1[0]} ${point1[1]} ${point2[0]} ${point2[1]})
length2=$(calculate_distance ${point3[0]} ${point3[1]} ${point4[0]} ${point4[1]})

echo "Length of the first line segment: $length1"
echo "Length of the second line segment: $length2"

if (( $(echo "$length1 == $length2" | bc) )); then
    echo "The line segments are of equal length."
elif (( $(echo "$length1 > $length2" | bc) )); then
    echo "The first line segment is longer."
else
    echo "The second line segment is longer."
fi

