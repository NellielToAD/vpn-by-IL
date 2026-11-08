pragma Singleton

import QtQuick

QtObject {
    property QtObject color: QtObject {
        readonly property color transparent: 'transparent'

        readonly property color textPrimary: '#0D0D0D'
        readonly property color textSecondary: '#5D5D5D'
        readonly property color textTertiary: '#6E6E6E'
        readonly property color textQuaternary: '#8F8F8F'
        readonly property color textInverted: '#FFFFFF'
        readonly property color textAccent: '#0B8A6A'
        readonly property color textInfoInverse: '#7DD3FC'
        readonly property color textStaticWhite: '#FFFFFF'

        readonly property color bgBase: '#FFFFFF'
        readonly property color bgSurface: '#F9F9F9'
        readonly property color bgSurfaceAlt: '#F3F3F3'
        readonly property color bgSheet: '#FFFFFF'
        readonly property color bgPanel: '#E8E8E8'
        readonly property color bgPanelAlt: '#DCDCDC'
        readonly property color bgOverlay: '#66000000'
        readonly property color bgStateLayer: '#0D000000'
        readonly property color bgStateLayerPressed: '#17000000'
        readonly property color bgStateLayerAccent: '#1410A37F'
        readonly property color bgSurfaceInverse: '#0D0D0D'
        readonly property color bgSurfaceInverseAlt: '#303030'
        readonly property color bgControlTrack: '#E3E3E3'
        readonly property color bgField: '#FFFFFF'
        readonly property color bgSelected: '#ECECEC'
        readonly property color bgAccentSubtle: '#1F10A37F'
        readonly property color bgStaticWhite: '#FFFFFF'

        readonly property color bgAction: '#0D0D0D'
        readonly property color bgActionHover: '#303030'
        readonly property color bgActionPress: '#4A4A4A'

        readonly property color borderFaint: '#F0F0F0'
        readonly property color borderSoft: '#E5E5E5'
        readonly property color borderMedium: '#CFCFCF'
        readonly property color borderBold: '#8F8F8F'
        readonly property color borderEmphasis: '#0D0D0D'
        readonly property color borderAccent: '#10A37F'
        readonly property color borderField: '#D9D9D9'
        readonly property color borderFocus: '#0D0D0D'

        readonly property color accentLight: '#10A37F'
        readonly property color accentDefault: '#0D8F6F'
        readonly property color accentDark: '#0B7A5E'
        readonly property color accentDeep: '#B7E8D9'

        readonly property color statusDestructive: '#D92D20'
        readonly property color statusWarning: '#B45309'
        readonly property color statusSuccess: '#10A37F'

        readonly property color promoRecommendation: '#7C3AED'
        readonly property color promoUpdate: '#0284C7'
        readonly property color promoOverlay: '#148B5CF6'
        readonly property color promoPink: '#DB2777'
        readonly property color promoPinkDeep: '#9D174D'

        readonly property color iconDefault: '#0D0D0D'
        readonly property color iconSecondary: '#6E6E6E'
        readonly property color iconTertiary: '#CFCFCF'
        readonly property color iconInverted: '#FFFFFF'

        readonly property color shadowLayer1: '#0F000000'
        readonly property color shadowLayer2: '#1F000000'
        readonly property color shadowGlow: '#10A37F'
    }
}
