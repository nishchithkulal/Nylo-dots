import QtQuick

Rectangle {
    color: "red"

    TextInput {
        id: mainInput

        anchors.fill: parent
        anchors.leftMargin: 15
        anchors.rightMargin: 15

        verticalAlignment: TextInput.AlignVCenter

        color: "white"
        font.pixelSize: 14

        selectByMouse: true
        focus: true

        Text {
            id: input

            text: "App / Program Name"

            anchors.fill: parent

            verticalAlignment: Text.AlignVCenter

            font: parent.font
            color: Qt.rgba(1, 1, 1, 0.6)

            visible: !mainInput.text
        }
    }
}
