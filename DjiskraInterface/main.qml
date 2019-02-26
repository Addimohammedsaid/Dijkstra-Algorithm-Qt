import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick.Layouts 1.11
import DjiskraAlgo 1.0

ApplicationWindow {

    visible: true
    title: qsTr("Djisktra Alogrithm Interface 1.0")
    height: 400
    width: 399
    id: window

    readonly property int responsiveWidth: 400

    property string destination: "_"
    property string arriver: "_"
    property int    distancee : 0

            SwipeView  {
                id: swipeView
                currentIndex: 1
                anchors.fill: parent
                states: [

                    State {
                        when: window.width >= responsiveWidth
                        ParentChange { target: page1; parent: page1Container; }
                        ParentChange { target: page2; parent: page2Container; }
                        PropertyChanges { target: indicator; visible: hide }
                    }
                ]
                Item {

                     Page_1 {
                        id: page1
                           anchors.fill: parent
                    }
                }
                Item {
                    Page_2{
                        id: page2
                        anchors.fill: parent
                    }
                }
            }

            PageIndicator {
                id: indicator
                count: swipeView.count
                currentIndex: swipeView.currentIndex
                anchors.bottom: swipeView.bottom
                anchors.bottomMargin: 10
                anchors.horizontalCenter: swipeView.horizontalCenter
            }

            Row {
                id: splitView
                anchors.fill: parent
                Item {
                    id: page2Container
                    width: parent.width*0.25; height: parent.height
                }
                Item {
                    id: page1Container
                    width: parent.width*0.75; height: parent.height
                }
            }
        }
