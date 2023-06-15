import QtQuick 2.15
import Felgo 3.0
import "../common"

// Setting SCENE

SceneBase {

    width: 480
    height: 854
    anchors.fill: parent
    Image {
        source: "../../assets/image/01.png"
    }

    Image {
        id: back
        x:30
        y:700
        source: "../../assets/image/back.png"
        TapHandler{
            onTapped: {
                backButtonPressed()
            }
        }
    }

    Image {
        x:110
        y:95
        source: "../../assets/image/setting.png"
    }

    Image {
        x:20
        y:300
        source: "../../assets/image/music.png"
    }

    Image {
        x:20
        y:400
        source: "../../assets/image/chessboard.png"
    }

}
