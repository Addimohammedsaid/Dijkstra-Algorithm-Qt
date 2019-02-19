import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick.Layouts 1.11


Item{

     readonly property int lay : 400

    Rectangle {
        id : rect_page2
        border.width: 5;
        border.color: "white"
        anchors.fill: parent
        anchors.centerIn: parent
        color: "#62a8f8"

        Text {
            id: sidebar_text
            font.pointSize: (window.width>lay)?rect_page2.width*0.06:rect_page2.width*0.05
            anchors.fill : rect_page2
            anchors.centerIn: rect_page2
            anchors.top: rect_page2.top
            anchors.topMargin: 12
            anchors.leftMargin:(window.width>lay)?rect_page2.width*0.20:rect_page2.width*0.25
            color: "white"
            text: qsTr("Djiskra Algorithm ")
            font.bold: true
        }

        Rectangle{
            x: (window.width>lay)?parent.width*0.31:parent.width*0.20
            y: 50
            width:(window.width>lay)?parent.width*0.34:parent.width * 0.55
            color: "white"
            height: parent.height*0.040

            TextInput{
                id :source_input
                x: 3
                y: 3
                width: parent.width
                height: parent.height
               // onTextChanged:djiska.src = text
                font.pointSize:(window.width>lay)?parent.width*0.1:9
            }
        }
}

    Rectangle {
        x: (window.width>lay)?parent.width*0.31:parent.width*0.20
        y: 90
        width:(window.width>lay)?parent.width*0.34:parent.width * 0.55
        height: parent.height*0.038
        color: "#ffffff"

        TextInput {
            id :destination_input
            x: 2
            y: 3
            width: parent.width
            height: parent.height
            font.pointSize:(window.width>lay)?parent.width*0.1:9
        }
    }

    RoundButton{
        id : find
        x: (window.width>lay)?parent.width*0.26:parent.width*0.17
        y: 130
        width:(window.width>lay)?parent.width*0.44:parent.width * 0.60
        height: parent.height*0.1
        text: "Find"
        highlighted: true
        font.pointSize: (window.width>lay)?15:23
    }
}


/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}N
}
 ##^##*/
