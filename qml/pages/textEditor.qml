import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    property string getText: textArea.text
    property string setText: ""

    Rectangle {
        id: rectangle
        color: "#2c313c"
        anchors.fill: parent

        Flickable {
            id: flickable
            anchors.fill: parent
            clip: true

            TextArea.flickable: TextArea{
                id: textArea
                padding: 10
                wrapMode: Text.WordWrap
                placeholderTextColor: "#f6fbff"
                textFormat: Text.AutoText
                selectByMouse: true
                selectedTextColor: "#ffffff"
                selectionColor: "#ff007f"
                color: "#ffffff"
                font.pointSize: 12
                text: setText
            }

            ScrollBar.vertical: ScrollBar{}
        }


    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:800}D{i:2}
}
##^##*/
