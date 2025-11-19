# GlazeWM Configuration

## General Configuration
- **Startup Commands:**
  - `shell-exec zebar`
  - `shell-exec glazewm-extra`

- **Shutdown Commands:**
  - `shell-exec taskkill /IM zebar.exe /F`
  - `shell-exec taskkill glazewm-extra.exe`

- **Focus Follows Cursor:** `false`
- **Toggle Workspace on Refocus:** `false`

### Cursor Jump
- **Enabled:** `false`
- **Trigger:** `window_focus`

## Gaps
- **Scale with DPI:** `false`
- **Inner Gap:** `4px`
- **Outer Gap:**
  - Top: `24px`
  - Right: `0px`
  - Bottom: `0px`
  - Left: `0px`

## Window Effects
- **Focused Window Border:**
  - Enabled: `true`
  - Color: `#ab9760`

- **Corner Style:**
  - Enabled: `false`
  - Style: `small_rounded`

- **Other Windows Border:**
  - Enabled: `true`
  - Color: `#292929`

- **Hide Title Bar:** `true`
- **Other Windows Corner Style:**
  - Enabled: `false`
  - Style: `rounded`

## Window Behavior
- **Initial State:** `tiling`
- **State Defaults:**
  - Floating:
    - Centered: `false`
    - Shown on Top: `false`
  - Fullscreen:
    - Maximized: `true`
    - Shown on Top: `true`

## Workspaces
- **Workspace 1:** 🏠 Home
- **Workspace 2:** 📟</> Term
- **Workspace 3:** 🌐 Browsers
- **Workspace 4:** 📂 Exp
- **Workspace 5:** 🎧 Music
- **Workspace 6:** 💻 Code
- **Workspace 7:** 🌆 Chill
- **Workspace 8:** 🌃 Vibes

## Window Rules
- **Ignore Windows:**
  - Zebar, Picture-in-Picture, PowerToys, Lively, etc.

- **Move Windows to Workspaces:**
  - WhatsApp: Workspace 1
  - Terminals: Workspace 2
  - Zen: Workspace 3
  - Explorer, PictureflectPhotoViewer: Workspace 4
  - Spotify, Rack: Workspace 5
  - Code, Obsidian, GitHubDesktop, UniGetUI: Workspace 6
  - Wezterm-gui: Workspace 7

## Binding Modes
- **Resize Mode:**
  - `h`, `left`: Resize width -2%
  - `l`, `right`: Resize width +2%
  - `k`, `up`: Resize height +2%
  - `j`, `down`: Resize height -2%
  - `escape`, `enter`: Exit resize mode

- **Pause Mode:**
  - `alt+shift+p`: Exit pause mode

## Keybindings
- **Focus in a given direction:**
  - `alt+left`: Focus left
  - `alt+right`: Focus right
  - `alt+up`: Focus up
  - `alt+down`: Focus down

- **Move focused window in a given direction:**
  - `alt+shift+left`: Move left
  - `alt+shift+right`: Move right
  - `alt+shift+up`: Move up
  - `alt+shift+down`: Move down

- **Resize focused window:**
  - `alt+shift+c`: Enable resize mode (resize via arrow keys or HJKL)

- **Binding modes:**
  - `alt+shift+p`: Enable pause mode (disables all keybindings except this one)

- **Window state changes:**
  - `alt+shift+f`: Toggle tiling
  - `alt+x`: Toggle fullscreen
  - `alt+z`: Minimize window
  - `alt+q`: Close window

- **Window manager commands:**
  - `alt+shift+e`: Exit GlazeWM
  - `alt+shift+r`: Reload configuration
  - `alt+shift+b`: Redraw all windows

- **Launch terminal:**
  - `alt+enter`: Launch CMD terminal

- **Workspace focus:**
  - `alt+w`: Focus next workspace
  - `alt+shift+w`: Focus previous workspace
  - `alt+e`: Focus recent workspace
  - `alt+1`: Focus workspace 1
  - `alt+2`: Focus workspace 2
  - `alt+3`: Focus workspace 3
  - `alt+4`: Focus workspace 4
  - `alt+5`: Focus workspace 5
  - `alt+6`: Focus workspace 6
  - `alt+7`: Focus workspace 7
  - `alt+8`: Focus workspace 8
  - `# alt+9`: (Commented out) Focus workspace 9

- **Move focused window to a workspace:**
  - `alt+shift+1`: Move and focus to workspace 1
  - `alt+shift+2`: Move and focus to workspace 2
  - `alt+shift+3`: Move and focus to workspace 3
  - `alt+shift+4`: Move and focus to workspace 4
  - `alt+shift+5`: Move and focus to workspace 5
  - `alt+shift+6`: Move and focus to workspace 6
  - `alt+shift+7`: Move and focus to workspace 7
  - `alt+shift+8`: Move and focus to workspace 8
  - `# alt+shift+9`: (Commented out) Move and focus to workspace 9

## Commented Keybindings
- **Resize focused window:**
  - `# alt+u`: Resize width -2%
  - `# alt+p`: Resize width +2%
  - `# alt+o`: Resize height +2%
  - `# alt+i`: Resize height -2%

- **Change tiling direction:**
  - `# alt+v`: Toggle tiling direction

- **Cycle focus:**
  - `# alt+shift+x`: Cycle focus

- **Toggle floating:**
  - `# alt+shift+space`: Toggle floating (centered)

- **Move workspace to monitor:**
  - `# alt+shift+a`: Move workspace left
  - `# alt+shift+f`: Move workspace right
  - `# alt+shift+d`: Move workspace up
  - `# alt+shift+s`: Move workspace down

- **Focus workspace:**
  - `# alt+9`: Focus workspace 9

- **Move focused window to workspace:**
  - `# alt+shift+9`: Move and focus to workspace 9
