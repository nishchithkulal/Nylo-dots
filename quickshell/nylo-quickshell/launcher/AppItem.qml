import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets

Rectangle {
    height: 50

    color: "#2a2b3d"
    radius: 6

    RowLayout {
        anchors.fill: parent

        anchors.leftMargin: 12
        anchors.rightMargin: 12

        spacing: 12

        IconImage {
            source: Quickshell.iconPath(modelData.icon, true)

            width: 32
            height: 32

            smooth: true
        }

        Text {
            text: modelData.name

            color: "#ffffff"

            font.bold: true
            font.pixelSize: 15

            Layout.fillWidth: true
            Layout.alignment: Qt.AlignVCenter
        }
    }

    MouseArea {
        anchors.fill: parent

        hoverEnabled: true

        onClicked: {
            console.log(
                "Selected index app target:1" + modelData.name
            )
        }
    }
}
