import QtQuick 2.0

Item {

     property alias node_text :_text

        Text {
             id : _text
             anchors.centerIn: parent
             color: "#ffffff"
             text:"A"
             font.pointSize: (window.width<400)?20:40
        }
}
