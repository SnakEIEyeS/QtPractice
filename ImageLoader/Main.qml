import QtQuick

Window {
    id: idRoot;
    width: 640
    height: 480
    visible: true
    title: qsTr("Image Loader")

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

        Image {
            id: idGoWRagnarokLogo;
            x: 25;
            y:25;
            width: 173;
            height: 173;
            source: "https://hips.hearstapps.com/hmg-prod/images/ragnarok-1600291665.png?crop=0.540xw:1.00xh;0.242xw,0&resize=1200:*";
        }

        Image {
            id: idImageFromqrc;
            x: idGoWRagnarokLogo.x + idGoWRagnarokLogo.width + 25;
            y: 25;
            width: 173;
            height: 90;
            source: "qrc:/images/ShantanuMane Logo BW square noBG.png";
        }
    }
}
