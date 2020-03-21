# frozen_string_literal: true

module RecipesHelper
  def text_placeholder
    <<-TEXT.strip_heredoc
      ここに手順を書いてね♪ (200文字まで)
      手順を追加したい時は、下の「追加」ボタンをクリック！
    TEXT
  end
end
