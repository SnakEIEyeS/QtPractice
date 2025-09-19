import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Property Binding")

    property real qtElongationFactor: 1.5;

    Rectangle {
        id: idRedRect;
        width: 50;
        height: width * qtElongationFactor;
        color: "red";
    }

    Rectangle {
        id: idBlueRect;
        width: 50;
        height: 50;
        color: "blue";
        anchors.centerIn: parent;

        Text {
            id: idIncreaseSizeText;
            text: "Increase Red's size";
            font.pointSize: 10;
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                idRedRect.width = idRedRect.width + 10;
            }
        }
    }

    Rectangle {
        id: idYellowRect;
        width: 150;
        height: 50;
        color: "yellow";
        anchors.bottom: parent.bottom;
        anchors.left: parent.left;

        Text {
            id: idElongateText;
            text: "Elongate Red";
            anchors.centerIn: parent;
            font.pointSize: 10;
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                idRedRect.height = Qt.binding(function() {
                    return idRedRect.width * qtElongationFactor;
                }
                )
            }
        }
    }

    Rectangle {
        id: idGreenRect;
        width: 150;
        height: 50;
        color: "green";
        anchors.bottom: parent.bottom;
        anchors.right: parent.right;

        Text {
            id: idMakeSquareText;
            text: "Make Red a square";
            anchors.centerIn: parent;
            font.pointSize: 10;
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                idRedRect.height = Qt.binding(function() {
                    return idRedRect.width;
                }
                )
            }
        }
    }
}
