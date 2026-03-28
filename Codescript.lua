-- Limpa o console para parecer profissional
print("----------------------------")
print("      CHAZZAN HUB          ")
print("----------------------------")

-- Simulação de carregamento (O que aparece no console)
print("Loading new script..")
task.wait(0.5)
print("[Flux]: Starting..")
task.wait(0.8)
print("[Settings]: Loaded")
task.wait(0.3)
print("[Settings]: Loaded") -- Segunda verificação (estilo o da imagem)
task.wait(0.5)
print("[Auto-Farm]: Loaded")
task.wait(0.4)
print("[Auto-Sell]: Loaded")
task.wait(0.6)

print("----------------------------")
print("Script Fully Loaded!")
print("----------------------------")

-- AQUI ABAIXO VOCÊ COLOCA O SEU SCRIPT REAL (A INTERFACE, O AUTO-FARM, ETC.)
-- Exemplo de uma notificação final:
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Chazzan Hub",
    Text = "Executado com sucesso!",
    Duration = 5
})

-- Seu código principal viria aqui:
-- print("Abrindo Menu...") 

