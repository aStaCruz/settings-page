import QtQuick 2.6
import QtQuick.Controls 1.5

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Advance Wars")
    color: "transparent"

    Image{
            anchors.fill: parent
            source:"img/background.png"
            width: 640
            height: 480
        }

    //first splash screen
    Rectangle {
        id: splash
        property alias mouseArea:mouseArea
        property real  maximumDragX:0
        property real  maximumDragY:0
        property alias drag:mouseArea.drag
        anchors.fill: parent
        border.width: 2
        radius: 10
        visible: true
        //my button yes
        Rectangle{
            property alias mouseArea:mouseArea
            property alias text:btntextarea
               width:100
               height:50
               border.width: 2
               radius: 5
               color: "transparent"
               x: parent.width * 3 / 5
               y: parent.height * 4 / 6
               z: 10
               Text{
                   id:btntextarea
                   anchors.centerIn: parent
                   text: "Return"
                   font.family: "Helvetica"
                   font.pointSize: 14
                   color: "black"
                   MouseArea{
                   anchors.fill: parent
                   onPressed: {splash.visible = false
                   settings.visible = true}
                   onClicked:{splash.visible = false
                   settings.visible = true}
                   }
               }
        }
        //no button
        Rectangle{
            property alias mouseArea:mouseArea2
            property alias text:btntextarea2
               width:100
               height:50
               border.width: 2
               radius: 5
               color: "transparent"
               x: parent.width / 5
               y: parent.height * 4 / 6
               Text{
                   id:btntextarea2
                   anchors.centerIn: parent
                   text: "Save"
                   font.family: "Helvetica"
                   font.pointSize: 14
                   color: "black"
                   MouseArea{
                       id:mouseArea2
                       anchors.fill: parent
                       //hoverEnabled: true
                       onClicked:{parent.visible = false}
                       //onEntered: {parent.color = "#A0A0A0"
                       //parent.opacity = .2}
                       //onExited: {parent.color = "transparent"
                       //parent.opacity = 1}
                   }
               }

        }
        //my textrect
        Rectangle{
            property alias text:textarea
               width: parent.width
               height:60
               border.width: 2
               color: "transparent"
               y: 60
               Text{
                   id:textarea
                   anchors.centerIn: parent
                   text: "Advance Wars"
                   font.family: "Helvetica"
                   font.pointSize: 18
                   color: "black"
               }
        }
        MouseArea{
            id:mouseArea
            anchors.fill: parent
            drag.target: parent
}
        Rectangle{
            x: 188
            y: 189
            width: 66
            height: 22
            border.width: 1
            TextInput {
                id: textInput1
                anchors.fill: parent
                text: qsTr("# of cells")
                horizontalAlignment: Text.AlignHCenter
                selectionColor: "#008068"
                font.pixelSize: 12
                MouseArea{
                    anchors.fill: parent
                    onClicked:
                    {parent.text = ""}
                    Keys.onReturnPressed:
                    {
                        //Cursed_8_ball.set_draggable(true);
                        //Cursed_8_ball.set_question(txtin_input.text);
                    }
                }
            }
}

            Text {
                id: text1
                x: 110
                y: 189
                width: 78
                height: 22
                text: qsTr("Board Size:")
                font.pixelSize: 12

            }

            Text {
                id: text2
                x: 110
                y: 217
                width: 108
                height: 22
                text: qsTr("Turn Sound On/Off")
                font.pixelSize: 12
            }

            CheckBox {
                id: checkBox1
                x: 224
                y: 217
                width: 19
                height: 19
            }

            Rectangle{
                x: 188
                y: 161
                width: 66
                height: 22
                border.width: 1
            TextInput {
                id: textInput2
                anchors.fill: parent
                text: qsTr("#")
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
                MouseArea{
                    anchors.fill: parent
                    onClicked:
                    {parent.text = ""}
                    Keys.onReturnPressed:
                    {
                        //Cursed_8_ball.set_draggable(true);
                        //Cursed_8_ball.set_question(txtin_input.text);
                    }
                }
            }
}
            Text {
                id: text3
                x: 110
                y: 161
                width: 78
                height: 22
                text: qsTr("Player Count:")
                font.pixelSize: 12
            }
            //onClicked:{splash.visible = false}
            //drag.maximumX: maximumDragX
            //drag.maximumY: maximumDragY
        }
    //end of first splash screen


    }

