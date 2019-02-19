import QtQuick 2.0

    Item {

        property alias node_shape: shape

        Rectangle{

            id: shape
            anchors.centerIn: parent

            height: parent.width*0.6
            width: parent.width*0.6

            color: "#363232"
            border.color: "Green"
            border.width: 4
            radius: 100

        }
  }

