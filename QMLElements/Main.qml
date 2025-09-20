import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Elements")

    Item {
        id: idContainerItem;
        x: 50;
        y: 50;
        width: 300;
        height: 175;

        Rectangle {
         id: idBGRect;
         anchors.fill: parent;
         color: "darkslategrey";
         border.color: "black";
         border.width: 5;
        }

        Rectangle {
         id: idRedRect;
         x: 10;
         y: 10;
         width: 50;
         height: 50;
         radius: 50;
         color: "red";
         border.color: "black";
         border.width: 2.5;
        }

        Rectangle {
         id: idOrangeRect;
         x: idRedRect.x + idRedRect.width + 10;
         y: 10;
         width: 50;
         height: 50;
         radius: 50;
         color: "orange";
         border {
            color: "black";
            width: 2.5
         }
        }

        Rectangle {
         id: idLimeGreenRect;
         x: idOrangeRect.x + idOrangeRect.width + 10;
         y: 10;
         width: 50;
         height: 50;
         radius: 50;
         color: "limegreen";
         border.color: "black"; border.width: 2.5;
        }

        Text {
            id: idTrafficLightsText;
            anchors.centerIn: parent;
            text: "Traffic Lights";
            color: "yellow";
            font {
                family: "Helvetica";
                pointSize: 18;
                bold: true;
            }
        }
    }
}
