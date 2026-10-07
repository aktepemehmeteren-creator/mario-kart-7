# Mario Kart PSP - Uploaded Assets Edition

Bu proje, yüklenen PNG/WAV varlıklarını önceki Mario Kart PSP koduna bağlar.

## Runtime'da kullanılan varlıklar
- Gerçek karakter yüz texture'ları ve 3 karelik Mario/Luigi ifade animasyonu.
- Yüklenen motor örnekleri: engine0/3/6/9 (hız bandına göre loop).
- Menü, item, shell, boost, çarpışma, finish ve yarış başlangıcı WAV efektleri.
- Mario/Luigi/Yoshi kısa sesleri.
- Menü, yarış ve bitiş için WAV müzikleri.

## Yüklenen arşiv
Yüklenen 78 PNG ve 129 WAV dosyasının tamamı ayrıca `assets/source_textures/` ve `assets/source_audio/` altında saklanır. Runtime için PSP'ye daha uygun 44.1 kHz mono 16-bit kopyalar `assets/audio/` altında bulunur.

## PSP klasörü
```text
PSP/GAME/MARIOKART/EBOOT.PBP
PSP/GAME/MARIOKART/assets/
```

Kodun asset kökü: `ms0:/PSP/GAME/MARIOKART/`
