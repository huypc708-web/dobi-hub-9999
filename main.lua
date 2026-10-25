loadstring(game:HttpGet("https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau"))()
task.spawn(function()
    local CoreGui = game:GetService("CoreGui")
    local PlayerGui = game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui")
    
    local function Rename()
        for _, container in pairs({CoreGui, PlayerGui}) do
            if container then
                for _, obj in pairs(container:GetDescendants()) do
                    if obj:IsA("TextLabel") or obj:IsA("TextButton") then
                        if obj.Text and (obj.Text:find("Redz") or obj.Text:find("redz") or obj.Text:find("RDZ")) then
                            obj.Text = obj.Text:gsub("Redz", "Dobi"):gsub("redz", "dobi"):gsub("RDZ", "DOBI")
                        end
                    end
                end
            end
        end
    end
    
    for i = 1, 20 do
        Rename()
        task.wait(1)
    end
    print("[Dobi Hub] Đã đổi tên thành công.")
end)
