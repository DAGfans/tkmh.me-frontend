##############
### config ###
##############

module.exports = (devDir)->
  config =
    # devDir
    devDir: devDir

    # ソースディレクトリ
    srcDir: "#{devDir}/src"

    # 納品ディレクトリ
    publishDir: "#{devDir}/../htdocs"

    # ローカルサーバのデフォルトパス (htdocsからの絶対パス)
    serverDefaultPath: '/'

    # タスクから除外するためのプレフィックス
    exclusionPrefix: '_'

    # ライブラリを格納するディレクトリ名
    libraryDirName: 'lib'

    # gulpPlugins.autoprefixerのオプション
    autoprefixerOpt: [ 'last 2 versions', 'ie 8', 'ie 9', 'ie 10', 'ie 11', 'Android 4', 'iOS 8' ]

    # assetsディレクトリへドキュメントルートからの相対パス
    assetsDir: 'assets'

    # publishDir内のclean対象のディレクトリ (除外したいパスがある場合にnode-globのシンタックスで指定)
    clearDir: [ "/**/*" ]

    # pugで読み込むjsonファイル
    pugData: "#{devDir}/pugData.json"

    # 画像ディレクトリの名前
    imgDirName: "{img,image,images}"

    # ファイル圧縮
    compress:
      # CSSを圧縮するかどうか
      css: false

      # JSを圧縮するかどうか
      js: false

    # sourcemapを作るかどうか
    sourcemap: true


  # 各種パス
  config.filePath =
    html    : "#{config.srcDir}/**/*.html"
    pug     : "#{config.srcDir}/**/*.{pug,jade}"
    jade    : "#{config.srcDir}/**/*.{pug,jade}"
    css     : "#{config.srcDir}/**/*.css"
    sass    : "#{config.srcDir}/**/*.{sass,scss}"
    js      : "#{config.srcDir}/**/*.js"
    json    : "#{config.srcDir}/**/*.json"
    coffee  : "#{config.srcDir}/**/*.coffee"
    cson    : "#{config.srcDir}/**/*.cson"
    img     : [ "#{config.srcDir}/**/#{config.imgDirName}/**" ]
    others  : [
      "#{config.srcDir}/**/*"
      "#{config.srcDir}/**/.htaccess"
      "!#{config.srcDir}/**/*.{html,pug,jade,css,sass,scss,js,json,coffee,cson,md}"
      "!#{config.srcDir}/**/#{config.imgDirName}/**"
    ]
    pugInclude: [
      "#{config.srcDir}/**/#{config.exclusionPrefix}*/**/*.pug"
      "#{config.srcDir}/**/#{config.exclusionPrefix}*.pug"
      "#{config.srcDir}/**/#{config.exclusionPrefix}*/**/*.jade"
      "#{config.srcDir}/**/#{config.exclusionPrefix}*.jade"
    ]
    jadeInclude: [
      "#{config.srcDir}/**/#{config.exclusionPrefix}*/**/*.pug"
      "#{config.srcDir}/**/#{config.exclusionPrefix}*.pug"
      "#{config.srcDir}/**/#{config.exclusionPrefix}*/**/*.jade"
      "#{config.srcDir}/**/#{config.exclusionPrefix}*.jade"
    ]
    sassInclude: [
      "#{config.srcDir}/**/#{config.exclusionPrefix}*/**/*.{sass,scss}"
      "#{config.srcDir}/**/#{config.exclusionPrefix}*.{sass,scss}"
    ]
    coffeeInclude: [
      "#{config.srcDir}/**/#{config.exclusionPrefix}*/**/*.coffee"
      "#{config.srcDir}/**/#{config.exclusionPrefix}*.coffee"
    ]

  return config
