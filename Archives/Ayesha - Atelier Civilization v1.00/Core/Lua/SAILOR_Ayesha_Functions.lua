--=============================================
-- Ayesha Artifacts by SailorCat
--=============================================
local ayeshaSites = GameInfo.Resources["RESOURCE_ANTIQUITY_SITE"].Index

function Sailor_Ayesha_Artifacting (iX, iY, resourceType)
	local bAYESHALeader = false
	local pWned = -1
	local pPlot = Map.GetPlot(iX,iY)
	local unitList:table = Units.GetUnitsInPlotLayerID(iX, iY, MapLayers.ANY)
	if unitList ~= nil then
		for i, pUnit in ipairs(unitList) do
			local pUnitType = GameInfo.Units[pUnit:GetType()].UnitType
			if pUnitType == 'UNIT_ARCHAEOLOGIST' then
				local sLeader = UnitManager.GetOwnerName(pUnit)
				if sLeader == 'LOC_LEADER_SAILOR_AYESHA_NAME' then
					bAYESHALeader = true
					pWned = pUnit:GetOwner()
				end
			end
		end
	end
	if bAYESHALeader == true then
		local pPlayer = Players[pWned]
		iValidResCheck = Game:GetProperty("SailorAyeshaAntiquity_" .. pPlot:GetX() .. "_" .. pPlot:GetY())
		if iValidResCheck == 1 then
			Game:SetProperty("SailorAyeshaAntiquity_" .. pPlot:GetX() .. "_" .. pPlot:GetY(), 0)
			local iTurn = Game.GetCurrentGameTurn()
			iHarvestedCheck = Game:GetProperty("SailorAyeshaExtracted_" .. pPlot:GetX() .. "_" .. pPlot:GetY())
			if iHarvestedCheck ~= iTurn then
				Game:SetProperty("SailorAyeshaExtracted_" .. pPlot:GetX() .. "_" .. pPlot:GetY(), iTurn)
				local playerUnits = pPlayer:GetUnits()
				for k, sUnit in playerUnits:Members() do
					sUnit:GetExperience():ChangeExperience(9)
				end
				local iAyeshaFort = GameInfo.Improvements["IMPROVEMENT_FORT"].Index
				ImprovementBuilder.SetImprovementType(pPlot, iAyeshaFort, 1)
			end		
		end
	end
end
--=============================================
-- Leader Present Detection by SeelingCat
--=============================================
local bAYESHAPresent = false

for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
    if bAYESHAPresent == false then
        local sLeaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        if sLeaderType == 'LEADER_SAILOR_AYESHA' then
			bAYESHAPresent = true
        end
    end
end
if bAYESHAPresent == true then
    print ("///// Ayesha detected. Loading lua functions...")
	Events.ResourceRemovedFromMap.Add(Sailor_Ayesha_Artifacting)
else
    print ("///// Ayesha not detected.")
end