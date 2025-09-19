import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string qtString: "Qt Orange";
    property int qtInt: 50;
    property bool isBold: true;
    property double qtDouble: 1.0075;
    property url myWebsiteUrl: "https://shantanumane.wordpress.com";

    //var for learning
    property var aNumber: 100;
    property var aBool: false;
    property var aString: "Hello World!";
    property var anotherString: String("#F008800");
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5);
    property var aRect: Qt.rect(10, 15, 20, 25);
    property var aPoint: Qt.point(10, 10);
    property var aSize: Qt.size(20, 20);
    property var aVector3d: Qt.vector3d(100, 200, 300);
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })];
    property var anObject: { "foo": 11, "bar": 12 };
    property var aFunction: (function() { return "oneFunction"; });
    property var aFont: Qt.font({family: "Consolas", pointSize: 15, bold: true});

    property date qtDate: "2017-08-20";

    Rectangle {
        width: 100;
        height: 100 + qtInt;
        anchors.centerIn: parent;
        color: "orange";


        Text {
            id: idRectText;
            anchors.centerIn: parent;
            text: qtString;
            font: aFont;
        }
    }

    Text {
        text: myWebsiteUrl;
        font.bold: isBold;
    }

    Component.onCompleted: {
        print("The value of qtString is " + qtString);
        console.log("The value of qtInt is " + qtInt);

        if(isBold)
        {
            console.log("Text using isBold will be bold.");
        }
        else
        {
            console.log("Text using isBold will not be bold.");
        }

        console.log("The value of qtDouble is " + qtDouble);
        console.log("The value of myWebsiteUrl is " + myWebsiteUrl);

        if(qtString === myWebsiteUrl)
        {
            console.log("qtString and myWebsiteUrl are the same");
        }
        else
        {
            console.log("qtString and myWebsiteUrl are not the same");
        }

        console.log("\nLogging var value types");
        console.log("The value of aNumber is " + aNumber);
        console.log("The value of aBool is " + aBool);
        console.log("The value of aString is " + aString);
        console.log("The value of anotherString is " + anotherString);

        console.log("The attributes of aRect are x:" + aRect.x + ", y:" + aRect.y + ", width:" + aRect.width + ", height:" + aRect.height);

        console.log("The length of the array anArray is " + anArray.length);

        console.log("\nLogging anArray with a forEach loop");
        anArray.forEach(function(value, index) {
            if(index === 5)
            {
                console.log("index" + index + ": " + value());
            }
            else
            {
                console.log("index" + index + ": " + value);
            }
        }
        )

        console.log("\nLogging anArray with an indexed for loop");
        let anArrayLength = anArray.length;
        for(var i = 0; i < anArrayLength; ++i)
        {
            if(i === 5)
            {
                console.log("index" + i + ": " + anArray[i]());
            }
            else
            {
                console.log("index" + i + ": " + anArray[i]);
            }
        }

        console.log("The qtDate is " + qtDate);
    }
}
