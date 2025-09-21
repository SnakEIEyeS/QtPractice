import QtQuick

Window {
    id: idRoot;
    width: 640
    height: 480
    visible: true
    title: qsTr("Image Loader New Methods")

    Item {
        id: idImageBoardItem
        x: 25;
        y: 25;
        width: idRoot.width - x * 2;
        height: idRoot.height - y * 2;

        Rectangle {
            id: idImageBoardRect;
            anchors.fill: parent;
            color: "darkred";
        }

        /*Image {
            id: idLogoMethod1;
            x: 25;
            y:25;
            width: 173;
            height: 90;
            source: "qrc:/images/ShantanuManeLogoBW_noBG.png";
        }*/

        Image {
            id: idLogoMethod2;
            x: 25;
            y:25;
            width: 173;
            height: 90;
            source: "images/ShantanuManeLogoBW_noBG.png";
        }
    }
}
