# Spacemacs 配置

-------------------------------------------------------------------------------
使用前请根据自己的 PYTHON_PATH 修改一下变量：

```lisp
(setq python-shell-interpreter '"your/python/path")
```
 
打开项目后，需激活项目的 Python 的虚拟环境，否则自动补全、静态检查和代码跳转可能会不正常。如果你使用的是 `Pipenv` （项目根目录有`Pipfile`），打开项目后可以使用快捷键：~, v p a~ 来激活虚拟环境。

## 自动补全 ##

使用`auto-completion`进行补全。`python-mode`中做了基本的变量配置，除此以外还做了一下配置：

```lisp
 '(company-dabbrev-minimum-length 1)
 '(company-dabbrev-other-buffers nil)
 '(company-show-numbers t)
 '(company-statistics-auto-restore nil)
 '(company-tooltip-align-annotations t)
```

## 静态检查 ##

使用`flycheck`配合`flake8 pylint`做静态检查。使用快捷键：~ SPC e l ~ 打开错误列表。

## 代码跳转 ##

快捷键：~ , g g ~ 跳转至对象定义。 ~ , g b ~ 返回。
