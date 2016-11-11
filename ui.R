library(shiny) # 必ず最初にshiny をロードする

# pageWithSidebar というUI 構成のアプリを作成する
shinyUI(pageWithSidebar(
  
  # ヘッダーパネル：アプリケーション名を設定
  headerPanel("New Application"),
  
  # 入力用サイドバーパネル：スライダーで数値を入力し、値を変数obs に格納
  sidebarPanel(
    # 入力 変数名：obs
    sliderInput("obs",
                "Number of observations:",
                min = 1,
                max = 1000,
                value = 500)
  ),
  
  # 出力用メインパネル：入力結果をR で処理した結果を受取り表示
  mainPanel(
    # 出力 変数名：distPlot
    plotOutput("distPlot")
  )
))