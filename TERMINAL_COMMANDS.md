# OTClient Terminal Commands Reference

## Terminal Special Syntax
```lua
-- Print value using = prefix
=g_game.isOnline()        -- Prints true/false
=g_game.getLocalPlayer()  -- Prints player object info

-- Execute multiple commands on one line
g_game.setMaxPreWalkingSteps(2); g_window.setFullscreen(true)
```

## Built-in Terminal Commands
```lua
draw_debug_boxes()   -- Toggle UI debug boxes
hide_map()          -- Hide game map
show_map()          -- Show game map
ping()              -- Test server connection ping
clear()             -- Clear terminal output
ls(path)            -- List files in directory
about_version()     -- Show client version info
about_graphics()    -- Show graphics info
about_modules()     -- List loaded modules
```

## Global Objects Reference

### Minimap Control (g_minimap)
```lua
-- File Operations
g_minimap.loadOtmm(fileName)          -- Load OTMM minimap file
g_minimap.saveOtmm(fileName)          -- Save current minimap to OTMM file
g_minimap.saveOtmmWithFilter(fileName) -- Save minimap with color filter applied permanently
g_minimap.loadImage(fileName, pos, colorFactor) -- Load image as minimap
g_minimap.saveImage(fileName, rect)   -- Save minimap area as image
g_minimap.clean()                     -- Clear all minimap data

-- Color Filtering (requires C++ implementation)
g_minimap.setColorFilter(enabled)     -- Enable/disable color filtering
g_minimap.setColorMapping(from, to)   -- Map one 8-bit color to another
g_minimap.resetColorMappings()        -- Clear all color mappings
g_minimap.isColorFilterEnabled()      -- Check if filter is enabled
g_minimap.getFilteredColor(color)     -- Get filtered version of color

-- Enhanced Terminal Commands
undiscovered_mode(enabled)            -- Apply undiscovered map theme
save_filtered_minimap(filename)       -- Save with filter applied permanently
create_undiscovered_minimap(orig, new) -- Create filtered copy of existing map
apply_color_palette(mappings)         -- Apply custom color palette
minimap_info()                        -- Show minimap and filter status

-- Example usage
g_minimap.loadOtmm("minimap.otmm")
undiscovered_mode(true)               -- Apply muted colors
save_filtered_minimap("undiscovered.otmm") -- Save permanently
g_minimap.loadOtmm("undiscovered.otmm") -- Load filtered version
g_minimap.setColorFilter(false)       -- No runtime filtering needed
```

### Game Control (g_game)
```lua
-- Connection
g_game.isOnline()                    -- Check if connected
g_game.getFeature(featureId)         -- Check if feature is supported
g_game.getClientVersion()            -- Get client version
g_game.getProtocolVersion()          -- Get protocol version
g_game.getWorldName()                -- Get current world name

-- Player
g_game.getLocalPlayer()              -- Get local player object
g_game.setMaxPreWalkingSteps(steps)  -- Set walking steps (1-2)
g_game.walk(direction)               -- Walk in direction
g_game.turn(direction)               -- Turn to direction

-- Game Settings
g_game.setCustomOs(os)               -- Set custom OS (-1 to disable)
g_game.setPingDelay(delay)           -- Set ping delay
```

### UI Control (g_ui)
```lua
-- Widget Management
g_ui.getRootWidget()                           -- Get root widget
g_ui.createWidget(type)                        -- Create new widget
g_ui.loadUI(file)                             -- Load UI from file
g_ui.importStyle(file)                        -- Import style file

-- Widget Search
g_ui.getRootWidget():recursiveGetChildById(id) -- Find widget by ID
g_ui.getRootWidget():recursiveGetChildren()    -- Get all widgets

-- Debug
g_ui.setDebugBoxesDrawing(enabled)            -- Toggle debug boxes
g_ui.isDrawingDebugBoxes()                    -- Check if debug boxes are shown
```

### Window Control (g_window)
```lua
g_window.setFullscreen(enabled)       -- Toggle fullscreen
g_window.setVerticalSync(enabled)     -- Toggle vertical sync
g_window.setMinimumSize(width, height)-- Set minimum window size
g_window.getDisplaySize()             -- Get display resolution
g_window.getSize()                    -- Get window size
g_window.maximize()                   -- Maximize window
g_window.minimize()                   -- Minimize window
```

### Audio Control (g_sounds)
```lua
g_sounds.setAudioEnabled(enabled)     -- Enable/disable audio
g_sounds.isAudioEnabled()             -- Check if audio is enabled
g_sounds.getChannel(channelId)        -- Get audio channel
g_sounds.stopAll()                    -- Stop all sounds

-- Channel Control
local channel = g_sounds.getChannel(channelId)
channel:setGain(volume)               -- Set volume (0-1)
channel:setEnabled(enabled)           -- Enable/disable channel
```

### Options Module
```lua
-- Get/Set Options
modules.client_options.getOption(name)         -- Get option value
modules.client_options.setOption(name, value)  -- Set option value

-- Common Options
modules.client_options.setOption('enableLights', true)
modules.client_options.setOption('displayNames', true)
modules.client_options.setOption('displayHealth', true)
modules.client_options.setOption('fullscreen', true)
modules.client_options.setOption('vsync', true)
```

### Available Options

#### Graphics Options
```lua
vsync = true/false
showFps = true/false
showPing = true/false
fullscreen = true/false
enableLights = true/false
floorFading = number (default: 500)
crosshair = number (1-3)
ambientLight = number (0-100)
optimizationLevel = number (1-3)
antialiasing = true/false
```

#### Interface Options
```lua
classicView = true/false
cacheMap = true/false
classicControl = true/false
smartWalk = true/false
dash = true/false
autoChaseOverride = true/false
displayNames = true/false
displayHealth = true/false
displayMana = true/false
displayHealthOnTop = true/false
showHealthManaCircle = true/false
hidePlayerBars = true/false
topHealtManaBar = true/false
displayText = true/false
dontStretchShrink = true/false
```

#### Audio Options
```lua
enableAudio = true/false
enableMusicSound = true/false
musicSoundVolume = number (0-100)
botSoundVolume = number (0-100)
```

#### Console Options
```lua
showStatusMessagesInConsole = true/false
showEventMessagesInConsole = true/false
showInfoMessagesInConsole = true/false
showTimestampsInConsole = true/false
showLevelsInConsole = true/false
showPrivateMessagesInConsole = true/false
showPrivateMessagesOnScreen = true/false
```

#### Layout Options
```lua
rightPanels = number
leftPanels = number
containerPanel = number
```

#### Action Bar Options
```lua
actionbar1 = true/false
actionbar2 = true/false
actionbar3 = true/false
actionbar4 = true/false
actionbar5 = true/false
actionbar6 = true/false
actionbar7 = true/false
actionbar8 = true/false
actionbar9 = true/false
actionbarLock = true/false
```

#### Walking Options
```lua
wsadWalking = true/false
walkFirstStepDelay = number (default: 200)
walkTurnDelay = number (default: 100)
walkStairsDelay = number (default: 50)
walkTeleportDelay = number (default: 200)
walkCtrlTurnDelay = number (default: 150)
```

### Widget Manipulation Examples
```lua
-- Find and modify a widget
local widget = g_ui.getRootWidget():recursiveGetChildById('widgetId')
if widget then
    widget:setVisible(true)           -- Show widget
    widget:setEnabled(true)           -- Enable widget
    widget:setText("New Text")        -- Set text
    widget:setChecked(true)          -- For checkboxes
    widget:setOn(true)               -- Toggle state
end

-- Create new widget
local newWidget = g_ui.createWidget('UIWidget')
newWidget:setId('myWidget')
newWidget:addChild(anotherWidget)
```

### File System Operations
```lua
g_resources.listDirectoryFiles(path)  -- List files in directory
g_resources.fileExists(path)          -- Check if file exists
g_resources.readFileContents(path)    -- Read file contents
g_resources.writeFileContents(path, content) -- Write to file
```

### Debugging Tools
```lua
-- Debug Information
=g_app.getVersion()                   -- Print client version
=g_graphics.getRenderer()             -- Print graphics renderer
=g_window.getPlatformType()           -- Print platform type

-- Performance
=g_app.getFps()                       -- Print current FPS
=g_app.getMaxFps()                    -- Print max FPS setting
```

## Minimap Color System Analysis

The OTClient minimap uses the following color system:
- Colors are stored as 8-bit values (0-255) in OTMM files
- Color 255 represents transparent/empty tiles
- Colors are converted using `Color::from8bit()` and `Color::to8bit()` functions
- The minimap displays colors using a 6x6x6 color cube (216 colors total)

### Color Conversion Functions
```lua
-- In C++, colors are converted like this:
-- Color::to8bit(): RGB -> 8-bit minimap color
-- Color::from8bit(): 8-bit -> RGB color

-- 8-bit color formula:
-- c = (r/51)*36 + (g/51)*6 + (b/51)
-- Where r,g,b are 0-255 values divided into 6 levels (0,51,102,153,204,255)
```

## Tips
1. Use Tab key for command auto-completion
2. Use Up/Down arrows to navigate command history
3. Use `=` prefix to print values directly
4. Use `draw_debug_boxes()` to identify widget IDs
5. Check the console output for errors when executing commands

## Common Tasks Examples
```lua
-- Toggle fullscreen
modules.client_options.setOption('fullscreen', true)

-- Change game settings
modules.client_options.setOption('classicView', true)
modules.client_options.setOption('enableLights', true)
modules.client_options.setOption('ambientLight', 100)

-- Modify interface
modules.client_options.setOption('displayNames', true)
modules.client_options.setOption('displayHealth', true)
modules.client_options.setOption('showHealthManaCircle', true)

-- Audio control
modules.client_options.setOption('enableAudio', true)
modules.client_options.setOption('musicSoundVolume', 50)

-- Minimap operations
g_minimap.loadOtmm("minimap.otmm")
g_minimap.saveOtmm("backup.otmm")
``` 