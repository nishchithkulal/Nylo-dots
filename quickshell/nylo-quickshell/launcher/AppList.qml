import QtQuick

ListView {
    id: appMenuListView

    property var applications

    anchors.fill: parent

    clip: true
    spacing: 8

    model: applications

    delegate: AppItem {
        width: appMenuListView.width
    }
}
