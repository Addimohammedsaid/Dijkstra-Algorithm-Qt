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

    property variant array : ["A","B","C","D","E","F","G"]
    property variant idNode: [node_A,node_B,node_C,node_D,node_E,node_F,node_G]
    property variant idLine: [a_c,a_b,c_d,b_d,b_e,c_f,d_e,e_g,f_g]

    property variant distance_tab: [input_a,input_b,input_c,input_d,input_e,input_f,input_g]
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

        onDistanceChanged: {
            destination = djiska.src
            arriver = djiska.dest
            distancee = djiska.distance
        }
    }

    Node_shape{
        z:1
        id:node_A
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: -8
        anchors.horizontalCenterOffset: (window.width>400)?-222:-222/2
        anchors.centerIn: parent

    MouseArea {
           anchors.fill: parent
           onClicked: {
              // input_a.text = mouse.x
             // input_b.text = mouse.y
             parent.node_shape.border.color = getHandColor(0)
           }
       }

    Node_text{
        anchors.centerIn: parent
        node_text.text: array[0]
        }

    TextInput{
        id : input_a
        text: ""
        color: "white"
        font.pointSize: 20
        anchors.centerIn:parent
        anchors.verticalCenterOffset: 60
        }
    }

    Node_shape{
        z:1
        id:node_B
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset:-118
        anchors.horizontalCenterOffset: (window.width>400)?-114:-114/2
        anchors.centerIn: parent

        MouseArea {
               anchors.fill: parent
               onClicked: {
                   parent.node_shape.border.color = getHandColor(1)
               }
           }

        Node_text{
            anchors.centerIn: parent
            node_text.text: array[1]
            }

        TextInput{
            id : input_b
            text: ""
            color: "white"
            font.pointSize: 20
            anchors.centerIn:parent
            anchors.verticalCenterOffset: 60
            }
    }

    Node_shape{
        z:1
        id:node_C
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: 112
        anchors.horizontalCenterOffset: (window.width>400)?-114:-114/2
        anchors.centerIn: parent

        MouseArea {
               anchors.fill: parent
               onClicked: {
                   parent.node_shape.border.color = getHandColor(2)
               }
           }

        Node_text{
            anchors.centerIn: parent
            node_text.text: array[2]
            }

        TextInput{
            id : input_c
            text: ""
            color: "white"
            font.pointSize: 20
            anchors.centerIn:parent
            anchors.verticalCenterOffset: 60
            }
    }

    Node_shape{
        z:1
        id:node_D
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: -8
        anchors.horizontalCenterOffset: (window.width>400)?5:5/2
        anchors.centerIn: parent

        MouseArea {
            anchors.rightMargin: 1
            anchors.bottomMargin: 0
            anchors.leftMargin: -1
            anchors.topMargin: 0
            onClicked: {
                parent.node_shape.border.color = getHandColor(3)}
                anchors.fill: parent
           }

        Node_text{
            anchors.centerIn: parent
            node_text.text: array[3]
            }

        TextInput{
            id : input_d
            text: ""
            color: "white"
            font.pointSize: 20
            anchors.centerIn:parent
            anchors.verticalCenterOffset: 60
            }
    }

    Node_shape{
        z:1
        id:node_E
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: -118
        anchors.horizontalCenterOffset: (window.width>400)?111:111/2
        anchors.centerIn: parent
        MouseArea {
            onClicked: {
                parent.node_shape.border.color = getHandColor(4)}
                 anchors.fill: parent
        }

        Node_text{
            anchors.centerIn: parent
            node_text.text: array[4]
            }

        TextInput{
            id : input_e
            text: ""
            color: "white"
            font.pointSize: 20
            anchors.centerIn:parent
            anchors.verticalCenterOffset: 60
            }
    }

    Node_shape{
        z:1
        id:node_F
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: 112
        anchors.horizontalCenterOffset: (window.width>400)?111:111/2
        anchors.centerIn: parent

        MouseArea {
            onClicked: {
                parent.node_shape.border.color = getHandColor(5)}
                anchors.fill: parent
           }

        Node_text{
            anchors.centerIn: parent
            node_text.text: array[5]
            }

        TextInput{
            id : input_f
            text: ""
            color: "white"
            font.pointSize: 20
            anchors.centerIn:parent
            anchors.verticalCenterOffset: 60
            }
    }

    Node_shape{
        z:1
        id:node_G
        height: parent.height*0.2
        width: parent.width*0.2
        anchors.verticalCenterOffset: -8
        anchors.horizontalCenterOffset: (window.width>400)?231:231/2
        anchors.centerIn: parent

        MouseArea {
            onClicked: {
                parent.node_shape.border.color = getHandColor(6)}
                anchors.fill: parent
           }

        Node_text{
            width: 0
            height: 0
            anchors.centerIn: parent
            node_text.text: array[6]
            }

        TextInput{
            id : input_g
            text: ""
            color: "white"
            font.pointSize: 20
            anchors.centerIn:parent
            anchors.verticalCenterOffset: 60
            }

    }

    Node_line{
          id : a_b
          anchors.centerIn: node_A
          rotation: (window.width>400)?-45:-65
          node_line.width : (window.width>400)?150:130
        }

    Node_line{
          id : a_c
          anchors.centerIn: node_A
          rotation:(window.width>400)?45:65
          node_line.width : 150
          node_line.x: 0
        }

    Node_line{
          id : b_e
          anchors.centerIn: node_B
          rotation: 0
          node_line.width : (window.width>400)?200:130
          node_line.x: 0
        }

    Node_line{
          id : b_d
          anchors.centerIn: node_B
          rotation:(window.width>400)?45:65
          node_line.width : (window.width>400)?150:130
        }

    Node_line{
          id : c_d
          anchors.centerIn: node_C
          rotation: (window.width>400)?-45:-65
          node_line.width : (window.width>400)?150:130
        }

    Node_line{
          id : e_g
          anchors.centerIn: node_E
          rotation:(window.width>400)?45:65
          node_line.width : (window.width>400)?150:130
        }

    Node_line{
          id : d_e
          anchors.centerIn: node_D
          rotation: (window.width>400)?-45:-65
          node_line.width : (window.width>400)?150:130
        }

    Node_line{
          id : c_f
          anchors.centerIn: node_C
          rotation: 0
          node_line.width : (window.width>400)?200:130
        }

    Node_line{
          id : f_g
          anchors.centerIn: node_F
          rotation: (window.width>400)?-(window.width)*0.041:-(window.width)*0.1615
          node_line.width : (window.width>400)?150:130
        }


    RoundButton{
        id : resetButton
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        width: parent.width*0.1
        anchors.margins: 50
        height: parent.height*0.08
        text: "Reset"
        highlighted: true
        font.pointSize: 15

        onClicked: {
            reset()
        }
    }

    RoundButton{
        id : changeButton
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        width: parent.width*0.1
        anchors.margins: 50
        height: parent.height*0.08
        text: "Change"
        highlighted: true
        font.pointSize: 15

        onClicked: {
            for(var i in array){
            if(array[i]===djiska.src)change(i)
        }
    }
}
    function getHandColor(a)
    {
        count+=1

        if(count==1){

            djiska.src = array[a]

            for(var i in distance_tab ){
                distance_tab[i].text = djiska.array_distance(a,i)
            }

            return active_src

        }
        else if (count==2){
            djiska.dest = array[a]
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

        for(var k in distance_tab ){
            distance_tab[k].text = ""
        }

        djiska.initialiser();
    }

    function change(a){

       for(var i in distance_tab ){

            djiska.array_setDistance(a,i,distance_tab[i].text)
        }
    }

    Text {
        id: version
        text: qsTr("Version 1.0 v
UNDER MIT LICENSE")
        anchors.centerIn: node_F
        anchors.horizontalCenterOffset: 180
        anchors.verticalCenterOffset:110
        color: "white"

    }

}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
