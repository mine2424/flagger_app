# oprol_template

tmp

## Installation

**install flutter**

```bash
asdf install
```

## ディレクトリ構成

```
<!-- flutter -->
├── lib/
│   ├── foundation/ (基盤系のインスタンスまとめ)
│   │   └── supabase/
│   │       └── supabase_auth.dart
│   ├── domain/ (DB アクセス関連)
│   │   └── entity/
│   │       ├── xxx_entity.dart
│   │   └── repository/
│   │       └── xxx_repo.dart
│   ├── presentation/ (UI 層)
│   │   ├── component/ (全ての screen で使用するコンポーネント)
│   │   ├── screen/
│   │   │   ├── xxx/
│   │   │   │   ├── component/
│   │   │   │   └── xxx_screen.dart
│   ├── route
│   │   └── auto_route.dart
│   ├── hooks
│   │   └── use_xxx.dart
│   ├── use_case/
│   │   └── xxx_use_case.dart
│   ├── theme/
│   │   └── xxx.dart
│   ├── main.dart
├── pubspec.lock
├── pubspec.yaml
├── DOCUMENT.md
└── README.md
```

## 実装方針
