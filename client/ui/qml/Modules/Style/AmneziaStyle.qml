pragma Singleton

import QtQuick

QtObject {
    property QtObject color: QtObject {
        readonly property color transparent: 'transparent'

        readonly property color textPrimary: '#ECECEC'
        readonly property color textSecondary: '#D1D1D1'
        readonly property color textTertiary: '#B4B4B4'
        readonly property color textQuaternary: '#969696'
        readonly property color textInverted: '#171717'
        readonly property color textAccent: '#6BD8B4'
        readonly property color textInfoInverse: '#0369A1'
        readonly property color textStaticWhite: '#FFFFFF'

        readonly property color bgBase: '#212121'
        readonly property color bgSurface: '#171717'
        readonly property color bgSurfaceAlt: '#303030'
        readonly property color bgSheet: '#2A2A2A'
        readonly property color bgPanel: '#3A3A3A'
        readonly property color bgPanelAlt: '#4A4A4A'
        readonly property color bgOverlay: '#99000000'
        readonly property color bgStateLayer: '#14ECECEC'
        readonly property color bgStateLayerPressed: '#1AECECEC'
        readonly property color bgStateLayerAccent: '#146BD8B4'
        readonly property color bgSurfaceInverse: '#ECECEC'
        readonly property color bgSurfaceInverseAlt: '#D1D1D1'
        readonly property color bgControlTrack: '#303030'
        readonly property color bgField: '#303030'
        readonly property color bgSelected: '#303030'
        readonly property color bgAccentSubtle: '#3310A37F'
        readonly property color bgStaticWhite: '#FFFFFF'

        readonly property color bgAction: '#ECECEC'
        readonly property color bgActionHover: '#D1D1D1'
        readonly property color bgActionPress: '#B4B4B4'

        readonly property color borderFaint: '#383838'
        readonly property color borderSoft: '#424242'
        readonly property color borderMedium: '#606060'
        readonly property color borderBold: '#B4B4B4'
        readonly property color borderEmphasis: '#ECECEC'
        readonly property color borderAccent: '#6BD8B4'
        readonly property color borderField: '#606060'
        readonly property color borderFocus: '#ECECEC'

        readonly property color accentLight: '#6BD8B4'
        readonly property color accentDefault: '#10A37F'
        readonly property color accentDark: '#0D8063'
        readonly property color accentDeep: '#07523F'

        readonly property color statusDestructive: '#F87171'
        readonly property color statusWarning: '#EAB308'
        readonly property color statusSuccess: '#6BD8B4'

        readonly property color promoRecommendation: '#A78BFA'
        readonly property color promoUpdate: '#38BDF8'
        readonly property color promoOverlay: '#148B5CF6'
        readonly property color promoPink: '#DB2777'
        readonly property color promoPinkDeep: '#9D174D'

        readonly property color iconDefault: '#ECECEC'
        readonly property color iconSecondary: '#B4B4B4'
        readonly property color iconTertiary: '#424242'
        readonly property color iconInverted: '#171717'

        readonly property color shadowLayer1: '#26000000'
        readonly property color shadowLayer2: '#4D000000'
        readonly property color shadowGlow: '#10A37F'
    }
}
