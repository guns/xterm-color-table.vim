# -*- encoding: utf-8 -*-

require 'shellwords'

task :default => :tarball

desc 'Create a release tarball'
task :tarball do
  File.open 'xterm-color-table.vim.tar.gz', 'w' do |f|
    dir = File.basename Dir.pwd
    Dir.chdir '..' do
      files = %w[README.markdown plugin doc].map { |f| File.join dir, f }
      f.write %x(tar zcv #{files.shelljoin})
    end
  end
end
