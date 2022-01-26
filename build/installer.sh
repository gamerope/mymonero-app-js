!macro customInstall
  DetailPrint "Register lozzax URI Handler"
  DeleteRegKey HKCR "lozzax"
  WriteRegStr HKCR "lozzax" "" "URL:lozzax"
  WriteRegStr HKCR "lozzax" "URL Protocol" ""
  WriteRegStr HKCR "lozzax\DefaultIcon" "" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  WriteRegStr HKCR "lozzax\shell" "" ""
  WriteRegStr HKCR "lozzax\shell\Open" "" ""
  WriteRegStr HKCR "lozzax\shell\Open\command" "" "$INSTDIR\${APP_EXECUTABLE_FILENAME} %1"
!macroend
