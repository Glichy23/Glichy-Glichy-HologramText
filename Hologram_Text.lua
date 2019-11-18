--[[
Credits - Meh
טקסט בצורה הולוגרמית - נוצר על ידי - Glichy

הטקסט בצורה הולוגרמית זה סקריפט שמאפשר לכם לרשום טקסט בצורה הולוגרמית
ולשים אותו איפה שתרצו במפה. לדוגמא - במקום הספאון.

כל מי שתצטרכו לעשות הוא - 
לשנות את נקודות הקורדינצייה (בנקודות הטקסט יופיע) 
ולאחר מכן לשנות את הטקסט שאתם רוצים שיהיה כתוב.
במידה ותרצו למחוק שורה - 
מחיקת שורה - למחוק את אחד השורות
יש למחוק את -             Draw3DText( -267.82, -958.78, 31.22  -1.800, "Your Text", 4, 0.1, 0.1)	
במידה ותרצו להוסיף עוד מקום עם השורות הנל, יש הוסיף מתחת - 
				--HologramText - 3
		if GetDistanceBetweenCoords( -267.82, -958.78, 31.22, GetEntityCoords(GetPlayerPed(-1))) < 15.0 then
			Draw3DText( -267.82, -958.78, 31.22  -1.400, "Your Text", 4, 0.1, 0.1) 
			Draw3DText( -267.82, -958.78, 31.22  -1.600, "Your Text", 4, 0.1, 0.1)
            Draw3DText( -267.82, -958.78, 31.22  -1.800, "Your Text", 4, 0.1, 0.1)	
		end	

]]--

Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
				-- HologramText - 1
		if GetDistanceBetweenCoords( -1034.66, -2732.41, 20.17, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -1034.66, -2732.41, 20.17  -1.400, "DeluxeCity", 4, 0.1, 0.1)
			Draw3DText( -1034.66, -2732.41, 20.17  -1.600, "Discord:Discord.gg/pdDCAa", 4, 0.1, 0.1)
			Draw3DText( -1034.66, -2732.41, 20.17  -1.800, "Have A Great Day", 4, 0.1, 0.1)		
		end		
				--HologramText - 2
		if GetDistanceBetweenCoords( -267.82, -958.78, 31.22, GetEntityCoords(GetPlayerPed(-1))) < 15.0 then
			Draw3DText( -267.82, -958.78, 31.22  -1.400, "DeluxeCity", 4, 0.1, 0.1) 
			Draw3DText( -267.82, -958.78, 31.22  -1.600, "Discord:Discord.gg/pdDCAa", 4, 0.1, 0.1)
            Draw3DText( -267.82, -958.78, 31.22  -1.800, "Have A Great Day", 4, 0.1, 0.1)	
		end	
	end
end

function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(4)            -- בחירת הפונט, מ 1-10
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)		-- במידה ותצרו לשנות את הצבע 
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
