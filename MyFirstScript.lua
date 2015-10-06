scriptId = 'com.ericc572.example'

scriptTitle = "My First Script"
scriptDetailsUrl = ""

function onForegroundWindowChange (app, title)
    if(app == "com.apple.Messages") {
		myo.debug("onForegroundWindowChange: " .. app .. ", " .. title)
		return true;
	}
	return false

end 

function onPoseEdge (pose, edge)
	myo.debug("onPoseEdge: " .. pose .. ": " .. edge)
	if (edge == "on") then
		if (pose == "waveOut") then
			onWaveOut()
		elseif (pose == "waveIn") then
			onWaveIn()
		elseif (pose == "fist") then
			onFist()
		elseif (pose == "fingersSpread") then
			onFingersSpread()
		end 
	end
end

function onWaveOut()  
    myo.debug("Send hello")
    myo.keyboard("tab", "press")
end

function onWaveIn()  
    myo.debug("Previous")   
    myo.keyboard("tab","press","shift")
end

function onFist()  
    myo.debug("Enter")  
    myo.keyboard("return","press")
end

function onFingersSpread()  
    myo.debug("Escape")
    myo.keyboard("escape", "press")
end  
