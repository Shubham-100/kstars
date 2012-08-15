import QtQuick 1.0

Rectangle {
    id: container
    objectName: "containerObj"
    width: 370
    height: 575
    color: "#020518"
    anchors.fill: parent

    Text {
        id: title
        x: 9
        y: 34
        width: 209
        height: 46
        color: "#59ad0e"
        text: qsTr("What's Interesting...")
        verticalAlignment: Text.AlignVCenter
        font.family: "Cantarell"
        font.bold: false
        font.pixelSize: 22
    }

    Rectangle {
        id: base
        y: 89
        width: 370
        height: 385
        color: "transparent"
        radius: 12
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        Item {
            id: viewsRow
            objectName: "viewsRowObj"
            width: parent.width
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            signal categorySelected(int category)

            Rectangle {
                id: categoryView
                x: 0
                y: 31
                width: parent.width
                height: 351
                color: "transparent"

                Rectangle {
                    id: background
                    x: 20
                    y: 15
                    width: 330
                    height: 323

                    color: "#00060b"
                    radius: 12
                    opacity: 0.500
                    border.width: 4
                    border.color: "black"
                }

                Rectangle {
                    id: planetRect
                    x: 78
                    y: 23
                    width: 74
                    height: 35
                    color: "#00000000"

                    Text {
                        id: planetText
                        x: 0
                        y: 0
                        width: 60
                        height: 33
                        color: "#e4800d"
                        text: qsTr("Planets")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        anchors.fill: parent
                        font.family: "Cantarell"
                        font.pixelSize: 16

                        MouseArea {
                            id: planetMouseArea
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: container.state = "planetAreaEntered"
                            onClicked: {
                                viewsRow.categorySelected(0)
                                container.state = "soTypeSelected"
                            }
                        }
                    }
                }

                Rectangle {
                    id: starRect
                    x: 193
                    y: 48
                    width: 136
                    height: 42
                    color: "#00000000"

                    Text {
                        id: starText
                        color: "#e4800d"
                        text: qsTr("Bright Stars")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        anchors.fill: parent
                        font.family: "Cantarell"
                        font.pixelSize: 16

                        MouseArea {
                            id: starMouseArea
                            hoverEnabled: true
                            anchors.fill: parent
                            onEntered: container.state = "starAreaEntered"
                            onClicked: {
                                viewsRow.categorySelected(1)
                                container.state = "soTypeSelected"
                            }
                        }
                    }
                }

                Rectangle {
                    id: conRect
                    x: 20
                    y: 107
                    width: 169
                    height: 36
                    color: "#00000000"

                    Text {
                        id: conText
                        color: "#e4800d"
                        text: qsTr("Constellations")
                        font.family: "Cantarell"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        anchors.fill: parent
                        font.pixelSize: 16

                        MouseArea {
                            id: conMouseArea
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: container.state = "conAreaEntered"
                            onClicked: {
                                viewsRow.categorySelected(2)
                                container.state = "soTypeSelected"
                            }
                        }
                    }
                }

                Rectangle {
                    id: dsoContainer
                    x: 35
                    y: 172
                    width: 283
                    height: 166
                    color: "#00000000"

                    Rectangle {
                        id: dsoRect
                        x: 46
                        y: 6
                        width: 192
                        height: 41
                        color: "#00000000"
                        Text {
                            id: dsoText
                            x: 0
                            y: 0
                            width: 60
                            height: 33
                            color: "#e4800d"
                            text: qsTr("Deep-sky Objects")
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 16
                            anchors.fill: parent
                            anchors.topMargin: 0
                            MouseArea {
                                id: dsoMouseArea
                                hoverEnabled: true
                                anchors.fill: parent
                                onEntered: container.state = "dsoAreaEntered"
                                onClicked: container.state = "dsoAreaClicked"
                            }
                            anchors.rightMargin: 0
                            anchors.bottomMargin: 0
                            font.family: "Cantarell"
                            anchors.leftMargin: 0
                        }
                    }

                    Rectangle {
                        id: galRect
                        x: 9
                        y: 59
                        width: 97
                        height: 35
                        color: "#00000000"
                        opacity: 0.350
                        Text {
                            id: galText
                            x: 0
                            y: 0
                            width: 60
                            height: 33
                            color: "#6b6660"
                            text: qsTr("Galaxies")
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 16
                            anchors.fill: parent
                            anchors.topMargin: 0
                            MouseArea {
                                id: galMouseArea
                                enabled: false
                                hoverEnabled: false
                                anchors.fill: parent
                                onEntered: container.state = "galAreaEntered"
                                onClicked: {
                                    viewsRow.categorySelected(3)
                                    container.state = "soTypeSelected"
                                }
                            }
                            anchors.rightMargin: 0
                            anchors.bottomMargin: 0
                            font.family: "Cantarell"
                            anchors.leftMargin: 0
                        }
                    }

                    Rectangle {
                        id: nebRect
                        x: 105
                        y: 122
                        width: 96
                        height: 35
                        color: "#00000000"
                        opacity: 0.340
                        Text {
                            id: nebText
                            x: 0
                            y: 0
                            width: 60
                            height: 33
                            color: "#6b6660"
                            text: qsTr("Nebulae")
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 16
                            anchors.fill: parent
                            anchors.topMargin: 0
                            MouseArea {
                                id: nebMouseArea
                                enabled: false
                                hoverEnabled: false
                                anchors.fill: parent
                                onEntered: container.state = "nebAreaEntered"
                                onClicked: {
                                    viewsRow.categorySelected(5)
                                    container.state = "soTypeSelected"
                                }
                            }
                            anchors.rightMargin: 0
                            anchors.bottomMargin: 0
                            font.family: "Cantarell"
                            anchors.leftMargin: 0
                        }
                    }

                    Rectangle {
                        id: clustRect
                        x: 182
                        y: 68
                        width: 93
                        height: 35
                        color: "#00000000"
                        opacity: 0.350
                        Text {
                            id: clustText
                            x: 0
                            y: 0
                            width: 60
                            height: 33
                            color: "#6b6660"
                            text: qsTr("Clusters")
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 16
                            anchors.fill: parent
                            anchors.topMargin: 0
                            MouseArea {
                                id: clustMouseArea
                                enabled: false
                                hoverEnabled: false
                                anchors.fill: parent
                                onEntered: container.state = "clustAreaEntered"
                                onClicked: {
                                    viewsRow.categorySelected(4)
                                    container.state = "soTypeSelected"
                                }
                            }
                            anchors.rightMargin: 0
                            anchors.bottomMargin: 0
                            font.family: "Cantarell"
                            anchors.leftMargin: 0
                        }
                    }
                }
            }//end of categoryView

            Flipable {
                id: skyObjView
                width: parent.width
                height: parent.height

                anchors.left: categoryView.right

                property bool flipped: false

                front: Rectangle {
                    id: soListContainer
                    height: parent.height
                    color: "transparent"
                    width: parent.width

                    Rectangle {
                        id: soListViewBackground
                        anchors.fill: soListViewContainer
                        color: "#00060b"
                        opacity: 0.5
                    }

                    Rectangle {

                        id: soListViewContainer
                        x: parent.x + 15
                        y: 31
                        width: parent.width - 30
                        height: 351
                        color: "transparent"
                        radius: 12
                        border.width: 4
                        border.color: "#000000"

                        ListView {
                            id: soListView
                            objectName: "soListObj"
                            anchors.fill: parent

                            signal soListItemClicked( int type, string typeName, int curIndex )
                            clip: true

                            delegate: Item {
                                id: soListItem
                                x: 5
                                height: 40

                                Text {
                                    id: dispText
                                    objectName: dispName
                                    text: dispName
                                    color: "white"
                                    anchors.verticalCenter: parent.verticalCenter
                                    font.bold: true
                                    MouseArea {
                                        anchors.fill: parent
                                        hoverEnabled: true
                                        onEntered: dispText.color = "yellow"
                                        onExited: dispText.color = "white"
                                        onClicked: {
                                            soListView.currentIndex = index
                                            soListView.soListItemClicked(type, typeName, soListView.currentIndex)
                                            skyObjView.flipped = true
                                        }
                                    }
                                }
                            }

                            model: soListModel
                        }
                    }
                }

                back: Rectangle {
                    id: detailsViewContainer
                    width: parent.width
                    height: parent.height
                    color: "transparent"

                    Rectangle {
                        id: detailsViewBackground
                        anchors.fill: detailsView
                        color: "#00060b"
                        opacity: 0.5
                    }

                    Rectangle {
                        id: detailsView
                        objectName: "detailsViewObj"
                        x: parent.x + 15
                        height: parent.height
                        width: parent.width - 30
                        color: "transparent"
                        radius: 12
                        border.width: 4
                        border.color: "#000000"

                        Text {
                            id: soname
                            objectName: "sonameObj"
                            y: 8
                            width: 273
                            height: 22
                            color: "#ffffff"
                            text: qsTr("text")
                            anchors.left: parent.left
                            anchors.leftMargin: 8
                            font.bold: true
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 16
                        }

                        Text {
                            id: posText
                            x: 10
                            objectName: "posTextObj"
                            y: 35
                            anchors.right: parent.right
                            anchors.rightMargin: 10
                            width: 320
                            height: 16
                            color: "#f7f7ac"
                            text: qsTr("text")
                            font.family: "Cantarell"
                            horizontalAlignment: Text.AlignRight
                            font.underline: false
                            font.italic: false
                            font.bold: true
                            font.pixelSize: 12
                        }

                        Rectangle {
                            id: descTextBox
                            x: 0
                            y: 160
                            width: parent.width
                            height: 175
                            color: "#00000000"
                            radius: 10
                            anchors.horizontalCenterOffset: 0
                            anchors.horizontalCenter: parent.horizontalCenter
                            border.color: "#585454"
                            Flickable {
                                id: flickableDescText
                                clip: true
                                flickableDirection: Flickable.VerticalFlick
                                width: parent.width
                                height: parent.height
                                anchors.top: parent.top
                                anchors.topMargin: 3
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 4

                                contentWidth: parent.width
                                contentHeight: col.height

                                Column {
                                    id: col
                                    width: parent.width
                                    Text {
                                        id: descText
                                        objectName: "descTextObj"
                                        color: "#187988"
                                        text: qsTr("text")
                                        anchors.top: parent.top
                                        anchors.topMargin: 3
                                        anchors.left: parent.left
                                        anchors.leftMargin: 6
                                        clip: true
                                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                                        width: parent.width
                                        font.pixelSize: 12
                                    }
                                }
                            }
                        }

                        Rectangle {
                            id: nextObjRect
                            objectName: "nextObj"
                            x: 183
                            y: 347
                            width: 147
                            height: 28
                            color: "#00000000"
                            radius: 5
                            anchors.right: parent.right
                            anchors.rightMargin: 10

                            signal nextObjClicked()

                            Rectangle {
                                id: nextObjForeground
                                radius: 5
                                anchors.fill: nextObjText
                                opacity: 0
                            }

                            MouseArea {
                                id: nextObjMouseArea
                                x: 13
                                y: 62
                                anchors.fill: nextObjText
                                hoverEnabled: true
                                onEntered: {
                                    nextObjForeground.opacity = 0.1
                                    nextObjText.color = "yellow"
                                }
                                onExited: {
                                    nextObjForeground.opacity = 0.0
                                    nextObjText.color = "white"
                                }
                                onClicked: nextObjRect.nextObjClicked()
                            }

                            Text {
                                id: nextObjText
                                objectName: "nextTextObj"
                                y: 17
                                height: 22
                                color: "white"
                                text: qsTr("Next")
                                anchors.right: nextObjIcon.left
                                anchors.rightMargin: 5
                                anchors.verticalCenter: parent.verticalCenter
                                visible: true
                                verticalAlignment: Text.AlignVCenter
                                horizontalAlignment: Text.AlignRight
                                font.bold: true
                                font.pixelSize: 11

                                x: 7
                            }

                            Image {
                                id: nextObjIcon
                                x: 123
                                y: 13
                                anchors.verticalCenter: parent.verticalCenter
                                sourceSize.height: 24
                                sourceSize.width: 24
                                source: "next.png"
                            }
                        }

                        Rectangle {
                            id: prevObjRect
                            objectName: "prevObj"
                            y: 347
                            width: 147
                            height: 28
                            color: "#00000000"
                            radius: 5
                            anchors.left: parent.left
                            anchors.leftMargin: 8

                            signal prevObjClicked()

                            Rectangle {
                                id: prevObjForeground
                                radius: 5
                                anchors.fill: prevObjText
                                opacity: 0
                            }

                            MouseArea {
                                id: prevObjMouseArea
                                x: 13
                                y: 62
                                hoverEnabled: true
                                anchors.fill: prevObjText
                                onEntered: {
                                    prevObjForeground.opacity = 0.1
                                    prevObjText.color = "yellow"
                                }
                                onExited: {
                                    prevObjForeground.opacity = 0.0
                                    prevObjText.color = "white"
                                }
                                onClicked: prevObjRect.prevObjClicked()
                            }

                            Text {
                                id: prevObjText
                                objectName: "prevTextObj"
                                y: 7
                                height: 22
                                color: "#ffffff"
                                text: qsTr("Previous")
                                anchors.left: prevObjIcon.right
                                anchors.leftMargin: 5
                                anchors.verticalCenterOffset: 0
                                font.pixelSize: 11
                                visible: true
                                anchors.verticalCenter: parent.verticalCenter
                                font.bold: true
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignVCenter
                            }

                            Image {
                                id: prevObjIcon
                                x: 0
                                y: 2
                                anchors.verticalCenter: parent.verticalCenter
                                sourceSize.height: 24
                                sourceSize.width: 24
                                source: "previous.png"
                            }
                        }

                        Text {
                            id: magText
                            objectName: "magTextObj"
                            y: 72
                            width: 164
                            height: 15
                            color: "#ffffff"
                            text: qsTr("Magnitude: ")
                            anchors.left: parent.left
                            anchors.leftMargin: 8
                            font.family: "Cantarell"
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignLeft
                            font.pixelSize: 12
                        }

                        Text {
                            id: sbText
                            objectName: "sbTextObj"
                            x: 8
                            y: 104
                            width: 164
                            height: 15
                            color: "#ffffff"
                            text: qsTr("Surface Brightness:")
                            anchors.left: parent.left
                            anchors.leftMargin: 8
                            font.pixelSize: 12
                            font.family: "Cantarell"
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                        }

                        Text {
                            id: sizeText
                            objectName: "sizeTextObj"
                            y: 136
                            width: 164
                            height: 15
                            color: "#ffffff"
                            text: qsTr("Size: ")
                            anchors.left: parent.left
                            anchors.leftMargin: 8
                            font.pixelSize: 12
                            font.family: "Cantarell"
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                        }

                        Text {
                            id: slewButton
                            objectName: "slewButtonObj"
                            x: 211
                            y: 135
                            width: 119
                            height: 16
                            color: "white"
                            text: qsTr("Slew map to object")
                            anchors.right: parent.right
                            anchors.rightMargin: 10
                            font.underline: true
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 12

                            signal slewButtonClicked()

                            MouseArea {
                                id: slewObjMouseArea
                                hoverEnabled: true
                                anchors.fill: parent
                                onEntered: slewButton.color = "yellow"
                                onExited: slewButton.color = "white"
                                onClicked: slewButton.slewButtonClicked()
                            }
                        }

                        Text {
                            id: detailsButton
                            objectName: "detailsButtonObj"
                            x: 211
                            y: 104
                            width: 119
                            height: 16
                            font.underline: true
                            anchors.rightMargin: 10
                            anchors.right: parent.right
                            verticalAlignment: Text.AlignVCenter
                            color: "white"
                            text: qsTr("More object details")
                            font.pixelSize: 12

                            signal detailsButtonClicked()

                            MouseArea {
                                id: detailsMouseArea
                                hoverEnabled: true
                                anchors.fill: parent
                                onEntered: detailsButton.color = "yellow"
                                onExited: detailsButton.color = "white"
                                onClicked: detailsButton.detailsButtonClicked()
                            }
                        }
                    } //end of detailsView
                } //end of detailsViewContainer

                states: [
                    State {
                        name: "back"
                        PropertyChanges {
                            target: listToDetailsRotation
                            angle: 180
                        }
                        when: skyObjView.flipped
                    }
                ]

                transitions: [
                    Transition {
                        NumberAnimation { target: listToDetailsRotation; property: "angle"; duration: 400 }
                    }
                ]

                transform: Rotation {
                    id: listToDetailsRotation
                    origin.x: container.width / 2;
                    axis.y: 1; axis.z: 0
                }
            } //end of skyObjView
        }//end of viewsContainer
    }//end of base

    Rectangle {
        id: backButton
        x: container.width + 10
        y: 493
        width: 114
        height: 49
        color: "#00000000"
        radius: 5

        Rectangle {
            id: goBackForeground
            anchors.fill: parent
            radius: 5
            opacity: 0.0
        }

        Text {
            id: goBackText
            color: "#f7e808"
            text: "Go back"
            anchors.leftMargin: 45
            font.family: "Cantarell"
            font.pointSize: 13
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
        }

        Image {
            id: leftArrow
            anchors.right: parent.right
            anchors.rightMargin: 74
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 9
            source: "leftArrow.png"
        }

        MouseArea {
            x: 45
            y: 0
            anchors.fill: backButton
            hoverEnabled: true
            onEntered: goBackForeground.opacity = 0.2
            onExited: goBackForeground.opacity = 0.0
            onClicked: {
                if ( container.state == "soTypeSelected" )
                {
                    console.log("soTypeSelected")
                    if ( !skyObjView.flipped )
                    {
                        console.log( "skyObjView.flipped :" + skyObjView.flipped )
                        console.log( "categoryView.flipped :" + categoryView.flipped )
                        container.state = "base"
                        console.log( "container.state :"+container.state )
                    }
                    else if ( skyObjView.flipped )
                    {
                        console.log( "skyObjView.flipped :" + skyObjView.flipped )
                        skyObjView.flipped = false
                    }
                }
            }
        }
    }

    Image {
        id: settingsIcon
        x: 9
        y: 528
        width: 28
        height: 28
        anchors.verticalCenter: backButton.verticalCenter
        sourceSize.height: 40
        sourceSize.width: 40
        smooth: true
        fillMode: Image.Stretch
        source: "settingsIcon.png"

        MouseArea {
            id: settingsMouseArea
            anchors.fill: parent
            hoverEnabled: true
            onEntered: settingsForeground.opacity = 0.2
            onExited: settingsForeground.opacity = 0.0
        }

        Rectangle {
            id: settingsForeground
            anchors.fill: parent
            opacity: 0.0
            radius: 5
        }
    }

    states: [
        State {
            name: "base"

            PropertyChanges {
                target: galText
                color: "#6b6660"
            }

            PropertyChanges {
                target: nebText
                color: "#6b6660"
            }

            PropertyChanges {
                target: clustText
                color: "#6b6660"
            }
        },
        State {
            name: "planetAreaEntered"

            PropertyChanges {
                target: planetText
                font.pixelSize: 21
                font.bold: true
            }
        },
        State {
            name: "starAreaEntered"

            PropertyChanges {
                target: starText
                font.bold: true
                font.pixelSize: 21
            }
        },
        State {
            name: "conAreaEntered"

            PropertyChanges {
                target: conText
                font.bold: true
                font.pixelSize: 21
            }
        },
        State {
            name: "dsoAreaEntered"

            PropertyChanges {
                target: dsoText
                font.bold: true
                font.pixelSize: 21
            }
        },
        State {
            name: "dsoAreaClicked"
            PropertyChanges {
                target: dsoText
                font.pixelSize: "21"
                font.bold: true
            }

            PropertyChanges {
                target: galRect
                opacity: 1
            }

            PropertyChanges {
                target: nebRect
                opacity: 1
            }

            PropertyChanges {
                target: clustRect
                opacity: 1
            }

            PropertyChanges {
                target: planetRect
                opacity: 0.350
            }

            PropertyChanges {
                target: conRect
                opacity: 0.350
            }

            PropertyChanges {
                target: starRect
                opacity: 0.350
            }

            PropertyChanges {
                target: clustMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: galMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: nebMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: dsoMouseArea
                hoverEnabled: false
            }

            PropertyChanges {
                target: dsoContainer
                y: 160
            }

            PropertyChanges {
                target: categoryView
                x: 0
                y: 31
                width: 352
                height: 351
            }

            PropertyChanges {
                target: galText
                color: "#e4800d"
            }

            PropertyChanges {
                target: clustText
                color: "#e4800d"
            }

            PropertyChanges {
                target: nebText
                color: "#e4800d"
            }
        },
        State {
            name: "galAreaEntered"
            PropertyChanges {
                target: dsoText
                font.pixelSize: "21"
                font.bold: false
            }

            PropertyChanges {
                target: galRect
                opacity: 1
            }

            PropertyChanges {
                target: nebRect
                opacity: 1
            }

            PropertyChanges {
                target: clustRect
                opacity: 1
            }

            PropertyChanges {
                target: planetRect
                opacity: 0.350
            }

            PropertyChanges {
                target: conRect
                opacity: 0.350
            }

            PropertyChanges {
                target: starRect
                opacity: 0.350
            }

            PropertyChanges {
                target: dsoMouseArea
                hoverEnabled: false
            }

            PropertyChanges {
                target: galText
                color: "#e4800d"
                font.bold: true
                font.pixelSize: 21
            }

            PropertyChanges {
                target: dsoContainer
                y: 160
            }

            PropertyChanges {
                target: clustMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: galMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: nebMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: nebText
                color: "#e4800d"
            }

            PropertyChanges {
                target: clustText
                color: "#e4800d"
            }
        },
        State {
            name: "nebAreaEntered"
            PropertyChanges {
                target: dsoText
                font.pixelSize: "21"
                font.bold: false
            }

            PropertyChanges {
                target: galRect
                opacity: 1
            }

            PropertyChanges {
                target: nebRect
                opacity: 1
            }

            PropertyChanges {
                target: clustRect
                opacity: 1
            }

            PropertyChanges {
                target: planetRect
                opacity: 0.350
            }

            PropertyChanges {
                target: conRect
                opacity: 0.350
            }

            PropertyChanges {
                target: starRect
                opacity: 0.350
            }

            PropertyChanges {
                target: dsoMouseArea
                hoverEnabled: false
            }

            PropertyChanges {
                target: nebText
                color: "#e4800d"
                font.bold: true
                font.pixelSize: 21
            }

            PropertyChanges {
                target: dsoContainer
                y: 160
            }

            PropertyChanges {
                target: clustMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: nebMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: galMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: galText
                color: "#e4800d"
            }

            PropertyChanges {
                target: clustText
                color: "#e4800d"
            }
        },
        State {
            name: "clustAreaEntered"
            PropertyChanges {
                target: dsoText
                font.pixelSize: "21"
                font.bold: false
            }

            PropertyChanges {
                target: galRect
                opacity: 1
            }

            PropertyChanges {
                target: nebRect
                opacity: 1
            }

            PropertyChanges {
                target: clustRect
                opacity: 1
            }

            PropertyChanges {
                target: planetRect
                opacity: 0.350
            }

            PropertyChanges {
                target: conRect
                opacity: 0.350
            }

            PropertyChanges {
                target: starRect
                opacity: 0.350
            }

            PropertyChanges {
                target: dsoMouseArea
                hoverEnabled: false
            }

            PropertyChanges {
                target: clustText
                color: "#e4800d"
                font.bold: true
                font.pixelSize: 21
            }

            PropertyChanges {
                target: dsoContainer
                y: 160
            }

            PropertyChanges {
                target: clustMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: galMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: nebMouseArea
                hoverEnabled: true
                enabled: true
            }

            PropertyChanges {
                target: nebText
                color: "#e4800d"
            }

            PropertyChanges {
                target: galText
                color: "#e4800d"
            }
        },
        State {
            name: "soTypeSelected"

            PropertyChanges {
                target: viewsRow
                x: -(container.width)
                y: 0
                anchors.topMargin: 0
                anchors.bottomMargin: 0
            }

            PropertyChanges {
                target: backButton
                x: 236
            }
        }
    ]

    transitions: [
        Transition {
            from: "*"
            to: "planetAreaEntered"
            NumberAnimation { target: planetText; property: "font.pixelSize"; to: 21; duration: 150 }
            NumberAnimation { target: dsoContainer; property: "y"; to: 172; duration: 200 }
        },
        Transition {
            from: "*"
            to: "starAreaEntered"
            NumberAnimation { target: starText; property: "font.pixelSize"; to: 21; duration: 150 }
            NumberAnimation { target: dsoContainer; property: "y"; to: 172; duration: 200 }
        },
        Transition {
            from: "*"
            to: "conAreaEntered"
            NumberAnimation { target: conText; property: "font.pixelSize"; to: 21; duration: 150 }
            NumberAnimation { target: dsoContainer; property: "y"; to: 172; duration: 200 }
        },
        Transition {
            from: "*"
            to: "dsoAreaEntered"
            NumberAnimation { target: dsoText; property: "font.pixelSize"; to: 21; duration: 150 }
        },
        Transition {
            from: "*"
            to: "galAreaEntered"
            NumberAnimation { target: galText; property: "font.pixelSize"; to: 21; duration: 150 }
        },
        Transition {
            from: "*"
            to: "nebAreaEntered"
            NumberAnimation { target: nebText; property: "font.pixelSize"; to: 21; duration: 150 }
        },
        Transition {
            from: "*"
            to: "clustAreaEntered"
            NumberAnimation { target: clustText; property: "font.pixelSize"; to: 21; duration: 150 }
        },
        Transition {
            from: "*"
            to: "dsoAreaClicked"
            NumberAnimation { target: dsoContainer; property: "y"; duration: 200 }
            NumberAnimation { target: galRect; property: "opacity"; duration: 500 }
            NumberAnimation { target: nebRect; property: "opacity"; duration: 500 }
            NumberAnimation { target: clustRect; property: "opacity"; duration: 500 }
        },
        Transition {
            from: "*"
            to: "soTypeSelected"
            NumberAnimation { target: viewsRow; property: "x"; duration: 250; easing.type: Easing.InOutQuad }
            NumberAnimation { target: backButton; property: "x"; duration: 250; easing.type: Easing.InOutQuad }
        },
        Transition {
            from: "soTypeSelected"
            to: "base"
            NumberAnimation { target: viewsRow; property: "x"; duration: 250; easing.type: Easing.InOutQuad }
            NumberAnimation { target: backButton; property: "x"; duration: 250; easing.type: Easing.InOutQuad }
        }
    ]
}
