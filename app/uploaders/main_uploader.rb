class MainUploader < BaseVersionUploader
  # 图片version定义在 lib/extras/images/definition
  include Images::Definition

  def store_dir
    "common"
  end

end
