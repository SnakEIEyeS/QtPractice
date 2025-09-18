import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntax")

    property string textToShow: "Inited"

    Row {
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id: idRectRed
            width: 75
            height: 75
            color: "red"
            border.width: 2.5
            border.color: "black"
            radius: 10

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("clicked red rectangle")
                    textToShow = "RedActive"
                }
            }
        }

        Rectangle {
            id: idRectGreen
            width: 75
            height: 75
            color: "green"
            border.width: 2.5
            border.color: "black"
            radius: 10

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("clicked green rectangle")
                    textToShow = "GreenActive"
                }
            }
        }

        Rectangle {
            id: idRectBlue
            width: 75
            height: 75
            color: "blue"
            border.width: 2.5
            border.color: "black"
            radius: 10

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("clicked blue rectangle")
                    textToShow = "BlueActive"
                }
            }
        }

        Rectangle {
            id: idCircleDodgerBlue
            width: 75
            height: 75
            color: "dodgerblue"
            border.width: 2.5
            border.color: "black"
            radius: 50

            Text {
                id: idTextInCircle
                anchors.centerIn: parent
                text: textToShow
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("clicked dodger blue circle")
                    textToShow = "Reseted"
                }
            }
        }
    }
}
