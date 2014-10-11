import QtQuick 1.1
import com.nokia.meego 1.0

PageStackWindow {
    id: appWindow

    initialPage: mainPage

    MainPage {
        id: mainPage
    }

    AboutPage {
        id: aboutPage
    }


    ToolBarLayout {
        id: aboutTools
        visible: false
        ToolIcon {
            iconId: "toolbar-back";
            onClicked: pageStack.pop(mainPage)
        }
    }


    ToolBarLayout {
        id: mainTools
        visible: false
        ToolIcon {
            iconId: "toolbar-contact";
            onClicked: pageStack.push(aboutPage)
        }
    }

}
