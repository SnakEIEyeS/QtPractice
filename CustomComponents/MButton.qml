import QtQuick

Item {
    id: idRoot;
    property alias buttonText: idButtonText.text;
    width: idContainerRect.width;
    height: idContainerRect.height;
    signal buttonClicked;

    Rectangle {
        id: idContainerRect;
        width: idButtonText.implicitWidth + 10;
        height: idButtonText.implicitHeight + 10;
        color: "red";
        border {
            color: "blue";
            width: 3;
        }

        Text {
            id: idButtonText;
            text: "Button";
            anchors.centerIn: parent;
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                idRoot.buttonClicked(); // Emit the signal.
            }
        }
    }
}
