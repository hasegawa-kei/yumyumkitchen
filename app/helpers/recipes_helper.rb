module RecipesHelper

  def text_placeholder
    <<-"EOS".strip_heredoc
      ここに手順を書いてね♪ (※100文字まで)
      手順を追加したい時は、下の「追加」ボタンをクリック！
    EOS
  end
end
