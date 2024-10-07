# UniverseResourcePack 開発者・運営向けドキュメント

- [アイテムID一覧](./id.md)
- [リソースパックの追加方法](./create-model.md)
- [リリース方法](./release.md)

## リソースパックの構成

```plaintext
resourcepacks/
└── assets/
       └── minecraft/
           └── models/
           │    └── item/ -- アイテムのモデル
           │       ├── <item>.json
           │       └── ...
           └── textures/ -- テクスチャ
               └── item/ -- アイテムのテクスチャ
                   ├── <item>.png
                   └── ...
        └── models/
            └── item/ -- アイテムのモデル
                ├── <item>.json
                └── ...
    ├── pack.mcmeta
    └── pack.png
```
