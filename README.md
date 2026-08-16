# dsh-harness-launcher

[DeepSeek Harness](https://github.com/deepseek-ai/deepseek-harness)(DSH) 的一键启动器:**不用每次在终端敲命令**,双击脚本即可自动拉起 DSH 并打开网页,功能和终端启动完全一致。

## 文件

| 文件 | 作用 |
|---|---|
| `start-harness.bat` | 一键启动脚本:检测服务是否运行 → 未运行则拉起 `npx @deepseek-ai/dsh web` → 自动打开 `http://127.0.0.1:3080`(已在运行则直接开网页,不会重复启动) |
| `harness.html` | 本地启动页:自动检测 DSH 状态,运行中自动跳转;未运行则引导启动。双击用默认浏览器打开 |
| `.gitignore` | git 忽略清单(密钥/本地配置) |

## 使用

1. 前提:本机已安装 [Node.js ≥ 22](https://nodejs.org/) 并能运行 `npx @deepseek-ai/dsh web`
2. 双击 `start-harness.bat` → 等待服务启动 → 浏览器自动打开 DSH 网页
3. 之后每次直接收藏 `http://127.0.0.1:3080` 即可

## 说明

- 纯本地脚本,**无任何联网上报,不包含任何 API Key / 密钥 / 个人配置**
- `start-harness.bat` 会弹出一个最小化控制台窗口(DSH 进程所在,可随时关闭以停止服务)
- 本仓库只是启动器;如需给 DSH 增加"看图"能力,见 [dsh-deepeye-setup](https://github.com/grasir-ctrl/dsh-deepeye-setup)

## License

MIT
