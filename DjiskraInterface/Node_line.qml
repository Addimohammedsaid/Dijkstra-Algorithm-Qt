import QtQuick 2.0

Item {

    property alias node_line: line

    Rectangle{
        id : line
        width: 200
        height: 10
        color: "White"
        border.color: "Green"
        border.width: 2
    }
}
