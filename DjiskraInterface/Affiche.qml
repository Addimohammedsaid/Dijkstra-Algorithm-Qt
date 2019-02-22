import QtQuick 2.0

Item {

    property  alias _arriver: arriver
    property  alias _depart: depart
    property  alias _distance: distance

    Rectangle {
        x: 13
        y: 16
        width: 200
        height: 60
        border.color: "white"
        border.width: 2
        color: "#2c2c2c"

        Text {
            id: depart
            x: 20
            y: 30
            width: 29
            height: 13
             font.pointSize: 15
            color: "white"
            text: qsTr(" ")
        }

        Text {
            id: arriver
            x: 90
            y: 30
            width: 29
            height: 13
            color: "white"
            font.pointSize: 15
            text: qsTr(" ")
        }


        Text {
            id: distance
            x: 150
            y: 30
            width: 29
            height: 13
            color: "white"
            font.pointSize: 15
            text: qsTr(" ")
        }

        Text {
            x: 20
            y: 5
            width: 29
            height: 13
            color: "white"
            text: qsTr("Depart")
        }

        Text {
            x: 90
            y: 5
            width: 29
            height: 13
            color: "white"
            text: qsTr("Arriver")
        }


        Text {
            x: 150
            y: 5
            width: 29
            height: 13
            color: "white"
            text: qsTr("Distance")
        }

        Rectangle{
            anchors.centerIn: parent
            color: "white"
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 30
            width: 2
            height: 60
        }

        Rectangle{
            anchors.centerIn: parent
            color: "white"
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: -30
            width: 2
            height: 60
        }

        Rectangle{
            anchors.centerIn: parent
            color: "white"
            anchors.verticalCenterOffset: -10
            anchors.horizontalCenterOffset: 0
            width: 200
            height: 2
        }
    }
}





/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
