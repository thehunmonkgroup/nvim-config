return function(default)
  default.php = {
    {
      type = 'php',
      request = 'launch',
      name = 'Listen for xdebug',
      port = '9000',
      log = true,
      serverSourceRoot = "/var/local/git/my.al-dev.com",
      localSourceRoot = "/home/hunmonk/git/apartmentlines/apartmentlines.com",
    }
  }
  return default
end
