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
                  height: 250;

                  Rectangle {
                           id: idBGRect;
                           anchors.fill: parent;
                           color: "darkslategrey";
                           border.color: "black";
                           border.width: 5;
                  }

                  Row {
                           id: idLightsAndText;
                           spacing: 20;
                           x: 20;
                           y: 20;

                           Column {
                                    id: idTrafficLightsColumn;
                                    spacing: 10;
                                    x: 10;
                                    y: 10;

                                    Rectangle {
                                             id: idRedRect;
                                             width: 50;
                                             height: 50;
                                             radius: 50;
                                             color: "red";
                                             border.color: "black";
                                             border.width: 2.5;
                                    }

                                    Rectangle {
                                             id: idOrangeRect;
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
                                             width: 50;
                                             height: 50;
                                             radius: 50;
                                             color: "limegreen";
                                             border.color: "black"; border.width: 2.5;
                                    }
                           }

                           Text {
                                    id: idTrafficLightsText;
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
}
