require 'spec_helper'

describe LowerCaseKana do
  it 'has a version number' do
    expect(LowerCaseKana::VERSION).not_to be nil
  end

  describe "#kana_upcase" do
    let(:str) { 'ぁぃぅぇぉゕゖっゃゅょゎァィゥェォッャュョヮｧｨｩｪｫｬｭｮｯ_' }

    subject { str.kana_upcase }

    it { is_expected.to eq 'あいうえおかけつやゆよわアイウエオツヤユヨワｱｲｳｴｵﾔﾕﾖﾂ-' }

    context 'without lower case letters' do
      let(:str) { 'さしすせそサシスセソ' }
      it { is_expected.to eq 'さしすせそサシスセソ' }
    end
  end

  describe "#kana_upcase!" do
    let(:str) { 'ぁぃぅぇぉゕゖっゃゅょゎァィゥェォッャュョヮｧｨｩｪｫｬｭｮｯ_' }

    before { str.kana_upcase! }

    it { expect(str).to eq 'あいうえおかけつやゆよわアイウエオツヤユヨワｱｲｳｴｵﾔﾕﾖﾂ-' }

    context 'without lower case letters' do
      let(:str) { 'さしすせそサシスセソ' }
      it { expect(str).to eq 'さしすせそサシスセソ' }
    end
  end

  describe "#kana_downcase" do
    let(:str) { 'あいうえおかけつやゆよわアイウエオツヤユヨワｱｲｳｴｵﾔﾕﾖﾂ-' }

    subject { str.kana_downcase }

    it { is_expected.to eq 'ぁぃぅぇぉゕゖっゃゅょゎァィゥェォッャュョヮｧｨｩｪｫｬｭｮｯ_' }

    context 'without lower case letters' do
      let(:str) { 'さしすせそサシスセソ' }
      it { is_expected.to eq 'さしすせそサシスセソ' }
    end
  end

  describe "#kana_downcase!" do
    let(:str) { 'あいうえおかけつやゆよわアイウエオツヤユヨワｱｲｳｴｵﾔﾕﾖﾂ-' }

    before { str.kana_downcase! }

    it { expect(str).to eq 'ぁぃぅぇぉゕゖっゃゅょゎァィゥェォッャュョヮｧｨｩｪｫｬｭｮｯ_' }

    context 'without lower case letters' do
      let(:str) { 'さしすせそサシスセソ' }
      it { expect(str).to eq 'さしすせそサシスセソ' }
    end
  end
end
