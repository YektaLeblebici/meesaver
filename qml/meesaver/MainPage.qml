import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id: mainPage
    tools: mainTools
    orientationLock: PageOrientation.LockPortrait

    Rectangle {
        id: header
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        height: 70
        color: "#e77b17"
        z: 10

        Label {
            id: title
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 20
            text: "MeeSaver"
            font.pixelSize: 32
            color: "white"
        }}

    Label {
        id: text1
        x: 372
        y: 80
        text: qsTr("Settings")
        font.pixelSize: 26
    }

    Label {
        id: text2
        x: 385
        y: 400
        text: qsTr("Control")
        font.pixelSize: 26
    }

    Label {
        id: text3
        text: qsTr("Working directory")
        font.pixelSize: 25
        x: 20
        y: 120
    }

    Label {
        id: text4
        text: qsTr("Change every (sec)")
        font.pixelSize: 25
        x: 20
        y: 237
    }

    Label {
        id: text5
        text: qsTr(".PNG files only.")
        font.pixelSize: 22
        x: 20
        y: 375
    }

    TextField {
        id: text_field1
        x: 20
        y: 160
        width: 440
        height: 50
        text: meesetting.wdir
        font.pixelSize: 25
        focus: true
    }

    TextField {
        id: text_field2
        y: 230
        width: 120
        height: 50
        text: meesetting.sleep
        anchors.right: parent.right
        anchors.rightMargin: 20
        font.pixelSize: 26
        focus: true
        maximumLength: 4
        inputMethodHints: Qt.ImhDigitsOnly
        validator: IntValidator{bottom: 0; top: 9999;}
    }

    Button {
        signal saveSignal;
        id: saveButton
        anchors.left: parent.left
        anchors.leftMargin: 20;
        anchors.right: parent.right
        anchors.rightMargin: 20
        y: 300
        text: qsTr("Save")
        onClicked: { meesetting.save(text_field1.text, text_field2.text) }
    }

    Button {
        id: addautoButton
        anchors.left: parent.left
        anchors.leftMargin: 20;
        anchors.right: parent.right
        anchors.rightMargin: 20
        y: 440
        text: qsTr("Add to start-up")
        onClicked: { meesetting.addboot() }
    }

    Button {
        id: remautoButton
        anchors.left: parent.left
        anchors.leftMargin: 20;
        anchors.right: parent.right
        anchors.rightMargin: 20
        y: 500
        text: qsTr("Remove from start-up")
        onClicked: { meesetting.remboot() }
    }


     Button {
         id: killButton
         anchors.left: startButton.right
         anchors.right: parent.right
         anchors.rightMargin: 20
         y: 560
         text: qsTr("Stop")
         onClicked: { meesetting.killd() }
     }


     Button {
         id: startButton
         anchors.left: parent.left
         anchors.leftMargin: 20;
         anchors.right: killButton.left
         y: 560
         text: qsTr("Restart")
         onClicked: { meesetting.startd() }
     }

    Rectangle {
        id: division
        color: "grey"
        height: 1
        anchors.verticalCenter: text1.verticalCenter
        anchors.leftMargin: 10
        anchors.left: parent.left
        anchors.rightMargin: 5
        anchors.right: text1.left
    }

    Rectangle {
        id: division2
        color: "grey"
        height: 1
        anchors.verticalCenter: text2.verticalCenter
        anchors.leftMargin: 10
        anchors.left: parent.left
        anchors.rightMargin: 5
        anchors.right: text2.left
    }

}
