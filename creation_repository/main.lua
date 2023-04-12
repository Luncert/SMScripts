if STARTED ~= nil then
	if input() then
		local ran, err = pcall(onTick)
		if not ran then
			onError()
			error(err)
		end
	else
		onStop()
	end
else
	function onStart()
        setClicksAllowed(true)
        createFolder('creations')
        getFileList('creations')
	end

	function onTick()
	end

	function onStop()
	end

	function onError()
		onStop()
	end

	onStart()
	STARTED = true
end