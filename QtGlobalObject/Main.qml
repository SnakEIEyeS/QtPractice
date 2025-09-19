import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Global Object")

    property list<string> fonts: Qt.fontFamilies();
    property url myWebsiteUrl: "https://shantanumane.wordpress.com";

    Text {
        anchors.centerIn: parent;
        color: Qt.rgba(0.75, 0, 0.2, 1);
        text: Qt.md5("Hello World!");
        font.pointSize: 20;
    }

    Rectangle {
        id: idClickableRect;
        width: 200;
        height: 100;
        color: "dodgerblue";
        anchors.bottom: parent.bottom;
        anchors.left: parent.left;

        MouseArea {
            anchors.fill: parent;
            onClicked: {
                console.log("Logging all font families:");
                for(var i = 0; i < fonts.length; ++i)
                {
                    console.log("fonts[" + i + "]: " + fonts[i]);
                }

                var mText = "Hello World!";
                console.log("MD5 Hashed string: " + Qt.md5(mText));

                console.log("The platform OS is " + Qt.platform.os);

                Qt.openUrlExternally(myWebsiteUrl);

                Qt.quit();
            }
        }
    }
}
