import QtQuick 2.10
import QtQuick.Window 2.10

Rectangle {
    id: backgroundRectangle
    anchors.fill: parent
    width: 320 // this required to determine proper elements size with use of minDimention prop
    height: 480 // this required to determine proper elements size with use of minDimention prop
    property int minDimention: Math.min(width, height)

    Text {
        id: testText
        anchors.verticalCenter: backgroundRectangle.verticalCenter
        anchors.horizontalCenter: backgroundRectangle.horizontalCenter
        text: "ListKeeper"
    }
}
