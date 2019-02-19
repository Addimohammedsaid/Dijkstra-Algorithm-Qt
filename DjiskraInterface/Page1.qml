import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick.Layouts 1.11


Background{

    anchors.fill : parent
    Node_shape{
        z:1
        id:node_A
        height: 60
        width: 60
        anchors.verticalCenterOffset: -8
        anchors.horizontalCenterOffset: -222
        anchors.centerIn: parent

    MouseArea {
           anchors.fill: parent
           onClicked: { parent.node_shape.border.color = 'red' }
       }

    Node_text{
        anchors.centerIn: parent
        node_text.text: "A"
        }
    }

    Node_shape{
        z:1
        id:node_B
        height: 100
        width: 100
        anchors.verticalCenterOffset: -118
        anchors.horizontalCenterOffset: -114
        anchors.centerIn: parent

        MouseArea {
               anchors.fill: parent
               onClicked: { parent.node_shape.border.color = 'red' }
           }

        Node_text{
            anchors.centerIn: parent
            node_text.text: "B"
            }
    }

    Node_shape{
        z:1
        id:node_C
        height: 100
        width: 100
        anchors.verticalCenterOffset: 112
        anchors.horizontalCenterOffset: -114
        anchors.centerIn: parent

        MouseArea {
               anchors.fill: parent
               onClicked: { parent.node_shape.border.color  = 'red' }
           }

        Node_text{
            anchors.centerIn: parent
            node_text.text: "C"
            }
    }

    Node_shape{
        z:1
        id:node_D
        height: 100
        width: 100
        anchors.verticalCenterOffset: -8
        anchors.horizontalCenterOffset: 5
        anchors.centerIn: parent

        MouseArea {
            anchors.rightMargin: 1
            anchors.bottomMargin: 0
            anchors.leftMargin: -1
            anchors.topMargin: 0
               onClicked: { parent.node_shape.border.color  = 'red' }
                anchors.fill: parent
           }

        Node_text{
            anchors.centerIn: parent
            node_text.text: "D"
            }
    }

    Node_shape{
        z:1
        id:node_E
        height: 100
        width: 100
        anchors.verticalCenterOffset: -118
        anchors.horizontalCenterOffset: 111
        anchors.centerIn: parent
        MouseArea {
               onClicked: { parent.node_shape.border.color  = 'red' }
                 anchors.fill: parent
        }

        Node_text{
            anchors.centerIn: parent
            node_text.text: "E"
            }
    }

    Node_shape{
        z:1
        id:node_F
        height: 100
        width: 100
        anchors.verticalCenterOffset: 112
        anchors.horizontalCenterOffset: 111
        anchors.centerIn: parent

        MouseArea {
               onClicked: { parent.node_shape.border.color  = 'red' }
                anchors.fill: parent
           }

        Node_text{
            anchors.centerIn: parent
            node_text.text: "F"
            }
    }

    Node_shape{
        z:1
        id:node_G
        height: 100
        width: 100
        anchors.verticalCenterOffset: -8
        anchors.horizontalCenterOffset: 231
        anchors.centerIn: parent
        MouseArea {
               onClicked: { parent.node_shape.border.color = 'red' }
                anchors.fill: parent
           }

        Node_text{
            anchors.centerIn: parent
            node_text.text: "G"
            }

    }

    Node_line{
          id : a_b
          anchors.centerIn: node_A
          rotation: -45
          node_line.width : 150
        }

    Node_line{
          id : a_c
          anchors.centerIn: node_A
          rotation: 45
          node_line.width : 150
        }

    Node_line{
          id : b_e
          anchors.centerIn: node_B
          rotation: 0
          node_line.width : 200
        }

    Node_line{
          id : b_d
          anchors.centerIn: node_B
          rotation: 45
          node_line.width : 150
        }

    Node_line{
          id : c_d
          anchors.centerIn: node_C
          rotation: -45
          node_line.width : 150
        }

    Node_line{
          id : e_g
          anchors.centerIn: node_E
          rotation: 45
          node_line.width : 150
        }

    Node_line{
          id : d_e
          anchors.centerIn: node_D
          rotation: -45
          node_line.width : 160
        }

    Node_line{
          id : c_f
          anchors.centerIn: node_C
          rotation: 0
          node_line.width : 200
        }

    Node_line{
          id : f_g
          anchors.centerIn: node_F
          rotation: -45
          node_line.width : 150
        }
}

