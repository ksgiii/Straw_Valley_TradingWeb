# Straw_Valley_TradingWeb
这是一个简单的模拟游戏交易系统的网站
详情请见：（演示）

【星露谷交易网站?《这只是某个大学生的暑假作业》(留个后手，孩子们嘴下留情)-哔哩哔哩】 https://b23.tv/sx3VBwS

项目结构：
Starew Valley
├── Starew_Velley
├── Static
│   └── images
├── Valley_Trading
│   ├── migrations
│   ├── templates
│   ├── models.py
│   ├── views.py
│   ├── urls.py
│   ├── apps.py
│   ├── __init__.py
│   ├── tests.py
│   └── admin.py
├── venv1
├── db.sqlite3
└── manage.py

MySQL_Field存放的是表格数据。python 虚拟环境解释器环境和MySQL环境自己配置。
python manage.makemigration
python manage.migrate两条指令迁移数据库同步后
python manage.py runserver运行
8000/端口后     /Valley_Trading/进入首页体验网站。（详情请见URL文件里面配置）
