import QtQuick 2.15
import Felgo 3.0
import "../common"

// LOCAL SCENE

SceneBase {
    anchors.fill: parent
    Image {
        source: "../../assets/image/01.png"

        Text {
            width: 180; height: 48
            x:180; y:95
            color: "white"
            text: '局域网'
            font.pixelSize: 40
        }
    }

    Image {
        id: juanzhou
        anchors.horizontalCenter: parent.horizontalCenter
        y:180
        source: "../../assets/image/1-4.png"

        Image {
            source: "../../assets/image/04.png"
            anchors.horizontalCenter: parent.horizontalCenter
            width: 250; height: 80
            y:110
            Text {
                x:60; y:20
                color: "white"
                text: '创建房间'
                font.pixelSize: 30
                anchors.centerIn: parent.Center
            }
        }

        Image {
            source: "../../assets/image/04.png"
            anchors.horizontalCenter: parent.horizontalCenter
            width: 250; height: 80
            y:220
            Text {
                x:60; y:20
                color: "white"
                text: '加入房间'
                font.pixelSize: 30
                anchors.centerIn: parent.Center
            }
        }

        Image {
            id: local
            source: "../../assets/image/04.png"
            anchors.horizontalCenter: parent.horizontalCenter
            width: 250; height: 80
            y:330
            Text {
                x:90; y:20
                color: "white"
                text: '返回'
                font.pixelSize: 30
                anchors.centerIn: parent.Center
                TapHandler{
                    onTapped: {
                        backButtonPressed()
                    }
                }
            }
        }
    }

}
