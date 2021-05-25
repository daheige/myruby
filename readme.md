# ruby notes

    参考 https://www.runoob.com/ruby/ruby-variable.html


# gem中文镜像

    输入下列命令
    # 设置gem source
    gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/

    # 查看gem source
    gem sources -l

    # 设置bundle
    bundle config mirror.https://rubygems.org https://gems.ruby-china.com

# ruby rufo代码格式化

    % gem install rufo
    配置vscode settings.json
    "ruby.format": "rufo",
    "rufo.useBundler": false,
    "rufo.exe": "rufo"
