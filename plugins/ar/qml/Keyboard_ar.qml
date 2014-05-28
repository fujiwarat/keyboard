/*
 * Copyright 2013 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.0
import "../../keys"

KeyPad {
    anchors.fill: parent

    content: c1
    symbols: "languages/Keyboard_symbols.qml"

    Column {
        id: c1
        anchors.fill: parent
        spacing: 0

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "ض"; extended: ["1"]; extendedShifted: ["1"] }
            CharKey { label: "ص"; extended: ["2"]; extendedShifted: ["2"] }
            CharKey { label: "ث"; extended: ["3"]; extendedShifted: ["3"] }
            CharKey { label: "ق"; extended: ["4"]; extendedShifted: ["4"] }
            CharKey { label: "ف"; extended: ["5"]; extendedShifted: ["5"] }
            CharKey { label: "غ"; shifted: "إ"; extended: ["6"]; extendedShifted: ["6"] }
            CharKey { label: "ع"; extended: ["7"]; extendedShifted: ["7"] }
            CharKey { label: "ه"; extended: ["8"]; extendedShifted: ["8"] }
            CharKey { label: "خ"; extended: ["9"]; extendedShifted: ["9"] }
            CharKey { label: "ح"; extended: ["0"]; extendedShifted: ["0"] }
            CharKey { label: "ج";}
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            CharKey { label: "ش"; }
            CharKey { label: "س"; }
            CharKey { label: "ي"; }
            CharKey { label: "ب"; }
            CharKey { label: "ل"; }
            CharKey { label: "ا"; shifted: "أ" }
            CharKey { label: "ت"; }
            CharKey { label: "ن"; }
            CharKey { label: "م"; }
            CharKey { label: "ك"; }
            CharKey { label: "د"; }
        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 0

            ShiftKey { padding: 0 }
            CharKey { label: "ئ"; }
            CharKey { label: "ء"; }
            CharKey { label: "ؤ"; }
            CharKey { label: "ر"; }
            CharKey { label: "ى"; shifted: "آ" }
            CharKey { label: "ة"; }
            CharKey { label: "و"; }
            CharKey { label: "ز"; }
            CharKey { label: "ظ"; }
            BackspaceKey { padding: 0 }
        }

        Item {
            anchors.left: parent.left
            anchors.right: parent.right

            height: panel.keyHeight;

            SymbolShiftKey { id: symShiftKey;                            anchors.left: parent.left; }
            LanguageKey    { id: languageMenuButton;                     anchors.left: symShiftKey.right; }
            CharKey        { id: commaKey;    label: "ذ"; shifted: "/";  anchors.left: languageMenuButton.right; }
            SpaceKey       { id: spaceKey;                               anchors.left: commaKey.right; anchors.right: dotKey.left; noMagnifier: true }
            CharKey        { id: dotKey;      label: "."; shifted: ".";  anchors.right: specialChar.left; }
            CharKey        { id: specialChar; label: "ط";                anchors.right: enterKey.left }
            ReturnKey      { id: enterKey;                               anchors.right: parent.right }
        }
    } // column
}
