import QtQuick
import QtQuick.Layouts
import Quickshell
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
			}
			Rectangle{
				color:"blue"
				Layout.fillWidth: true
				Layout.fillHeight: true
			}
		}
	}
}
