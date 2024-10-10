if hookmetamethod then
local bypass;
    bypass = hookmetamethod(game, "__namecall", function(method, ...) 
        if getnamecallmethod() == "FireServer" and method == game.ReplicatedStorage.b then
            game:GetService("ReplicatedStorage").ShowHit:FireServer()
            game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			game:GetService("ReplicatedStorage").RetroAbility:FireServer("Bomb")
			wait(1)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end
        return bypass(method, ...)
    end)
print("success")
else
print("fail") 
end
game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Loading",Text = "test by nexer",Icon = "rbxassetid://7733658504",Duration = 5})
