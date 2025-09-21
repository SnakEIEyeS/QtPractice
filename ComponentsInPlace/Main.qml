import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Components In Place")

    Row {
        x: 20;
        y: 20;
        spacing: 20;

        Column {
            id: idColumnOfButtonsFromLoader;
            spacing: 3;

            Loader {
                id: idButton1;
                sourceComponent: idButtonComponent;

                onLoaded: {
                    var customButton = idButton1.item;
                    customButton.buttonText = "Button111!!! from Loader";
                    customButton.buttonClicked.connect(function()
                    {
                        console.log("Button1 from Loader clicked.");
                    }
                    );
                }
            }

            Loader {
                id: idButton2;
                sourceComponent: idButtonComponent;

                onLoaded: {
                    var customButton = idButton2.item;
                    customButton.buttonText = "Button2 from Loader";
                    customButton.buttonClicked.connect(function()
                    {
                        console.log("Button2 from Loader clicked.");
                    }
                    );
                }
            }
        }

        Column {
            id: idColumnOfButtonsfromMButton;
            spacing: 3;

            MButton {
                id: idButton1FromMButton;
                buttonText: "Button 111!!!";
                onButtonClicked: {
                    console.log("Button1 from MButton clicked.");
                }
            }

            MButton {
                id: idButton2FromMButton;
                buttonText: "Button 2";
                onButtonClicked: {
                    console.log("Button2 from MButton clicked.");
                }
            }
        }
    }

    Component {
        id: idButtonComponent;
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
    }

    component MButton: Rectangle {
        id: idMButton;
        width: idButtonText.implicitWidth + 10;
        height: idButtonText.implicitHeight + 10;

        property alias buttonText: idButtonText.text;
        signal buttonClicked;

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
                idMButton.buttonClicked(); // Emit the signal.
            }
        }
    }
}
