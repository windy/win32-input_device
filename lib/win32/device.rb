require "win32/input_device/version"
require 'windows/api'
module Windows
  module InputDevice
    API.auto_namespace = 'Windows::InputDevice'
    API.auto_constant  = true
    API.auto_method    = true
    API.auto_unicode   = false
    
    private
    API.new('keybd_event','IILL','V','user32')
    API.new('mouse_event','LLLLL','V','user32')
    
    HWND_DESKTOP = 0

    #keybd_event
    KEYEVENTF_EXTENDEDKEY = 1
    KEYEVENTF_KEYUP = 2
    #mouse_event
    MOUSEEVENTF_MOVE = 1
    MOUSEEVENTF_LEFTDOWN = 2
    MOUSEEVENTF_LEFTUP = 4
    MOUSEEVENTF_RIGHTDOWN = 8
    MOUSEEVENTF_RIGHTUP = 16
    MOUSEEVENTF_MIDDLEDOWN = 32
    MOUSEEVENTF_MIDDLEUP = 64
    MOUSEEVENTF_ABSOLUTE = 32768

    WM_KEYDOWN = 256
    WM_KEYUP = 257

    GW_HWNDFIRST = 0
    GW_HWNDLAST = 1
    GW_HWNDNEXT = 2
    GW_HWNDPREV = 3
    GW_OWNER = 4
    GW_CHILD = 5


    GWL_EXSTYLE = -20
    GWL_STYLE = -16
    GWL_WNDPROC = -4
    GWL_HINSTANCE = -6
    GWL_HWNDPARENT = -8
    GWL_ID = -12
    GWL_USERDATA = -21


    VK_CANCEL = 0x03
    VK_BACK = 0x08
    VK_TAB = 0x09
    VK_CLEAR = 0x0c
    VK_RETURN = 0x0d
    VK_PAUSE = 0x13
    VK_ESCAPE = 0x1b
    VK_SPACE = 0x20
    VK_PRIOR = 0x21
    VK_NEXT = 0x22
    VK_END = 0x23
    VK_HOME = 0x24
    VK_LEFT = 0x25
    VK_UP = 0x26
    VK_RIGHT = 0x27
    VK_DOWN = 0x28
    VK_SELECT = 0x29
    VK_EXECUTE = 0x2b
    VK_SNAPSHOT = 0x2c
    VK_INSERT = 0x2d
    VK_DELETE = 0x2e
    VK_HELP = 0x2f
    VK_0 = 0x30
    VK_1 = 0x31
    VK_2 = 0x32
    VK_3 = 0x33
    VK_4 = 0x34
    VK_5 = 0x35
    VK_6 = 0x36
    VK_7 = 0x37
    VK_8 = 0x38
    VK_9 = 0x39
    VK_A = 0x41
    VK_B = 0x42
    VK_C = 0x43
    VK_D = 0x44
    VK_E = 0x45
    VK_F = 0x46
    VK_G = 0x47
    VK_H = 0x48
    VK_I = 0x49
    VK_J = 0x4a
    VK_K = 0x4b
    VK_L = 0x4c
    VK_M = 0x4d
    VK_N = 0x4e
    VK_O = 0x4f
    VK_P = 0x50
    VK_Q = 0x51
    VK_R = 0x52
    VK_S = 0x53
    VK_T = 0x54
    VK_U = 0x55
    VK_V = 0x56
    VK_W = 0x57
    VK_X = 0x58
    VK_Y = 0x59
    VK_Z = 0x5a
    VK_LWIN = 0x5b
    VK_RWIN = 0x5c
    VK_APPS = 0x5d
    VK_NUMPAD0 = 0x60
    VK_NUMPAD1 = 0x61
    VK_NUMPAD2 = 0x62
    VK_NUMPAD3 = 0x63
    VK_NUMPAD4 = 0x64
    VK_NUMPAD5 = 0x65
    VK_NUMPAD6 = 0x66
    VK_NUMPAD7 = 0x67
    VK_NUMPAD8 = 0x68
    VK_NUMPAD9 = 0x69
    VK_MULTIPLY = 0x6a
    VK_ADD = 0x6b
    VK_SEPARATOR = 0x6c
    VK_SUBTRACT = 0x6d
    VK_DECIMAL = 0x6e
    VK_DIVIDE = 0x6f
    VK_F1 = 0x70
    VK_F2 = 0x71
    VK_F3 = 0x72
    VK_F4 = 0x73
    VK_F5 = 0x74
    VK_F6 = 0x75
    VK_F7 = 0x76
    VK_F8 = 0x77
    VK_F9 = 0x78
    VK_F10 = 0x79
    VK_F11 = 0x7a
    VK_F12 = 0x7b
    VK_F13 = 0x7c
    VK_F14 = 0x7d
    VK_F15 = 0x7e
    VK_F16 = 0x7f
    VK_F17 = 0x80
    VK_F18 = 0x81
    VK_F19 = 0x82
    VK_F20 = 0x83
    VK_F21 = 0x84
    VK_F22 = 0x85
    VK_F23 = 0x86
    VK_F24 = 0x87
    VK_NUMLOCK = 0x90
    VK_SCROLL = 0x91
    VK_OEM_EQU = 0x92
    VK_LSHIFT = 0xa0
    VK_RSHIFT = 0xa1
    VK_LCONTROL = 0xa2
    VK_RCONTROL = 0xa3
    VK_LMENU = 0xa4
    VK_RMENU = 0xa5
    VK_OEM_1 = 0xba
    VK_OEM_PLUS = 0xbb
    VK_OEM_COMMA = 0xbc
    VK_OEM_MINUS = 0xbd
    VK_OEM_PERIOD = 0xbe
    VK_OEM_2 = 0xbf
    VK_OEM_3 = 0xc0
    VK_OEM_4 = 0xdb
    VK_OEM_5 = 0xdc
    VK_OEM_6 = 0xdd
    VK_OEM_7 = 0xde
    VK_OEM_8 = 0xdf
    VK_ATTN = 0xf6
    VK_CRSEL = 0xf7
    VK_EXSEL = 0xf8
    VK_EREOF = 0xf9
    VK_PLAY = 0xfa
    VK_ZOOM = 0xfb
    VK_NONAME = 0xfc
    VK_PA1 = 0xfd
    VK_EM_CLEAR = 0xfe


    VKOPT_NIL = 0
    VKOPT_SHIFT = 1  # +
    VKOPT_CTRL = 2   # ^
    VKOPT_ALT = 4    # %
    VKey = {
      ' ' => [VK_SPACE, VKOPT_NIL],
      'A' => [VK_A, VKOPT_SHIFT],
      'B' => [VK_B, VKOPT_SHIFT],
      'C' => [VK_C, VKOPT_SHIFT],
      'D' => [VK_D, VKOPT_SHIFT],
      'E' => [VK_E, VKOPT_SHIFT],
      'F' => [VK_F, VKOPT_SHIFT],
      'G' => [VK_G, VKOPT_SHIFT],
      'H' => [VK_H, VKOPT_SHIFT],
      'I' => [VK_I, VKOPT_SHIFT],
      'J' => [VK_J, VKOPT_SHIFT],
      'K' => [VK_K, VKOPT_SHIFT],
      'L' => [VK_L, VKOPT_SHIFT],
      'M' => [VK_M, VKOPT_SHIFT],
      'N' => [VK_N, VKOPT_SHIFT],
      'O' => [VK_O, VKOPT_SHIFT],
      'P' => [VK_P, VKOPT_SHIFT],
      'Q' => [VK_Q, VKOPT_SHIFT],
      'R' => [VK_R, VKOPT_SHIFT],
      'S' => [VK_S, VKOPT_SHIFT],
      'T' => [VK_T, VKOPT_SHIFT],
      'U' => [VK_U, VKOPT_SHIFT],
      'V' => [VK_V, VKOPT_SHIFT],
      'W' => [VK_W, VKOPT_SHIFT],
      'X' => [VK_X, VKOPT_SHIFT],
      'Y' => [VK_Y, VKOPT_SHIFT],
      'Z' => [VK_Z, VKOPT_SHIFT],
      '!' => [VK_1, VKOPT_SHIFT],
      '"' => [VK_2, VKOPT_SHIFT],
      '#' => [VK_3, VKOPT_SHIFT],
      '$' => [VK_4, VKOPT_SHIFT],
      '&' => [VK_6, VKOPT_SHIFT],
      '\'' => [VK_7, VKOPT_SHIFT],
      '-' => [VK_OEM_MINUS, VKOPT_NIL],
      '=' => [VK_OEM_MINUS, VKOPT_SHIFT],
      '~' => [VK_OEM_7, VKOPT_SHIFT],
      ?\  => [VK_OEM_5, VKOPT_NIL],
      '|' => [VK_OEM_5, VKOPT_SHIFT],
      '@' => [VK_OEM_3, VKOPT_NIL],
      '`' => [VK_OEM_3, VKOPT_SHIFT],
      '[' => [VK_OEM_4, VKOPT_NIL],
      ';' => [VK_OEM_PLUS, VKOPT_NIL],
      ':' => [VK_OEM_1, VKOPT_NIL],
      '*' => [VK_OEM_1, VKOPT_SHIFT],
      ']' => [VK_OEM_6, VKOPT_NIL],
    }
    VKeyName = {
      'CANCEL' => [VK_CANCEL, VKOPT_NIL],
      'BACK' => [VK_BACK, VKOPT_NIL],
      'TAB' => [VK_TAB, VKOPT_NIL],
      'CLEAR' => [VK_CLEAR, VKOPT_NIL],
      'RETURN' => [VK_RETURN, VKOPT_NIL],
      'PAUSE' => [VK_PAUSE, VKOPT_NIL],
      'ESCAPE' => [VK_ESCAPE, VKOPT_NIL],
      'SPACE' => [VK_SPACE, VKOPT_NIL],
      'PRIOR' => [VK_PRIOR, VKOPT_NIL],
      'NEXT' => [VK_NEXT, VKOPT_NIL],
      'END' => [VK_END, VKOPT_NIL],
      'HOME' => [VK_HOME, VKOPT_NIL],
      'LEFT' => [VK_LEFT, VKOPT_NIL],
      'UP' => [VK_UP, VKOPT_NIL],
      'RIGHT' => [VK_RIGHT, VKOPT_NIL],
      'DOWN' => [VK_DOWN, VKOPT_NIL],
      'SELECT' => [VK_SELECT, VKOPT_NIL],
      'EXECUTE' => [VK_EXECUTE, VKOPT_NIL],
      'SNAPSHOT' => [VK_SNAPSHOT, VKOPT_NIL],
      'INSERT' => [VK_INSERT, VKOPT_NIL],
      'DELETE' => [VK_DELETE, VKOPT_NIL],
      'HELP' => [VK_HELP, VKOPT_NIL],
      '0' => [VK_0, VKOPT_NIL],
      '1' => [VK_1, VKOPT_NIL],
      '2' => [VK_2, VKOPT_NIL],
      '3' => [VK_3, VKOPT_NIL],
      '4' => [VK_4, VKOPT_NIL],
      '5' => [VK_5, VKOPT_NIL],
      '6' => [VK_6, VKOPT_NIL],
      '7' => [VK_7, VKOPT_NIL],
      '8' => [VK_8, VKOPT_NIL],
      '9' => [VK_9, VKOPT_NIL],
      'a' => [VK_A, VKOPT_NIL],
      'b' => [VK_B, VKOPT_NIL],
      'c' => [VK_C, VKOPT_NIL],
      'd' => [VK_D, VKOPT_NIL],
      'e' => [VK_E, VKOPT_NIL],
      'f' => [VK_F, VKOPT_NIL],
      'g' => [VK_G, VKOPT_NIL],
      'h' => [VK_H, VKOPT_NIL],
      'i' => [VK_I, VKOPT_NIL],
      'j' => [VK_J, VKOPT_NIL],
      'k' => [VK_K, VKOPT_NIL],
      'l' => [VK_L, VKOPT_NIL],
      'm' => [VK_M, VKOPT_NIL],
      'n' => [VK_N, VKOPT_NIL],
      'o' => [VK_O, VKOPT_NIL],
      'p' => [VK_P, VKOPT_NIL],
      'q' => [VK_Q, VKOPT_NIL],
      'r' => [VK_R, VKOPT_NIL],
      's' => [VK_S, VKOPT_NIL],
      't' => [VK_T, VKOPT_NIL],
      'u' => [VK_U, VKOPT_NIL],
      'v' => [VK_V, VKOPT_NIL],
      'w' => [VK_W, VKOPT_NIL],
      'x' => [VK_X, VKOPT_NIL],
      'y' => [VK_Y, VKOPT_NIL],
      'z' => [VK_Z, VKOPT_NIL],
      'LWIN' => [VK_LWIN, VKOPT_NIL],
      'RWIN' => [VK_RWIN, VKOPT_NIL],
      'APPS' => [VK_APPS, VKOPT_NIL],
      'NUMPAD0' => [VK_NUMPAD0, VKOPT_NIL],
      'NUMPAD1' => [VK_NUMPAD1, VKOPT_NIL],
      'NUMPAD2' => [VK_NUMPAD2, VKOPT_NIL],
      'NUMPAD3' => [VK_NUMPAD3, VKOPT_NIL],
      'NUMPAD4' => [VK_NUMPAD4, VKOPT_NIL],
      'NUMPAD5' => [VK_NUMPAD5, VKOPT_NIL],
      'NUMPAD6' => [VK_NUMPAD6, VKOPT_NIL],
      'NUMPAD7' => [VK_NUMPAD7, VKOPT_NIL],
      'NUMPAD8' => [VK_NUMPAD8, VKOPT_NIL],
      'NUMPAD9' => [VK_NUMPAD9, VKOPT_NIL],
      'MULTIPLY' => [VK_MULTIPLY, VKOPT_NIL],
      'ADD' => [VK_ADD, VKOPT_NIL],
      'SEPARATOR' => [VK_SEPARATOR, VKOPT_NIL],
      'SUBTRACT' => [VK_SUBTRACT, VKOPT_NIL],
      'DECIMAL' => [VK_DECIMAL, VKOPT_NIL],
      'DIVIDE' => [VK_DIVIDE, VKOPT_NIL],
      'F1' => [VK_F1, VKOPT_NIL],
      'F2' => [VK_F2, VKOPT_NIL],
      'F3' => [VK_F3, VKOPT_NIL],
      'F4' => [VK_F4, VKOPT_NIL],
      'F5' => [VK_F5, VKOPT_NIL],
      'F6' => [VK_F6, VKOPT_NIL],
      'F7' => [VK_F7, VKOPT_NIL],
      'F8' => [VK_F8, VKOPT_NIL],
      'F9' => [VK_F9, VKOPT_NIL],
      'F10' => [VK_F10, VKOPT_NIL],
      'F11' => [VK_F11, VKOPT_NIL],
      'F12' => [VK_F12, VKOPT_NIL],
      'F13' => [VK_F13, VKOPT_NIL],
      'F14' => [VK_F14, VKOPT_NIL],
      'F15' => [VK_F15, VKOPT_NIL],
      'F16' => [VK_F16, VKOPT_NIL],
      'F17' => [VK_F17, VKOPT_NIL],
      'F18' => [VK_F18, VKOPT_NIL],
      'F19' => [VK_F19, VKOPT_NIL],
      'F20' => [VK_F20, VKOPT_NIL],
      'F21' => [VK_F21, VKOPT_NIL],
      'F22' => [VK_F22, VKOPT_NIL],
      'F23' => [VK_F23, VKOPT_NIL],
      'F24' => [VK_F24, VKOPT_NIL],
      'NUMLOCK' => [VK_NUMLOCK, VKOPT_NIL],
      'SCROLL' => [VK_SCROLL, VKOPT_NIL],
      'OEM_EQU' => [VK_OEM_EQU, VKOPT_NIL],
      'LSHIFT' => [VK_LSHIFT, VKOPT_NIL],
      'RSHIFT' => [VK_RSHIFT, VKOPT_NIL],
      'LCONTROL' => [VK_LCONTROL, VKOPT_NIL],
      'RCONTROL' => [VK_RCONTROL, VKOPT_NIL],
      'LMENU' => [VK_LMENU, VKOPT_NIL],
      'RMENU' => [VK_RMENU, VKOPT_NIL],
      'OEM_1' => [VK_OEM_1, VKOPT_NIL],
      'OEM_PLUS' => [VK_OEM_PLUS, VKOPT_NIL],
      'OEM_COMMA' => [VK_OEM_COMMA, VKOPT_NIL],
      'OEM_MINUS' => [VK_OEM_MINUS, VKOPT_NIL],
      'OEM_PERIOD' => [VK_OEM_PERIOD, VKOPT_NIL],
      'OEM_2' => [VK_OEM_2, VKOPT_NIL],
      'OEM_3' => [VK_OEM_3, VKOPT_NIL],
      'OEM_4' => [VK_OEM_4, VKOPT_NIL],
      'OEM_5' => [VK_OEM_5, VKOPT_NIL],
      'OEM_6' => [VK_OEM_6, VKOPT_NIL],
      'OEM_7' => [VK_OEM_7, VKOPT_NIL],
      'OEM_8' => [VK_OEM_8, VKOPT_NIL],
      'ATTN' => [VK_ATTN, VKOPT_NIL],
      'CRSEL' => [VK_CRSEL, VKOPT_NIL],
      'EXSEL' => [VK_EXSEL, VKOPT_NIL],
      'EREOF' => [VK_EREOF, VKOPT_NIL],
      'PLAY' => [VK_PLAY, VKOPT_NIL],
      'ZOOM' => [VK_ZOOM, VKOPT_NIL],
      'NONAME' => [VK_NONAME, VKOPT_NIL],
      'PA1' => [VK_PA1, VKOPT_NIL],
      'EM_CLEAR' => [VK_EM_CLEAR, VKOPT_NIL],
      #aliases
      'BREAK' => [VK_CANCEL, VKOPT_NIL],
      'BKSP' => [VK_BACK, VKOPT_NIL],
      'BACKSPACE' => [VK_BACK, VKOPT_NIL],
      'BS' => [VK_BACK, VKOPT_NIL],
      'ESC' => [VK_ESCAPE, VKOPT_NIL],
      'ENTER' => [VK_RETURN, VKOPT_NIL],
      'PRTSCR' => [VK_SNAPSHOT, VKOPT_NIL],
      'PGDN' => [VK_NEXT, VKOPT_NIL],
      'PGUP' => [VK_PRIOR, VKOPT_NIL],
    }    
  end
end


module Win32
  module IO
    class InputDevice
      extend Windows::InputDevice
      def self.keybd( key_code, scan_code=0, flag=0, extra_info=0 )
        keybd_event(key_code,scan_code,flag,extra_info)
      end
      
      def self.mouse(flags, x=0, y=0, data = 0, extrainfo = 0)
        mouse_event(flags, x, y, data, extrainfo)
      end
    end
  end
end