import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick.Layouts 1.11


Rectangle{

        color: "#62a8f8"
        border.width: 5;
        border.color: "white"
        width: parent.width

        Text {
            id: title
            x:(window.width>400)?40:110
            y: 30
            font.family:"Call of Ops Duty"
            text: "RESULTAT :"
            font.pointSize:40
            color: "white"

        }

        Affiche{
            id : tab
            width: parent.width
            anchors.verticalCenterOffset: -25
            anchors.horizontalCenterOffset: -50
            anchors.rightMargin: 37
            anchors.leftMargin: 28
            anchors.topMargin: 80
            anchors.centerIn: parent
            anchors.fill: parent
        }

}

