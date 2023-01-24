.class public Lcom/zui/gallery/filtershow/meishefilter/NvAsset;
.super Ljava/lang/Object;
.source "NvAsset.java"


# static fields
.field public static final ASSET_ANIMATED_STICKER:I = 0x4

.field public static final ASSET_ANIMATION_COMPANY:I = 0x1a

.field public static final ASSET_ANIMATION_IN:I = 0x18

.field public static final ASSET_ANIMATION_OUT:I = 0x19

.field public static final ASSET_ARSCENE_FACE:I = 0xf

.field public static final ASSET_CAPTION_ANIMATION:I = 0x14

.field public static final ASSET_CAPTION_BUBBLE:I = 0x13

.field public static final ASSET_CAPTION_IN_ANIMATION:I = 0x15

.field public static final ASSET_CAPTION_OUT_ANIMATION:I = 0x16

.field public static final ASSET_CAPTION_RICH_WORD:I = 0x12

.field public static final ASSET_CAPTION_STYLE:I = 0x3

.field public static final ASSET_CAPTURE_SCENE:I = 0x8

.field public static final ASSET_CHANGE_SPEED_CURVE:I = 0x1b

.field public static final ASSET_COMPOUND_CAPTION:I = 0x10

.field public static final ASSET_CUSTOM_ANIMATED_STICKER:I = 0xc

.field public static final ASSET_FACE1_STICKER:I = 0xb

.field public static final ASSET_FACE_BUNDLE_STICKER:I = 0xe

.field public static final ASSET_FACE_STICKER:I = 0xa

.field public static final ASSET_FILTER:I = 0x2

.field public static final ASSET_FONT:I = 0x6

.field public static final ASSET_MIMO:I = 0x17

.field public static final ASSET_PARTICLE:I = 0x9

.field public static final ASSET_PHOTO_ALBUM:I = 0x11

.field public static final ASSET_SUPER_ZOOM:I = 0xd

.field public static final ASSET_THEME:I = 0x1

.field public static final ASSET_VIDEO_TRANSITION:I = 0x5

.field public static final AspectRatio_16v9:I = 0x1

.field public static final AspectRatio_18v9:I = 0x20

.field public static final AspectRatio_1v1:I = 0x2

.field public static final AspectRatio_21v9:I = 0x200

.field public static final AspectRatio_3v4:I = 0x10

.field public static final AspectRatio_4v3:I = 0x8

.field public static final AspectRatio_9v16:I = 0x4

.field public static final AspectRatio_9v18:I = 0x40

.field public static final AspectRatio_9v21:I = 0x400

.field public static final AspectRatio_All:I = 0x1f

.field public static final AspectRatio_NoFitRatio:I = 0x0

.field public static final DownloadStatusDecompressing:I = 0x3

.field public static final DownloadStatusDecompressingFailed:I = 0x6

.field public static final DownloadStatusFailed:I = 0x5

.field public static final DownloadStatusFinished:I = 0x4

.field public static final DownloadStatusInProgress:I = 0x2

.field public static final DownloadStatusNone:I = 0x0

.field public static final DownloadStatusPending:I = 0x1

.field public static final NV_CATEGORY_ID_ALL:I = 0x0

.field public static final NV_CATEGORY_ID_CUSTOM:I = 0x4e20

.field public static final NV_CATEGORY_ID_DOUYINFILTER:I = 0x7

.field public static final NV_CATEGORY_ID_PARTICLE_TOUCH_TYPE:I = 0x2

.field public static final RatioArray:[I

.field public static final RatioStringArray:[Ljava/lang/String;


# instance fields
.field public aspectRatio:I

.field public assetDescription:Ljava/lang/String;

.field public assetType:I

.field public bundledLocalDirPath:Ljava/lang/String;

.field public categoryId:I

.field public coverUrl:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public downloadProgress:I

.field public downloadStatus:I

.field public fxFileName:Ljava/lang/String;

.field public isReserved:Z

.field public localDirPath:Ljava/lang/String;

.field public minAppVersion:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public remotePackageSize:I

.field public remotePackageUrl:Ljava/lang/String;

.field public remoteVersion:I

.field public tags:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 54
    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->RatioArray:[I

    const-string v1, "16:9"

    const-string v2, "1:1"

    const-string v3, "9:16"

    const-string v4, "3:4"

    const-string v5, "4:3"

    const-string/jumbo v6, "\u901a\u7528"

    .line 63
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->RatioStringArray:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x10
        0x8
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 118
    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    const/4 v1, 0x1

    .line 119
    iput v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    .line 120
    iput v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    const/4 v2, 0x0

    .line 121
    iput v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    .line 122
    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->desc:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->tags:Ljava/lang/String;

    .line 126
    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->minAppVersion:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->bundledLocalDirPath:Ljava/lang/String;

    .line 129
    iput-boolean v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved:Z

    .line 130
    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    .line 131
    iput v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remoteVersion:I

    .line 132
    iput v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadProgress:I

    .line 133
    iput v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageSize:I

    .line 134
    iput v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 135
    iput v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    .line 136
    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyAsset(Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)V
    .locals 1

    .line 232
    iget-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    .line 233
    iget v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    .line 234
    iget v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    .line 235
    iget v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    .line 236
    iget-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    .line 237
    iget-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 238
    iget-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->desc:Ljava/lang/String;

    .line 239
    iget-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->tags:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->tags:Ljava/lang/String;

    .line 240
    iget-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->minAppVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->minAppVersion:Ljava/lang/String;

    .line 241
    iget-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->bundledLocalDirPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->bundledLocalDirPath:Ljava/lang/String;

    .line 243
    iget-boolean v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved:Z

    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved:Z

    .line 244
    iget-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    .line 245
    iget v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remoteVersion:I

    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remoteVersion:I

    .line 246
    iget v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadProgress:I

    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadProgress:I

    .line 247
    iget v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageSize:I

    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageSize:I

    .line 248
    iget v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 249
    iget v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    .line 250
    iget-object p1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetDescription:Ljava/lang/String;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetDescription:Ljava/lang/String;

    return-void
.end method

.method public getPackageType()I
    .locals 6

    .line 204
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    return v3

    :cond_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    return v4

    :cond_2
    if-ne v0, v2, :cond_3

    return v5

    :cond_3
    const/4 v4, 0x5

    if-ne v0, v4, :cond_4

    return v1

    :cond_4
    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    return v4

    :cond_5
    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    return v3

    :cond_6
    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    return v4

    :cond_7
    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    return v5

    :cond_8
    const/16 v1, 0xf

    if-ne v0, v1, :cond_9

    const/4 v0, 0x6

    return v0

    :cond_9
    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x7

    return v0

    :cond_a
    return v2
.end method

.method public hasRemoteAsset()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUpdate()Z
    .locals 3

    .line 169
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isUsable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->hasRemoteAsset()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remoteVersion:I

    iget v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isInstalling()Z
    .locals 2

    .line 180
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstallingFailed()Z
    .locals 2

    .line 188
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstallingFinished()Z
    .locals 2

    .line 196
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReserved()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved:Z

    return v0
.end method

.method public isUsable()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->bundledLocalDirPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
