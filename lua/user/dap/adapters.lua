local util = require("user.util")

return {
  php = {
    type = 'executable',
    command = 'nodejs',
    args = { util.get_mason_package_install_path("php-debug-adapter") .. "/extension/out/phpDebug.js" },
  },
}
