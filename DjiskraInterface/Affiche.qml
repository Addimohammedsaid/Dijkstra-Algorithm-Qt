import QtQuick 2.0

Item {

    width: parent.width

    Rectangle {
        y: 16
        x : 3
        width: parent.width
        height: 200
        border.color: "white"
        border.width: 2
        color: "#2c2c2c"


        Text {
            x: (window.width>400)?20:50
            y: (window.width>400)?30:30
            width: 29
            height: 13
            font.pointSize: (window.width>400)?15:20
            color: "white"
            text: destination
        }

        Text {
            x: (window.width>400)?80:150
            y: (window.width>400)?30:30
            width: 29
            height: 13
            color: "white"
            font.pointSize:(window.width>400)?15:20
            text: arriver
        }


        Text {
            x: (window.width>400)?140:250
            y: (window.width>400)?30:30
            width: 29
            height: 13
            color: "white"
            font.pointSize: (window.width>400)?15:20
            text: distancee
        }


        Text {
                   x: (window.width>400)?10:40
                   y: (window.width>400)?5:5
                    width: 29
                    font.pointSize:(window.width>400)?10:15
                    color: "white"
                    text: qsTr("Depart")
                }

                Text {
                    x: (window.width>400)?70:140
                    y: (window.width>400)?5:5
                    width: 29
                    height: 15
                    font.pointSize: (window.width>400)?10:15
                    color: "white"
                    text: qsTr("Arriver")
                }


                Text {
                    x: (window.width>400)?130:240
                    y: (window.width>400)?5:5
                    width: 29
                    height: 15
                    font.pointSize: (window.width>400)?10:15
                    color: "white"
                    text: qsTr("Distance")
                }

  }
}




/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
