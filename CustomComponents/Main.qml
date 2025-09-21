import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Components")

    Column {
        id: idColumnOfButtons;
        x: 25;
        y: 10;
        spacing: 3;

        MButton {
            id: idButton1;
            buttonText: "Button 111!!!";
            onButtonClicked: {
                console.log("Button1 clicked.");
            }
        }

        MButton {
            id: idButton2;
            buttonText: "Button 2";
            onButtonClicked: {
                console.log("Button2 clicked.");
            }
        }
    }
}
