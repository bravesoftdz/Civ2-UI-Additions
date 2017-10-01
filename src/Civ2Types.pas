unit Civ2Types;

interface
uses Windows;

type
  TCitySprite = packed record
    X1: Integer;
    Y1: Integer;
    X2: Integer;
    Y2: Integer;
    SType: Integer;
    SIndex: Integer;
  end;
  TCitySprites = array[0..199] of TCitySprite;

  TCityWindow = packed record             // 6A91B8
    __1: array[1..$2D8] of Byte;
    CitySprites: TCitySprites;            // + 2D8 = 6A9490
    CitySpritesItems: Cardinal;           // + 2D8 + 12C0 = 6AA750
    CityIndex: Cardinal;                  // + 159C
    __2: array[1..$34] of Byte;
    WindowSize: Integer;                  // + 15D4 = 6AA78C  // 1, 2, 3
    __3: Cardinal;
    MarginX: Cardinal;                    // + 15DC = 6AA794
    MarginY: Cardinal;                    // + 15E0 = 6AA798
  end;

  TCity = packed record
    Size: Byte;
    __1: array[1..$57] of Byte;
  end;
  TCities = array[0..$FF] of TCity;       // 64F349

  PWindowInfo = ^TWindowInfo;
  PButtonInfo = ^TButtonInfo;
  PScrollBarData = ^TScrollBarData;
  PWayToWindowInfo = ^TWayToWindowInfo;
  PWindowStructure = ^TWindowStructure;
  PCurrPopupInfo = ^TCurrPopupInfo;
  PPCurrPopupInfo = ^PCurrPopupInfo;

  TControlInfo = packed record            // Size = $40
    ControlType: Integer;                 //  8-Scrollbar, 7-ListBox, 6-Button, 4-EditBox, 3-RadioButton(Group), 2-CheckBox, 1-ListItem
    Code: Integer;                        // + 0x04
    WindowInfo: PWindowInfo;              // + 0x08
    Rect: TRect;                          // + 0x0C (Left, Top, Right, Bottom)
    HWindow: HWND;                        // + 0x1C
    Unknown8: Integer;                    // + 0x20
    Unknown9: Integer;                    // + 0x24
    UnknownA: Integer;                    // + 0x28
    UnknownB: Integer;                    // + 0x2C
    UnknownC: Integer;                    // + 0x30
    UnknownD: Integer;                    // + 0x34
    UnknownE: Integer;                    // + 0x38
    Proc_WM_LBUTTONDBLCLK: Pointer;       // + 0x3C
  end;

  TButtonInfo = packed record             // Size = $3C  similar to ListItem/ControlInfo?
    Unknown1: Integer;
    Code: Integer;                        // + 0x04 (0x64 - OK, 0x65 - Cancel)
    WindowInfo: PWindowInfo;              // + 0x08
    Rect: TRect;                          // + 0x0C (Left, Top, Right, Bottom)
    HWindow: HWND;                        // + 0x1C
    Unknown7: Integer;                    // + 0x20
    Unknown8: Integer;                    // + 0x24
    Unknown9: Integer;                    // + 0x28
    Active: Integer;                      // + 0x2C
    Proc: Pointer;                        // + 0x30
    UnknownA: Integer;                    // + 0x34
    UnknownB: Integer;                    // + 0x38
  end;

  TWindowProcs = packed record            // GetWindowLongA(hWnd, 4) + 0x10
    MouseFirst: Pointer;
    LButtonDown: Pointer;                 // + 0x04
    LButtonUpEnd: Pointer;                // + 0x08
    LButtonUp: Pointer;                   // + 0x0C
    RButtonDown: Pointer;                 // + 0x10
    RButtonUpEnd: Pointer;                // + 0x14
    RButtonUp: Pointer;                   // + 0x18
    LButtonDblClk: Pointer;               // + 0x1C
    KeyDown1: Pointer;                    // + 0x20
    KeyUp: Pointer;                       // + 0x24
    KeyDown2: Pointer;                    // + 0x28
    WM_CHAR: Pointer;                     // + 0x2C
    _Unknown1: Pointer;                   // + 0x30
    _Unknown2: Pointer;                   // + 0x34
    _Unknown3: Pointer;                   // + 0x38
    WM_SETFOCUS: Pointer;                 // + 0x3C
    WM_SIZE: Pointer;                     // + 0x40
    WM_MOVE: Pointer;                     // + 0x44
    WM_COMMNOTIFY: Pointer;               // + 0x48
    _Unknown8: Pointer;                   // + 0x4C
  end;

  TWindowInfo = packed record             // GetWindowLongA(hWnd, 4),  GetWindowLongA(hWnd, 8)
    _Unknown1: Integer;                   // = 0x00000C02 ...
    _Unknown2: Integer;                   // + 0x04
    WindowStructure: PWindowStructure;    // + 0x08 (unknown_libname_6)
    _Unknown4: Integer;                   // + 0x0C
    WindowProcs: TWindowProcs;            // + 0x10
    _Unknown5: array[$10 + SizeOf(TWindowProcs)..$8B] of Byte; // + 0x60
    PopupActive: Cardinal;                // + 0x8C
    _Unknown6: array[$90..$BB] of Byte;   // + 0x90
    ButtonInfoOK: PButtonInfo;            // + 0xBC
    ButtonInfoCANCEL: PButtonInfo;        // + 0xC0

  end;

  TScrollBarData = packed record          // GetWindowLongA(hWnd, GetClassLongA(hWnd, GCL_CBWNDEXTRA) - 8)
    _Unknown1: Integer;                   //
    _Unknown2: Integer;                   // + 0x04
    WindowInfo: PWindowInfo;              // + 0x08
    _Unknown3: array[$0C..$2B] of Byte;   // + 0x0C
    ProcRedraw: Pointer;                  // + 0x2C
    _Unknown4: Integer;                   // + 0x30
    PageSize: Integer;                    // + 0x34
    _Unknown5: Integer;                   // + 0x38
    CurrentPosition: Integer;             // + 0x3C
  end;

  TCurrPopupInfo = packed record
    WayToWindowInfo: PWayToWindowInfo;
    Unknown1: array[$04..$27] of Byte;    // + 0x04
    NumberOfLines: Integer;               // + 0x28 [A]
    NumberOfItems: Integer;               // + 0x2C [B]
    NumberOfButtons: Integer;             // + 0x30 [C]
    NumberOfButtons2: Integer;            // + 0x34 [D]
    Unknown3: Integer;                    // + 0x38
    Flags: Integer;                       // + 0x3C : 0x400-ClearPopup, 0x2000-Choose
    Width: Integer;                       // + 0x40
    Height: Integer;                      // + 0x44
    Unknown4: array[$48..$D7] of Byte;    // + 0x48
    SelectedItem: Cardinal;               // + 0xD8 : 0xFFFFFFFF - None

    Left: Integer;                        // + 0xE8
    Top: Integer;                         // + 0xEC

    ProcReturn1: Pointer;                 // + 0x240 (Is DblClk => OK?)

    ListItems: array of TControlInfo;     // + 0x280
  end;

  TWayToWindowInfo = packed record        // GetWindowLongA(hWnd, 0x0C)

    WindowInfo: PWindowInfo;              // + 0x48

  end;

  TWindowStructure = packed record
    Unknown1: Integer;
    HWindow: HWND;                        // + 0x04
  end;

  TUnit = packed record
    word_6560F0: Word;
    word_6560F2: Word;
    word_6560F4: Word;                    //00V0 0000 0000 0000 - V-Veteran
    byte_6560F6: Byte;                    // UnitType
    byte_6560F7: Byte;                    // CivIndex
    byte_6560F8: Byte;
    byte_6560F9: Byte;
    byte_6560FA: Byte;
    byte_6560FB: Byte;
    byte_6560FC: Byte;
    byte_6560FD: Byte;
    byte_6560FE: Byte;
    byte_6560FF: Byte;
    byte_656100: Byte;                    // Home city
    align2: Byte;
    word_656102: Word;
    word_656104: Word;                    // PrevInStack
    word_656106: Word;                    // NextInStack
    word_656108: Word;
    dword_65610A: Cardinal;
    word_65610E: Word;
  end;

  TUnits = array[0..$800] of TUnit;       // 6560F0

const
  AThisCitySprites: Cardinal = $006A9490;
  AThisCurrPopupInfo = $006CEC84;

implementation

end.
//Types
