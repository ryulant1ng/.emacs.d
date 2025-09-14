(setq cjk-font "Noto Sans CJK SC")
(setq emoji-font "Twemoji Mozilla")

;; Font test
;; Chinese: 你好
;; Bopomofo: ㄋㄧˇㄏㄠˇ
;; Kana: こんにちは
;; Hangul: 안녕하세요
;; CJK misc: ？！；
;; Emoji: 😅

(when (member cjk-font (font-family-list))
  (set-fontset-font t 'han cjk-font)
  (set-fontset-font t 'bopomofo cjk-font)
  (set-fontset-font t 'kana cjk-font)
  (set-fontset-font t 'hangul cjk-font)
  (set-fontset-font t 'cjk-misc cjk-font))

(cond
 ((or (eq system-type 'gnu/linux) (eq system-type 'darwin))
  (when (member emoji-font (font-family-list))
    (set-fontset-font t 'emoji emoji-font)))
 ((eq system-type 'windows-nt)
  (set-fontset-font t 'emoji "Segoe UI Emoji")))

(provide 'init-fonts)
