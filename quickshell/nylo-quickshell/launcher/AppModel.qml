import QtQuick
import Quickshell

QtObject {
    property var applications: {
        let apps = [...DesktopEntries.applications.values]

        return apps.sort((a, b) =>
            a.name.localeCompare(b.name)
        )
    }
}
