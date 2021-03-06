-------------------------------------
-- Code generated by DKR QT to Lua 0.1.7 --
-- Source: shop.ui --
-- Date:  15/07/2012 - 19:28:59 --
-------------------------------------

function build_mainGCShopWindow()
	
	local gui = {}
	gui._placeHolders = {}
	
	local screenWidth, screenHeight = guiGetScreenSize()
	local windowWidth, windowHeight = 750, 540
	local left = screenWidth/2 - windowWidth/2
	local top = screenHeight/2 - windowHeight/2
	gui["_root"] = guiCreateWindow(left, top, windowWidth, windowHeight, "Green-Coins Shop", false)
	guiWindowSetSizable(gui["_root"], false)
	
	gui["shopTabs"] = guiCreateTabPanel(10, 70, 730, 460, false, gui["_root"])
	
	gui["tab_home"] = guiCreateTab("Home", gui["shopTabs"])
	
	gui["scrollAreaHome"] = guiCreateScrollPane(60, 30, 621, 360, false, gui["tab_home"])
	
	gui["labelHome"] = guiCreateLabel(11, 11, 581, 251, "Hello and welcome to the Grand Guide to Green-Coins!\n\nWTF are Green-Coins?\n--------------------\nThey are a currency used by the Mr. Green community. We created a global database where players can connect their Green-Coins to one account, and use them on different game servers.\n\nWhat can I do with Green-Coins in MTA?\n-------------------------------\nYou can buy car mods, skins, or other fancy stuff that you can use ingame!\n\nWhat do I need to get Green-Coins?\n----------------------------------\nYou need to register a Green-Coins account, go to the \"Register\" tab for more info.\n\nHow do I get Green-Coins?\n------------------------------------------\n", false, gui["scrollAreaHome"])
	guiLabelSetHorizontalAlign(gui["labelHome"], "left", true)
	guiLabelSetVerticalAlign(gui["labelHome"], "top")
	
	gui["tabDonate"] = guiCreateTabPanel(11, 271, 281, 251, false, gui["scrollAreaHome"])
	
	gui["tab_Donate"] = guiCreateTab("Donate", gui["tabDonate"])
	
	gui["labelDonate"] = guiCreateLabel(10, 10, 251, 210, "You can donate. For each euro donated you get 1000 Green-Coins.\n\nHow do I donate?\n-----------------------\nGo to mrgreengaming.com and click\"Green-Coins\".\n\nIf you log into your account, you see a conveniently placed button that says \"Send donation\".\n\nJust follow the simple instructions on there and you're done!\n", false, gui["tab_Donate"])
	guiSetEnabled(gui["labelDonate"], false)
	guiLabelSetHorizontalAlign(gui["labelDonate"], "left", true)
	guiLabelSetVerticalAlign(gui["labelDonate"], "top")
	guiLabelSetColor(gui["labelDonate"], 120, 120, 120)
	
	gui["tabWin"] = guiCreateTabPanel(301, 271, 291, 251, false, gui["scrollAreaHome"])
	
	gui["tab_Win"] = guiCreateTab("Win", gui["tabWin"])
	
	gui["labelWin"] = guiCreateLabel(10, 10, 261, 210, "The second way to get Green-Coins is racing. \n\nWinning races: you earn GC based on the map length (10 - 40)\n(new maps do not count)\n\nNew toptime: If you're good and manage to get a new top1, top2 or top3 you will earn extra GC!\n\nEven if you didnt win or finish you earn Green-Coins based on your results, so don't give up!\n\n", false, gui["tab_Win"])
	guiSetEnabled(gui["labelWin"], false)
	guiLabelSetHorizontalAlign(gui["labelWin"], "left", true)
	guiLabelSetVerticalAlign(gui["labelWin"], "top")
	guiLabelSetColor(gui["labelWin"], 120, 120, 120)
	
	gui["labelHome_2"] = guiCreateLabel(11, 531, 581, 100, "\n\nMore info in the Network section or use this link:\nhttp://forums.mrgreengaming.com/topic/2183-the-grand-guide-to-green-coins/", false, gui["scrollAreaHome"])
	guiLabelSetHorizontalAlign(gui["labelHome_2"], "left", true)
	guiLabelSetVerticalAlign(gui["labelHome_2"], "top")
	
	gui["tab_login"] = guiCreateTab("Register / Login", gui["shopTabs"])
	
	gui["label_step2"] = guiCreateLabel(180, 40, 351, 131, "1. Register on http://forums.mrgreengaming.com/\n\n\n2. Visit mrgreengaming.com -> click on the 'Green-Coins' button\nThis step is needed to activate your Green-Coins counter\n\n\n3. Fill in your account info from forum.mrgreengaming.com:", false, gui["tab_login"])
	guiLabelSetHorizontalAlign(gui["label_step2"], "left", true)
	guiLabelSetVerticalAlign(gui["label_step2"], "top")
	
	gui["labelLoginInfo"] = guiCreateLabel(200, 280, 361, 101, "", false, gui["tab_login"])
	guiLabelSetHorizontalAlign(gui["labelLoginInfo"], "left", true)
	guiLabelSetVerticalAlign(gui["labelLoginInfo"], "center")
	
	gui["edit_pass_gc"] = guiCreateEdit(340, 250, 113, 20, "", false, gui["tab_login"])
	guiEditSetMaxLength(gui["edit_pass_gc"], 32767)
	guiEditSetMasked(gui["edit_pass_gc"], true)
	
	gui["buttonLink"] = guiCreateButton(340, 190, 91, 23, "Login", false, gui["tab_login"])
	if on_buttonLink_clicked then
		addEventHandler("onClientGUIClick", gui["buttonLink"], on_buttonLink_clicked, false)
	end

	gui["edit_user_gc"] = guiCreateEdit(340, 220, 113, 20, "", false, gui["tab_login"])
	guiEditSetMaxLength(gui["edit_user_gc"], 32767)
	
	gui["label_user_gc"] = guiCreateLabel(200, 220, 121, 16, "Username or email:", false, gui["tab_login"])
	guiLabelSetHorizontalAlign(gui["label_user_gc"], "left", false)
	guiLabelSetVerticalAlign(gui["label_user_gc"], "center")
	
	gui["label_pass_gc"] = guiCreateLabel(200, 250, 121, 16, "Password:", false, gui["tab_login"])
	guiLabelSetHorizontalAlign(gui["label_pass_gc"], "left", false)
	guiLabelSetVerticalAlign(gui["label_pass_gc"], "center")
	
	gui["label_Web"] = guiCreateLabel(170, 190, 151, 16, "mrgreengaming.com", false, gui["tab_login"])
	guiSetFont(gui["label_Web"], "default-bold-small")
	guiLabelSetHorizontalAlign(gui["label_Web"], "left", false)
	guiLabelSetVerticalAlign(gui["label_Web"], "center")
	
	gui["labelGreencoinsShadow1"] = guiCreateLabel(550.5, 24.5, 191, 41, "", false, gui["_root"])
	guiLabelSetHorizontalAlign(gui["labelGreencoinsShadow1"], "right", false)
	guiLabelSetVerticalAlign(gui["labelGreencoinsShadow1"], "center")
	
	gui["labelGreencoins"] = guiCreateLabel(550, 25, 191, 41, "", false, gui["_root"])
	guiLabelSetHorizontalAlign(gui["labelGreencoins"], "right", false)
	guiLabelSetVerticalAlign(gui["labelGreencoins"], "center")
	
	return gui, windowWidth, windowHeight
end

-- End of DKR QT to Lua code --
