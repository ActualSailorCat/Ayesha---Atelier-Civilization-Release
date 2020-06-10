--=============================================
-- Resource Tracker by SeelingCat & SailorCat
--=============================================
function Sailor_Ayesha_Antiquity_Net(iX, iY, resourceType)
	aYeshaplotRes = GameInfo.Resources[resourceType].ResourceType
	if aYeshaplotRes == 'RESOURCE_ANTIQUITY_SITE' then
		Game:SetProperty("SailorAyeshaAntiquity_" .. iX .. "_" .. iY, 1)
	end
end
Events.ResourceAddedToMap.Add(Sailor_Ayesha_Antiquity_Net)