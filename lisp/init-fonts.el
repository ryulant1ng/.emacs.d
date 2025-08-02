(setq cjk-font "Noto Sans CJK SC") ; 苟利国家生死以，岂因祸福避趋之
(setq emoji-font "Twemoji Mozilla") ; 🇹🇼

(when (member cjk-font (font-family-list))
  (set-fontset-font t 'han cjk-font)
  (set-fontset-font t 'bopomofo cjk-font)
  (set-fontset-font t 'kana cjk-font)
  (set-fontset-font t 'hangul cjk-font))

(when (member emoji-font (font-family-list))
  (set-fontset-font t 'emoji emoji-font))

(provide 'init-fonts)
