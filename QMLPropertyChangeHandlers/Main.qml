import QtQuick

Window {
    id: idRoot
    width: 640
    height: 480
    visible: true
    title: qsTr("The Hero")

    property string nameOfHero: "Jon Snow";
    onNameOfHeroChanged: {
        console.log("After rebirth, the name of the hero is " + nameOfHero);
    }

    onTitleChanged: {
        console.log("New title is " + title);
    }

    Rectangle {
        id: idGreenYellowRect;
        width: 300;
        height: 225;
        color: "greenyellow";
        anchors.centerIn: parent;

        Text {
            anchors.centerIn: parent;
            text: "Be Reborn!";
            font.pointSize: 20;
            font.bold: true;
        }

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                idRoot.nameOfHero = "Jon Targaryen";
                idRoot.title = "The Hero Reborn!";
            }
        }
    }

    Component.onCompleted: {
        console.log("The name of the hero is " + idRoot.nameOfHero);
    }
}
