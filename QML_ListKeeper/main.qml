import QtQuick 2.10
import QtQuick.Window 2.10
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

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

    TextEdit {
        width: parent.width

        x: 0
        y: 100
        text: "<b>Hello</b> <i>World!</i>"
        font.family: "Helvetica"
        font.pointSize: 20
        color: "blue"
        focus: true
    }

    TextField {
        width: parent.width
        x: 0
        y: 60
        placeholderText: qsTr("Enter name")
        style: TextFieldStyle {
            textColor: "black"
            background: Rectangle {
                radius: 2
                implicitWidth: parent.width
                implicitHeight: 24
                border.color: "#333"
                border.width: 1
            }
        }
    }
}
