
local config = {
      cmd = {'/home/lirhyme/jdtls/bin/jdtls'},
      root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}

-- This bundles definition is the same as in the previous section (java-debug installation)
local bundles = {
  vim.fn.glob("/home/lirhyme/microsoft/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar", 1),
};
--   -- This is the new part
vim.list_extend(bundles, vim.split(vim.fn.glob("/home/lirhyme/microsoft/vscode-java-test/server/*.jar", 1), "\n"))


config['init_options'] = {
  bundles = bundles;
}

require('jdtls').start_or_attach(config)

