class String
  def kana_upcase
    tr('ぁぃぅぇぉゕゖっゃゅょゎァィゥェォッャュョヮｧｨｩｪｫｬｭｮｯ_', 'あいうえおかけつやゆよわアイウエオツヤユヨワｱｲｳｴｵﾔﾕﾖﾂ-')
  end

  def kana_upcase!
    self.replace(kana_upcase)
  end

  def kana_downcase
    tr('あいうえおかけつやゆよわアイウエオツヤユヨワｱｲｳｴｵﾔﾕﾖﾂ-', 'ぁぃぅぇぉゕゖっゃゅょゎァィゥェォッャュョヮｧｨｩｪｫｬｭｮｯ_')
  end

  def kana_downcase!
    self.replace(kana_downcase)
  end
end
