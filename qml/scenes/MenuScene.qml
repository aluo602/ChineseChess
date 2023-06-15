import Felgo 3.0
import QtQuick 2.15
import "../common"

SceneBase {
    id: menuScene

    // signal indicating that the localScene should be displayed
    signal localPressed
    // signal indicating that the helpScene should be displayed
    signal helpPressed
    // signal indicating that the settingScene should be displayed
    signal settingPressed


    AppSlider{

    }

    Image {
        id: bgImage
        source: "../../assets/image/bg2.png"
    anchors.fill: parent.gameWindowAnchorItem
            //单人对弈、联机对弈、帮助、设置按件
        Image {
            x: 200
            width: 120
            height: 120

            id: image
            source: "../../assets/image/7-1.png"
            Image {
                x:20
                y:20
                width: image.width-35
                height: image.height-35
                source: "../../assets/image/8-1.png"
            }
        }

        Image {
            x:130
            y:100
            width: 120
            height: 120
            id: image2
            source: "../../assets/image/7-2.png"
            Image {
                x:20
                y:20
                width: image.width-35
                height: image.height-35
                source: "../../assets/image/8-2.png"
            }
            TapHandler{
                onTapped: {
                    onclicked: localPressed()
                }
            }
        }

        Image {
            x:190
            y:200
            width: 120
            height: 120
            id: image3
            source: "../../assets/image/7-3.png"
            Image {
                x:20
                y:35
                width: image.width-35
                height: image.height-70
                source: "../../assets/image/8-3.png"
            }

            TapHandler{
                onTapped: {
                    helpPressed()
                }
            }
        }

        Image {
            x:120
            y:290
            width: 130
            height: 130
            id: image4
            source: "../../assets/image/7-4.png"
            Image {
                x:30
                y:35
                width: image4.width-40
                height: image4.height-80
                source: "../../assets/image/8-4.png"
            }
            TapHandler{
                onTapped: {
                    settingPressed()
                }
            }
        }
    }



}
