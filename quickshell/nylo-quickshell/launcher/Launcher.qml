import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Widgets
PanelWindow {
	color: "transparent"
	anchors {
		top: true
    left: true
    bottom: true
		right: true
	}
	Rectangle{
		anchors.centerIn: parent
		height: 450
		width: 650
		radius: 15
		color: Qt.rgba(0,0,0,0.60)
		border.color: Qt.rgba(1,1,0,0.28)
		border.width: 5
		ColumnLayout{
			anchors.fill:parent
			anchors.margins: 15
			spacing: 10
			Rectangle{
				color:"red"
				Layout.fillWidth:true
        Layout.preferredHeight: 50
        TextInput{
          id: mainInput
          anchors.fill: parent
          anchors.leftMargin: 15
          anchors.rightMargin: 15
          verticalAlignment: TextInput.AlignVCenter
          color: "white"
          font.pixelSize:14
          selectByMouse: true
          focus:true
          Text{
            id: input
            text: "App / Program Name"
            anchors.fill: parent
            verticalAlignment: Text.AlignVCenter
            font: parent.font
            color: Qt.rgba(1,1,1,0.6)
            visible: !mainInput.text
          }
        }
      }
			Rectangle{
				color: "#1e1e2e"
				Layout.fillWidth: true
        Layout.fillHeight: true
        ListView{
          id: appMenuListView
          anchors.fill: parent
          clip: true
          spacing: 8
          property var sortedModel: {
            let apps = [...DesktopEntries.applications.values];
            return apps.sort((a,b) => a.name.localeCompare(b.name));
          }
          model: appMenuListView.sortedModel
          delegate: Rectangle{
            width: appMenuListView.width
            height: 50
            color: "#2a2b3d"
            radius: 6
            RowLayout{
              anchors.fill: parent
              anchors.leftMargin: 12
              anchors.rightMargin: 12
              spacing: 12
              IconImage{
                source: Quickshell.iconPath(modelData.icon, true)
                width: 32
                height: 32
                smooth: true
              }
              Text{
                text: modelData.name
                color: "#ffffff"
                font.bold: true
                font.pixelSize: 15
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignVCenter
              }
            }
            MouseArea{
              anchors.fill: parent
              hoverEnabled: true
              onClicked: {
                console.log("Selected index app target:1" + modelData.name)
              }
            }
          }
        }
			}
		}
	}
}
