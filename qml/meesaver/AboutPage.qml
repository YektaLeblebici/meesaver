import QtQuick 1.1
import com.nokia.meego 1.0

Page {
    id: aboutPage
    tools: aboutTools
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
            text: "About MeeSaver"
            font.pixelSize: 32
            color: "white"
        }}

    Image {
        id: image1
        x: 0
        y: 76
        width: 220
        height: 220
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        sourceSize.height: 220
        sourceSize.width: 220
        source: "avatar.png"
   }

    Text {
        id: text1
        x: 30
        y: 384
        width: 300
        height: 68
        text: "Aranel Surion\n http://www.aranelsurion.org \n <aranel@aranelsurion.org>"
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.right: parent.right
        anchors.rightMargin: 30
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 20
    }

    Text {
        id: text2
        x: 30
        y: 312
        width: 300
        height: 58
        text: "About"
        font.bold: true
        font.pixelSize: 45
        anchors.rightMargin: 30
        anchors.right: parent.right
        horizontalAlignment: Text.AlignHCenter
        anchors.leftMargin: 30
        anchors.left: parent.left
    }

    Text {
        id: text3
        x: 13
        y: 475
        width: 335
        height: 68
        text: "MeeGo Türkiye\n http://www.meegoturkiye.org \n <http://meegoturkiye.org/iletisim>"
        font.pixelSize: 20
        anchors.rightMargin: 13
        anchors.right: parent.right
        horizontalAlignment: Text.AlignHCenter
        anchors.leftMargin: 13
        anchors.left: parent.left
    }

    Text {
        id: text4
        x: 13
        y: 582
        width: 334
        height: 50
        text: "MeeSaver comes AS IS, without any warranty or liability of \n loss implied. Copyright: Aranel Surion 2012 - 20XX"
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.rightMargin: 13
        anchors.left: parent.left
        anchors.leftMargin: 13
        font.pixelSize: 14
    }
}
