import QtQuick 2.3

import QtQuick.Controls 2.0

import "../custom_control"

GroupBox {
    id: groupLog

    title: qsTr("Logs")

    font.pixelSize: fontSize11

    property string valueButtonText: "Button"

    property alias valueText: scrollLog.valueText

    signal singnalButtonLogClicked()

    Button {
        id: buttonLog

        width: parent.width
        height: parent.height * 0.1

        text: valueButtonText

        onClicked: singnalButtonLogClicked()
    }

    BTextArea {
        id: scrollLog

        width: parent.width
        height: parent.height - buttonLog.height

        anchors.top: buttonLog.bottom
    }
}
