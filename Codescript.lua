-- Biblioteca de Interface (Usando a Orion Lib, que é simples e bonita)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com')))()

local Window = OrionLib:MakeWindow({Name = "Chazzan Hub | Brookhaven", HidePremium = false, SaveConfig = true, ConfigFolder = "ChazzanConfig"})

-- Mensagens de Carregamento no Console (Igual à sua imagem)
print("[Chazzan]: Carregando scripts...")
task.wait(0.5)
print("[Chazzan]: Auto-Farm carregado!")
print("[Chazzan]: Modos de Personagem prontos!")

-- ABA: PERSONAGEM
local Tab = Window:MakeTab({
	Name = "Personagem",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddSlider({
	Name = "Velocidade (WalkSpeed)",
	Min = 16,
	Max = 200,
	Default = 16,
	Color = Color3.fromRGB(0, 162, 255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

Tab:AddSlider({
	Name = "Pulo (JumpPower)",
	Min = 50,
	Max = 300,
	Default = 50,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	ValueName = "Power",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

-- ABA: FUNÇÕES DO JOGO
local Tab2 = Window:MakeTab({
	Name = "Mundo/Jogo",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab2:AddButton({
	Name = "Teleportar para o Banco",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-437, 23, -196) -- Coordenadas aproximadas do banco
  	end    
})

Tab2:AddToggle({
	Name = "Pulo Infinito",
	Default = false,
	Callback = function(Value)
		_G.InfiniteJump = Value
		game:GetService("UserInputService").JumpRequest:Connect(function()
			if _G.InfiniteJump then
				game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
			end
		end)
	end
})

OrionLib:Init() -- Finaliza a criação da janela
