import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.12
import QtPositioning 5.5
import QtLocation 5.6
import QtQuick.Layouts 1.1

Window {
    id: mainWin
    width: 640
    height: 480
    visible: true
    title: qsTr("Video player")
    Rectangle {
        id: win
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 20;
        height: parent.height - parent.height/4
        border.width: 5
        anchors.topMargin: 10
        color: "red"
        Image {
           anchors.fill: parent
            id: img_btn_play
            source: "qrc:/Img/film.jpeg"
        }
    }

    GridLayout {
        id: grdLayout
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 50
        Button {
            id: btn_play
            width: 60
            height: 60
            Layout.row: 0
            Layout.column: 0
            Image {
                anchors.fill: parent
                id: img_btn_film
                source: "qrc:/icons/play.png"
            }
            background: Rectangle {
                    implicitWidth: 60
                    implicitHeight: 60
                    radius: 50
                    color: btn_play.pressed ? "grey" : "white"
                }
        }
        Button {
            id: btn_pause
            width: 60
            height: 60
            Layout.row: 0
            Layout.column: 1
            Image {
                anchors.fill: parent
                id: img_btn_pause
                source: "qrc:/icons/pause.png"
            }
            background: Rectangle {
                    implicitWidth: 60
                    implicitHeight: 60
                    radius: 50
                    color: btn_pause.pressed ? "grey" : "white"
                }
        }
        Button {
            id: btn_stop
            width: 60
            height: 60
            Layout.row: 0
            Layout.column: 2
            Image {
                anchors.fill: parent
                id: img_btn_stop
                source: "qrc:/icons/stop.png"
            }
            background: Rectangle {
                    implicitWidth: 60
                    implicitHeight: 60
                    radius: 50
                    color: btn_stop.pressed ? "grey" : "white"
                }
        }
        Button {
            id: btn_back
            width: 60
            height: 60
            Layout.row: 0
            Layout.column: 3
            background: Rectangle {
                    implicitWidth: 60
                    implicitHeight: 60
                    radius: 50
                    color: btn_back.pressed ? "grey" : "white"
                }
            Image {
                anchors.fill: parent
                id: img_btn_back
                source: "qrc:/icons/back.png"
            }
        }
        Button {
            id: btn_next
            width: 60
            height: 60
            Layout.row: 0
            Layout.column: 4
            Image {
                anchors.fill: parent
                id: img_btn_next
                source: "qrc:/icons/next.png"
            }
            background: Rectangle {
                    implicitWidth: 60
                    implicitHeight: 60
                    radius: 50
                    color: btn_next.pressed ? "grey" : "white"
                }
        }
     }
    ProgressBar{
        id: progressBar
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width - 20
        height: 40
        value: 0.5
    }

}
