import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick.Layouts 1.11
import DjiskraAlgo 1.0

Background{

    property int count : 0

    property string  inactive   : "green"
    property string  active_src : "red"
    property string  active_dest: "blue"

    property variant array:  ["A","B","C","D","E","F","G"]
    property variant idNode: [node_A,node_B,node_C,node_D,node_E,node_F,node_G]
    property variant idLine: [a_c,a_b,c_d,b_d,b_e,c_f,d_e,e_g,f_g]
    property variant _idLine:[[a_c,a_b],[a_b,b_d,b_e],[c_d,c_f,a_c],[c_d,d_e,b_d],[d_e,b_e,e_g],[c_f,f_g],[f_g,e_g]]
    property variant chemin: []


    Djiskralgo{

        id:djiska

        onPathChanged: {

            chemin = djiska.path;

            for(var i in chemin){

                idNode[chemin[i]].node_shape.border.color = active_dest

                for(var j in _idLine[chemin[i]]){

                    for (var k in _idLine[chemin[i-1]]){

                        if(_idLine[chemin[i]][j] === _idLine[chemin[i-1]][k]){

                             _idLine[chemin[i]][j].node_line.color = active_dest
                             _idLine[chemin[i]][j].node_line.border.color = active_dest
                        }
                    }
                }

            }
       }

        onDistanceChanged :{
            tab._depart.text = djiska.dest
            tab._arriver.text = djiska.src
            tab._distance.text = djiska.distance
        }
    }

    anchors.fill : parent

    Affiche{
        id : tab
        anchors.centerIn: parent
        anchors.fill: parent

    }

    Node_shape{
        z:1
        id:node_A
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: -8
        anchors.horizontalCenterOffset: -222
        anchors.centerIn: parent

    MouseArea {
           anchors.fill: parent
           onClicked: {
               parent.node_shape.border.color = getHandColor("A")
           }
       }

    Node_text{
        anchors.centerIn: parent
        node_text.text: "A"
        }
    }

    Node_shape{
        z:1
        id:node_B
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: -118
        anchors.horizontalCenterOffset: -114
        anchors.centerIn: parent

        MouseArea {
               anchors.fill: parent
               onClicked: {
                   parent.node_shape.border.color = getHandColor("B")
               }
           }

        Node_text{
            anchors.centerIn: parent
            node_text.text: "B"
            }
    }

    Node_shape{
        z:1
        id:node_C
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: 112
        anchors.horizontalCenterOffset: -114
        anchors.centerIn: parent

        MouseArea {
               anchors.fill: parent
               onClicked: {
                   parent.node_shape.border.color = getHandColor("C")}
           }

        Node_text{
            anchors.centerIn: parent
            node_text.text: "C"
            }
    }

    Node_shape{
        z:1
        id:node_D
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: -8
        anchors.horizontalCenterOffset: 5
        anchors.centerIn: parent

        MouseArea {
            anchors.rightMargin: 1
            anchors.bottomMargin: 0
            anchors.leftMargin: -1
            anchors.topMargin: 0
            onClicked: {
                parent.node_shape.border.color = getHandColor("D")}
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
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: -118
        anchors.horizontalCenterOffset: 111
        anchors.centerIn: parent
        MouseArea {
            onClicked: {
                parent.node_shape.border.color = getHandColor("E")}
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
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: 112
        anchors.horizontalCenterOffset: 111
        anchors.centerIn: parent

        MouseArea {
            onClicked: {
                parent.node_shape.border.color = getHandColor("F")}
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
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: -8
        anchors.horizontalCenterOffset: 231
        anchors.centerIn: parent

        MouseArea {
            onClicked: {
                parent.node_shape.border.color = getHandColor("G")}
                anchors.fill: parent
           }

        Node_text{
            width: 0
            height: 0
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


    RoundButton{
        id : resetButton
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        width: parent.width*0.08
        anchors.margins: 10
        height: parent.height*0.08
        text: "Reset"
        highlighted: true
        font.pointSize: 15

        onClicked: {
            reset()
        }
    }

    function getHandColor(a)
    {
        count+=1
        if(count==1){
            djiska.src = a
            return active_src

        }
        else if (count==2){
            djiska.dest = a
            return active_dest
        }
        else{
            reset()
            return inactive
        }
    }

    function reset(){

        count=0

        for (var i in idNode){
            idNode[i].node_shape.border.color = inactive
        }
        for (var j in idLine){
            idLine[j].node_line.color = 'white'
            idLine[j].node_line.border.color = inactive
        }

        djiska.initialiser();
    }

}








/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
