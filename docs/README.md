# UniverseResourcePack 開発者・運営向けドキュメント

- [アイテムID一覧](./id.md)
- [リソースパックの追加方法](./create-model.md)

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

## アイテムの追加

アイテムを追加する際は次の手順を踏みます.

1. `assets/minecraft/textures/item/` にアイテムのテクスチャを追加します.
   - アイテムのテクスチャは PNG 形式である必要があり, ファイル名はアイテムの名前と一致している必要があります.
   - 日本語は使わないでください.
2. `assets/minecraft/models/item/` にカスタムアイテムのモデルを追加します.
   - ここでのファイル名はカスタムアイテムと名前が一致している必要があります.
   - モデルのフォーマットは JSON です.

   ```json
    {
         "parent": "item/generated",
         "textures": {
              "layer0": "item/<item>"
         }
    }
   ```
