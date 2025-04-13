-- Resource rights reserved for 3mi
fx_version 'cerulean'
game 'gta5'
author '3mi'
description 'QBCore Black Market Bot Shop by 3mi (v2 - Refactored)'
version '2.0.0'
lua54 'yes'

-- Core Dependencies
dependencies {
    'qb-core',
    'qb-target'
}

-- Shared Configuration Files
shared_script 'config.lua' -- Assuming this is the correct file name (config.txt was uploaded)

-- Client-Side Files
client_scripts {
    -- '@qb-core/client/functions.lua', -- Uncomment if you use functions directly from it and need them here
    'client/main_cl.lua' -- Assuming this is the correct file name (main_cl.txt was uploaded)
}

-- Server-Side Files
server_scripts {
    -- '@qb-core/server/functions.lua', -- Uncomment if you use functions directly from it and need them here
    'server/main_sv.lua' -- Assuming this is the correct file name (main_sv.txt was uploaded)
}

-- User Interface
ui_page 'html/index.html' -- Assuming this is the correct file name (index.txt was uploaded)

-- UI Files
files {
    'html/index.html', -- Assuming this is the correct file name (index.txt was uploaded)
    'html/style.css', -- Assuming this is the correct file name (style.txt was uploaded)
    'html/script.js', -- Assuming this is the correct file name (script.txt was uploaded)
    'html/images/*.png',
    'html/images/*.jpg' -- You can add other image types
}

-- Specify QBCore version (optional)
-- qbcore_version '1.2.0'