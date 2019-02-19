import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick.Layouts 1.11

ApplicationWindow {

    visible: true
    title: qsTr("Djisktra Alogrithm Interface 1.0")
    height: 400
    width: 399
    id: window

    readonly property int responsiveWidth: 400

        SwipeView  {
            id: swipeView
            currentIndex: 1
            anchors.fill: parent
            states: [

                State {
                    when: window.width >= responsiveWidth
                    ParentChange { target: contacts; parent: contactsContainer; }
                    ParentChange { target: chat; parent: chatContainer; }
                    PropertyChanges { target: indicator; visible: hide }
                }
            ]
            Item {

                 Page_1 {
                    id: contacts
                    anchors.fill: parent
                }
            }
            Item {
                Page_2{
                    id: chat
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
                id: chatContainer
                width: parent.width*0.25; height: parent.height
            }
            Item {
                id: contactsContainer
                width: parent.width*0.75; height: parent.height
            }
        }
    }
