;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)
;; 开启全局Company补全
(global-company-mode 1)
;; 关闭备份文件(~后缀的文件)
(setq make-backup-files nil)
;; 关闭文件滑动控件
(scroll-bar-mode -1)
;; 显示行号
(global-linum-mode 1)
;; 更改光标的样式
(setq cursor-type 'bar)
;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)
;; 更改显示字体大小 16pt
(set-face-attribute 'default nil :height 160)
(set-face-attribute 'default nil :font (font-spec :family "Sarasa Mono SC" :size 16))
;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)
;; 设置选中背景颜色为蓝色
(set-face-background 'region "blue")
;; 将emacs的删除功能设置与其他图形界面编辑器相同
(delete-selection-mode 1)
;; 高亮当前行
(global-hl-line-mode 1)
;; 关闭默认的哔哔提示音
(setq ring-bell-function 'ignore)
