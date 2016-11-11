library(shiny) # 最初にshiny をロード

# shinyServer 関数で、input, output をui.R とやりとりする
shinyServer(function(input, output) {
  
  # 処理した結果のplot イメージをrenderPlot 関数で出力変数distPlot に格納する
  output$distPlot <- renderPlot({
    
    # 受け取った入力変数obs を引数にrnorm で正規分布を生成する
    dist <- rnorm(input$obs)
    # ここでヒストグラムを描画する
    hist(dist)
    
  })
})