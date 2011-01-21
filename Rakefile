task :default => :tarball

desc 'Create a release tarball'
task :tarball do
  File.open 'xterm-color-table.vim.tar.gz', 'w' do |f|
    Dir.chdir '..' do
      f.write %x(tar zcv xterm-color-table.vim/README.markdown xterm-color-table.vim/plugin)
    end
  end
end
