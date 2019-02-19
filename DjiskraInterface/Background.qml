import QtQuick 2.0

Item {


    Rectangle{

        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#2c2c2c"
            }

            GradientStop {
                position: 0.707
                color: "#2c2c2c"
            }

            GradientStop {
                position: 1
                color: "#111111"
            }

        }
        border.width: 5;
        border.color: "white"
        anchors.fill: parent
    }

}
