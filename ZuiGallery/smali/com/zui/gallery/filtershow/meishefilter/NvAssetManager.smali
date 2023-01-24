.class public Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;
.super Ljava/lang/Object;
.source "NvAssetManager.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;
.implements Lcom/meicam/sdk/NvsAssetPackageManager$AssetPackageManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;,
        Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;,
        Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;,
        Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;,
        Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;
    }
.end annotation


# static fields
.field private static final ASSET_DOWNLOAD_FAILED:I = 0x7d5

.field private static final ASSET_DOWNLOAD_PROGRESS:I = 0x7d3

.field private static final ASSET_DOWNLOAD_SUCCESS:I = 0x7d4

.field private static final ASSET_LIST_REQUEST_FAILED:I = 0x7d2

.field private static final ASSET_LIST_REQUEST_SUCCESS:I = 0x7d1

.field public static final CLASSIC_FILTER:I = 0x3e8

.field public static final DELICACY_FILTER:I = 0x3ea

.field public static final MOVIE_FILTER:I = 0x3eb

.field private static final NV_CDN_URL:Ljava/lang/String; = "https://assets.meishesdk.com"

.field private static final NV_DOMAIN_URL:Ljava/lang/String; = "https://assets.meishesdk.com"

.field public static final PORTRAIT_FILTER:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "NvAssetManager "

.field public static final VIDEO_FILTER:I = 0x3ec

.field private static final assetdata:Ljava/lang/String; = "assetdata"

.field private static final customStickerInfo:Ljava/lang/String; = "/customStickerInfo.json"

.field private static m_instance:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

.field private static preferences:Landroid/content/SharedPreferences;


# instance fields
.field private assetDict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
            ">;>;"
        }
    .end annotation
.end field

.field private customStickerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingAssetsCounter:I

.field private isLocalAssetSearchedARScene:Z

.field private isLocalAssetSearchedAnimatedSticker:Z

.field private isLocalAssetSearchedCaption:Z

.field private isLocalAssetSearchedCaptureScene:Z

.field private isLocalAssetSearchedCompoundCaption:Z

.field private isLocalAssetSearchedCustomAnimatedSticker:Z

.field private isLocalAssetSearchedFace1Sticker:Z

.field private isLocalAssetSearchedFaceSticker:Z

.field private isLocalAssetSearchedFilter:Z

.field private isLocalAssetSearchedParticle:Z

.field private isLocalAssetSearchedSuperZoom:Z

.field private isLocalAssetSearchedTheme:Z

.field private isLocalAssetSearchedTransition:Z

.field private isSearchLocalCustomSticker:Z

.field public isSyncInstallAsset:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mManagerlistener:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;

.field private m_httpRequest:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;

.field private maxConcurrentAssetDownloadNum:I

.field private packageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

.field private pendingAssetsToDownload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private remoteAssetsOrderedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private streamingContext:Lcom/meicam/sdk/NvsStreamingContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 58
    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->maxConcurrentAssetDownloadNum:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->pendingAssetsToDownload:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;-><init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mHandler:Landroid/os/Handler;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mContext:Landroid/content/Context;

    .line 215
    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;->sharedInstance()Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->m_httpRequest:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;

    .line 216
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const-string v0, "assetdata"

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->preferences:Landroid/content/SharedPreferences;

    .line 218
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    .line 219
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->remoteAssetsOrderedList:Ljava/util/HashMap;

    .line 220
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->customStickerArray:Ljava/util/ArrayList;

    .line 221
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p1}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->packageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    .line 222
    invoke-virtual {p1, p0}, Lcom/meicam/sdk/NvsAssetPackageManager;->setCallbackInterface(Lcom/meicam/sdk/NvsAssetPackageManager$AssetPackageManagerCallback;)V

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isSyncInstallAsset:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;ILjava/util/ArrayList;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->updateAssetDataListSuccess(ILjava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->updateAssetDataListFailed()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;ILjava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->updateAssetDownloadProgress(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->updateAssetDownloadSuccess(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;ILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->updateAssetDownloadFailed(ILjava/lang/String;)V

    return-void
.end method

.method private addRemoteAssetData(Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;

    .line 1111
    new-instance v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;-><init>()V

    .line 1112
    iput p2, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    .line 1113
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getCategory()I

    move-result v3

    iput v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    .line 1114
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getTags()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->tags:Ljava/lang/String;

    .line 1115
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getPackageSize()I

    move-result v3

    iput v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageSize:I

    .line 1116
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    .line 1117
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getMinAppVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->minAppVersion:Ljava/lang/String;

    .line 1118
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getPackageUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://assets.meishesdk.com"

    invoke-virtual {v3, v4, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    .line 1119
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getVersion()I

    move-result v3

    iput v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remoteVersion:I

    .line 1120
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 1121
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getSupportedAspectRatio()I

    move-result v3

    iput v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    .line 1122
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    .line 1123
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->desc:Ljava/lang/String;

    .line 1125
    iget-object v1, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-direct {p0, p2, v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1127
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1129
    :cond_1
    iget v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    iput v3, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    .line 1130
    iget-object v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    .line 1131
    iget-object v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    iput-object v3, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 1132
    iget v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    iput v3, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    .line 1133
    iget v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageSize:I

    iput v3, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageSize:I

    .line 1134
    iget v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remoteVersion:I

    iput v3, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remoteVersion:I

    .line 1135
    iget-object v2, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    iput-object v2, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 1138
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addRemoteAssetOrderedList(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->remoteAssetsOrderedList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1146
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;

    .line 1147
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1148
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1151
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->remoteAssetsOrderedList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private downloadPendingAsset(I)V
    .locals 3

    .line 277
    :cond_0
    :goto_0
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->downloadingAssetsCounter:I

    iget v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->maxConcurrentAssetDownloadNum:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->pendingAssetsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->pendingAssetsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->pendingAssetsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 281
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->startDownloadAsset(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v1

    const/4 v2, 0x5

    .line 283
    iput v2, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 284
    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mManagerlistener:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;

    if-eqz v1, :cond_0

    .line 285
    invoke-interface {v1, v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;->onDonwloadAssetFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;
    .locals 3

    .line 1095
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1096
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1097
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1098
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    .line 1099
    iget-object v2, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private findAsset(Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;
    .locals 5

    .line 1083
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1084
    iget-object v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 1085
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1086
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    .line 1087
    iget-object v4, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getAssetDownloadDir(I)Ljava/lang/String;
    .locals 0

    .line 993
    invoke-static {p1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadPath(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAssetSuffix(I)Ljava/lang/String;
    .locals 4

    const-string v0, ".zip"

    const-string v1, ".capturescene"

    const-string v2, ".animatedsticker"

    const-string v3, ".videofx"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const-string v0, ".compoundcaption"

    goto :goto_1

    :pswitch_2
    const-string v0, ".arscene"

    goto :goto_1

    :pswitch_3
    const-string v0, ".bundle"

    goto :goto_1

    :pswitch_4
    move-object v0, v1

    goto :goto_1

    :pswitch_5
    const-string v0, ".ttf"

    goto :goto_1

    :pswitch_6
    const-string v0, ".videotransition"

    goto :goto_1

    :pswitch_7
    move-object v0, v2

    goto :goto_1

    :pswitch_8
    const-string v0, ".captionstyle"

    goto :goto_1

    :goto_0
    :pswitch_9
    move-object v0, v3

    goto :goto_1

    :pswitch_a
    const-string v0, ".theme"

    :goto_1
    :pswitch_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_4
        :pswitch_b
        :pswitch_7
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getIsLocalAssetSearched(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    return p1

    .line 1029
    :pswitch_1
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedCompoundCaption:Z

    return p1

    .line 1027
    :pswitch_2
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedARScene:Z

    return p1

    .line 1025
    :pswitch_3
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedSuperZoom:Z

    return p1

    .line 1021
    :pswitch_4
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedCustomAnimatedSticker:Z

    return p1

    .line 1023
    :pswitch_5
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedFace1Sticker:Z

    return p1

    .line 1019
    :pswitch_6
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedFaceSticker:Z

    return p1

    .line 1017
    :pswitch_7
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedParticle:Z

    return p1

    .line 1015
    :pswitch_8
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedCaptureScene:Z

    return p1

    .line 1013
    :pswitch_9
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedTransition:Z

    return p1

    .line 1011
    :pswitch_a
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedAnimatedSticker:Z

    return p1

    .line 1009
    :pswitch_b
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedCaption:Z

    return p1

    .line 1007
    :pswitch_c
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedFilter:Z

    return p1

    .line 1005
    :pswitch_d
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedTheme:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;
    .locals 1

    .line 193
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->m_instance:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->m_instance:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    .line 195
    :cond_0
    sget-object p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->m_instance:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    return-object p0
.end method

.method private searchAssetInBundlePath(ILjava/lang/String;)V
    .locals 8

    .line 518
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->getAssetSuffix(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-ne p1, v1, :cond_0

    const/16 p1, 0xb

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 524
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 525
    iget-object v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 531
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_7

    .line 532
    aget-object v4, v2, v3

    .line 533
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 536
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 537
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assets:/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 538
    invoke-virtual {p0, v4, p1, v5}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->installAssetPackage(Ljava/lang/String;IZ)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 542
    :cond_4
    iput-boolean v5, v6, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved:Z

    .line 543
    iput p1, v6, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    .line 544
    iput-object v4, v6, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->bundledLocalDirPath:Ljava/lang/String;

    .line 546
    iget-object v4, v6, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v4

    if-nez v4, :cond_5

    .line 548
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 550
    :cond_5
    iget v5, v4, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    iget v7, v6, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    if-gt v5, v7, :cond_6

    .line 551
    invoke-virtual {v4, v6}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->copyAsset(Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 557
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-void
.end method

.method private searchAssetInLocalPath(ILjava/lang/String;)V
    .locals 10

    .line 562
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->getAssetSuffix(I)Ljava/lang/String;

    move-result-object v0

    .line 563
    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 566
    iget-object v2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 570
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 573
    :cond_1
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_b

    aget-object v5, p2, v4

    .line 574
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 575
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "/"

    .line 578
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 579
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "\\."

    .line 582
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    .line 583
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    .line 586
    :cond_4
    invoke-virtual {p0, v6, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->getAssetInfoFromSharedPreferences(Ljava/lang/String;I)Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;

    move-result-object v6

    .line 599
    invoke-virtual {p0, v5, p1, v3}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->installAssetPackage(Ljava/lang/String;IZ)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_1

    .line 602
    :cond_5
    iput-boolean v3, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved:Z

    .line 603
    iput p1, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    const/16 v8, 0xb

    if-eq p1, v8, :cond_6

    const/16 v9, 0xd

    if-eq p1, v9, :cond_6

    .line 605
    iput-object v5, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    :cond_6
    if-eqz v6, :cond_8

    if-eq p1, v8, :cond_7

    .line 609
    iget-object v5, v6, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->coverUrl:Ljava/lang/String;

    iput-object v5, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 611
    :cond_7
    iget-object v5, v6, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->name:Ljava/lang/String;

    iput-object v5, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    .line 612
    iget v5, v6, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->categoryId:I

    iput v5, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    .line 613
    iget v5, v6, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->aspectRatio:I

    iput v5, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    .line 614
    iget v5, v6, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->remotePackageSize:I

    iput v5, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageSize:I

    .line 617
    :cond_8
    iget-object v5, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v5

    if-nez v5, :cond_9

    .line 619
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 621
    :cond_9
    iget v6, v5, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    iget v8, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    if-ge v6, v8, :cond_a

    .line 622
    invoke-virtual {v5, v7}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->copyAsset(Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)V

    :cond_a
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    return-void
.end method

.method private sendHandleMsg(Ljava/lang/Object;I)V
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1158
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1159
    :cond_0
    iput p2, v0, Landroid/os/Message;->what:I

    .line 1160
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1161
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 1162
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private setIsLocalAssetSearched(IZ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1075
    :pswitch_1
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedCompoundCaption:Z

    goto :goto_0

    .line 1072
    :pswitch_2
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedARScene:Z

    goto :goto_0

    .line 1069
    :pswitch_3
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedSuperZoom:Z

    goto :goto_0

    .line 1063
    :pswitch_4
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedCustomAnimatedSticker:Z

    goto :goto_0

    .line 1066
    :pswitch_5
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedFace1Sticker:Z

    goto :goto_0

    .line 1060
    :pswitch_6
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedFaceSticker:Z

    goto :goto_0

    .line 1057
    :pswitch_7
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedParticle:Z

    goto :goto_0

    .line 1054
    :pswitch_8
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedCaptureScene:Z

    goto :goto_0

    .line 1051
    :pswitch_9
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedTransition:Z

    goto :goto_0

    .line 1048
    :pswitch_a
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedAnimatedSticker:Z

    goto :goto_0

    .line 1045
    :pswitch_b
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedCaption:Z

    goto :goto_0

    .line 1042
    :pswitch_c
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedFilter:Z

    goto :goto_0

    .line 1039
    :pswitch_d
    iput-boolean p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isLocalAssetSearchedTheme:Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static sharedInstance()Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;
    .locals 1

    .line 199
    sget-object v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->m_instance:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    return-object v0
.end method

.method private startDownloadAsset(ILjava/lang/String;)Z
    .locals 11

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v0

    const-string v1, "NvAssetManager "

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid asset uuid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 298
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->hasRemoteAsset()Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asset doesn\'t have a remote url!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 303
    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->getAssetDownloadDir(I)Ljava/lang/String;

    move-result-object v5

    .line 304
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v2

    .line 310
    :cond_2
    iget-object p2, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    .line 311
    iget-object v1, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 316
    iget-object v1, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 317
    iget-object v4, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 322
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".tmp"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 324
    iget-object v3, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->m_httpRequest:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;

    iget-object v4, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageUrl:Ljava/lang/String;

    iget-object v10, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    move-object v8, p0

    move v9, p1

    invoke-virtual/range {v3 .. v10}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;->downloadAsset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;ILjava/lang/String;)V

    .line 326
    iget p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->downloadingAssetsCounter:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->downloadingAssetsCounter:I

    .line 327
    iput v2, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadProgress:I

    const/4 p1, 0x2

    .line 328
    iput p1, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    return p2
.end method

.method private updateAssetDataListFailed()V
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mManagerlistener:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;

    if-eqz v0, :cond_0

    .line 1174
    invoke-interface {v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;->onGetRemoteAssetsFailed()V

    :cond_0
    return-void
.end method

.method private updateAssetDataListSuccess(ILjava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1166
    invoke-direct {p0, p2, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->addRemoteAssetData(Ljava/util/ArrayList;I)V

    .line 1167
    invoke-direct {p0, p2, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->addRemoteAssetOrderedList(Ljava/util/ArrayList;I)V

    .line 1168
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mManagerlistener:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;

    if-eqz p1, :cond_0

    .line 1169
    invoke-interface {p1, p3}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;->onRemoteAssetsChanged(Z)V

    :cond_0
    return-void
.end method

.method private updateAssetDownloadFailed(ILjava/lang/String;)V
    .locals 1

    .line 1207
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object p1

    const/4 v0, 0x0

    .line 1208
    iput v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadProgress:I

    const/4 v0, 0x5

    .line 1209
    iput v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 1210
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mManagerlistener:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;

    if-eqz p1, :cond_0

    .line 1211
    invoke-interface {p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;->onDonwloadAssetFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateAssetDownloadProgress(ILjava/lang/String;I)V
    .locals 1

    .line 1178
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object p1

    .line 1179
    iput p3, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadProgress:I

    const/4 v0, 0x2

    .line 1180
    iput v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 1181
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mManagerlistener:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;

    if-eqz p1, :cond_0

    .line 1182
    invoke-interface {p1, p2, p3}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;->onDownloadAssetProgress(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private updateAssetDownloadSuccess(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1186
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->downloadingAssetsCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->downloadingAssetsCounter:I

    .line 1187
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object p1

    const/16 v0, 0x64

    .line 1188
    iput v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadProgress:I

    const/4 v0, 0x3

    .line 1189
    iput v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 1190
    iput-object p3, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    .line 1191
    iget v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->installAssetPackage(Ljava/lang/String;IZ)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object p3

    .line 1192
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isSyncInstallAsset:Z

    if-eqz v0, :cond_0

    .line 1193
    iget v0, p3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    iput v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 1194
    iget v0, p3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    iput v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    .line 1195
    iget-object v0, p3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetDescription:Ljava/lang/String;

    iput-object v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetDescription:Ljava/lang/String;

    .line 1197
    :cond_0
    iget v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1198
    :cond_1
    iget v0, p3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    iput v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 1199
    iget v0, p3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    iput v0, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    .line 1200
    iget-object p3, p3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    iput-object p3, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    .line 1202
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mManagerlistener:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;

    if-eqz p1, :cond_3

    .line 1203
    invoke-interface {p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;->onDonwloadAssetSuccess(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private writeAssetDataToLocal(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 856
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 860
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 861
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 867
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 868
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 870
    :cond_2
    new-instance p2, Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 871
    new-instance p1, Ljava/io/BufferedWriter;

    invoke-direct {p1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 872
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 875
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public appendCustomStickerInfoData(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;)V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->customStickerArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public cancelAssetDownload(Ljava/lang/String;)Z
    .locals 6

    .line 338
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v0

    const-string v1, "NvAssetManager "

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid asset uuid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 343
    :cond_0
    iget v3, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You can\'t cancel downloading asset while it is not in any of the download states!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 350
    :cond_1
    iput v2, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    goto :goto_0

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->pendingAssetsToDownload:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 346
    iput v2, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    :goto_0
    return v4
.end method

.method public downloadAsset(ILjava/lang/String;)Z
    .locals 6

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "NvAssetManager "

    if-nez v0, :cond_0

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid asset uuid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 245
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->hasRemoteAsset()Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asset doesn\'t have a remote url!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 250
    :cond_1
    iget v3, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-eq v3, v5, :cond_5

    const/4 v5, 0x5

    if-eq v3, v5, :cond_5

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid status for Asset !"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 262
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asset is being uncompressed right now!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 259
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asset is being downloaded right now!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 256
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asset has already in pending download state!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 269
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->pendingAssetsToDownload:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iput v4, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 271
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->downloadPendingAsset(I)V

    return v4
.end method

.method public downloadRemoteAssetsInfo(IIIII)V
    .locals 7

    .line 231
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->m_httpRequest:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;->getAssetList(IIIIILcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvHttpRequestListener;)V

    return-void
.end method

.method public getAsset(Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;
    .locals 0

    .line 492
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object p1

    return-object p1
.end method

.method public getAssetInfoFromSharedPreferences(Ljava/lang/String;I)Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "assetType:"

    const-string v2, "remotePackageSize:"

    const-string v3, "aspectRatio:"

    const-string v4, "categoryId:"

    const-string v5, "coverUrl:"

    const-string v6, "name:"

    const/4 v7, -0x1

    .line 937
    invoke-static {v7}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadPath(I)Ljava/lang/String;

    move-result-object v7

    .line 938
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "info_"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".json"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 946
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v9, :cond_0

    .line 987
    invoke-static {v7}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v7

    .line 949
    :cond_0
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v8, ""

    move-object v10, v8

    .line 951
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 952
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 954
    :cond_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 956
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 957
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 958
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 959
    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 960
    new-instance v11, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v12, p0

    :try_start_3
    invoke-direct {v11, v12}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;-><init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V

    const-string v13, ";"

    .line 961
    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 962
    array-length v13, v10

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_9

    aget-object v15, v10, v14

    const-string/jumbo v7, "uuid:"

    .line 963
    invoke-virtual {v15, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2

    .line 964
    iput-object v0, v11, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->uuid:Ljava/lang/String;

    goto :goto_3

    .line 965
    :cond_2
    invoke-virtual {v15, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_3

    .line 966
    invoke-virtual {v15, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v11, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->name:Ljava/lang/String;

    goto :goto_3

    .line 967
    :cond_3
    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_4

    .line 968
    invoke-virtual {v15, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v11, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->coverUrl:Ljava/lang/String;

    goto :goto_3

    .line 969
    :cond_4
    invoke-virtual {v15, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_5

    .line 970
    invoke-virtual {v15, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v11, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->categoryId:I

    goto :goto_3

    .line 971
    :cond_5
    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_6

    .line 972
    invoke-virtual {v15, v3, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v11, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->aspectRatio:I

    goto :goto_3

    .line 973
    :cond_6
    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_7

    .line 974
    invoke-virtual {v15, v2, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v11, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->remotePackageSize:I

    goto :goto_3

    .line 975
    :cond_7
    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_8

    .line 976
    invoke-virtual {v15, v1, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v11, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvUserAssetInfo;->assetType:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_8
    :goto_3
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_2

    .line 987
    :cond_9
    invoke-static {v9}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v11

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_a
    move-object/from16 v12, p0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v12, p0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v12, p0

    const/4 v7, 0x0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v12, p0

    const/4 v9, 0x0

    .line 985
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 987
    :goto_5
    invoke-static {v9}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    const/4 v1, 0x0

    return-object v1

    :catchall_2
    move-exception v0

    :goto_6
    move-object v7, v9

    :goto_7
    invoke-static {v7}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 988
    throw v0
.end method

.method public getPendingAssetsToDownload()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->pendingAssetsToDownload:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRemoteAssets(III)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->remoteAssetsOrderedList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 369
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 370
    invoke-direct {p0, p1, v2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v2

    const/16 v3, 0x1f

    if-ne p2, v3, :cond_1

    if-nez p3, :cond_1

    .line 372
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    .line 374
    iget v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    if-ne v3, p3, :cond_0

    .line 375
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eq p2, v3, :cond_3

    if-nez p3, :cond_3

    .line 377
    iget v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_0

    .line 378
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_3
    iget v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    and-int/2addr v3, p2

    if-ne v3, p2, :cond_0

    iget v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    if-ne v3, p3, :cond_0

    .line 381
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getRemoteAssetsWithPage(IIIII)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
            ">;"
        }
    .end annotation

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->remoteAssetsOrderedList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    mul-int v2, p4, p5

    :goto_0
    add-int/lit8 v3, p4, 0x1

    mul-int/2addr v3, p5

    if-ge v2, v3, :cond_5

    .line 397
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_2

    .line 399
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 400
    invoke-direct {p0, p1, v3}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(ILjava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v3

    const/16 v4, 0x1f

    if-ne p2, v4, :cond_1

    if-nez p3, :cond_1

    .line 402
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-ne p2, v4, :cond_2

    if-eqz p3, :cond_2

    .line 404
    iget v4, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    if-ne v4, p3, :cond_4

    .line 405
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eq p2, v4, :cond_3

    if-nez p3, :cond_3

    .line 407
    iget v4, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_4

    .line 408
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 410
    :cond_3
    iget v4, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    and-int/2addr v4, p2

    if-ne v4, p2, :cond_4

    iget v4, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    if-ne v4, p3, :cond_4

    .line 411
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getReservedAssets(III)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
            ">;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 468
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    const/16 v2, 0x1f

    if-ne p2, v2, :cond_1

    if-nez p3, :cond_1

    .line 470
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    .line 473
    iget v2, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    if-ne v2, p3, :cond_0

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isUsable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eq p2, v2, :cond_3

    if-nez p3, :cond_3

    .line 476
    iget v2, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    and-int/2addr v2, p2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isUsable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    :cond_3
    iget v2, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    and-int/2addr v2, p2

    if-ne v2, p2, :cond_0

    iget v2, v1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    if-ne v2, p3, :cond_0

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isUsable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public getUsableAssets(III)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
            ">;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 425
    new-instance v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$2;-><init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    .line 438
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 440
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 441
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    const/16 v2, 0x1f

    if-ne p2, v2, :cond_2

    if-nez p3, :cond_2

    .line 443
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isUsable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    .line 446
    iget v2, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    if-ne v2, p3, :cond_1

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isUsable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eq p2, v2, :cond_4

    if-nez p3, :cond_4

    .line 449
    iget v2, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    and-int/2addr v2, p2

    if-ne v2, p2, :cond_1

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isUsable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_4
    iget v2, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    and-int/2addr v2, p2

    if-ne v2, p2, :cond_1

    iget v2, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    if-ne v2, p3, :cond_1

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isUsable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public getUsableCustomStickerAssets()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;",
            ">;"
        }
    .end annotation

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->customStickerArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;

    .line 826
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public initCustomStickerInfoFromSharedPreferences()V
    .locals 14

    const-string v0, "order:"

    const-string/jumbo v1, "targetImagePath:"

    const-string v2, "imagePath:"

    const-string/jumbo v3, "templateUuid:"

    .line 884
    iget-boolean v4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isSearchLocalCustomSticker:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    .line 886
    iput-boolean v4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isSearchLocalCustomSticker:Z

    .line 887
    iget-object v4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->customStickerArray:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 888
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->customStickerArray:Ljava/util/ArrayList;

    .line 889
    :cond_1
    iget-object v4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->customStickerArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 890
    iget-object v4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->customStickerArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v4, -0x1

    .line 891
    invoke-static {v4}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadPath(I)Ljava/lang/String;

    move-result-object v4

    .line 892
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/customStickerInfo.json"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 899
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    .line 902
    :cond_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    move-object v6, v5

    .line 904
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 905
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 907
    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 908
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 910
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 911
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 912
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 913
    new-instance v9, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;

    invoke-direct {v9}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;-><init>()V

    const-string v10, ";"

    .line 914
    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 915
    array-length v10, v8

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_9

    aget-object v12, v8, v11

    .line 916
    iput-object v7, v9, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;->uuid:Ljava/lang/String;

    .line 917
    invoke-virtual {v12, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_5

    .line 918
    invoke-virtual {v12, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;->templateUuid:Ljava/lang/String;

    goto :goto_3

    .line 919
    :cond_5
    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_6

    .line 920
    invoke-virtual {v12, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;->imagePath:Ljava/lang/String;

    goto :goto_3

    .line 921
    :cond_6
    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_7

    .line 922
    invoke-virtual {v12, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;->targetImagePath:Ljava/lang/String;

    goto :goto_3

    .line 923
    :cond_7
    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ltz v13, :cond_8

    .line 924
    invoke-virtual {v12, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v9, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;->order:I

    :cond_8
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 929
    :cond_9
    iget-object v7, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->customStickerArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 932
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    return-void
.end method

.method public installAssetPackage(Ljava/lang/String;IZ)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move/from16 v1, p2

    .line 691
    new-instance v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    invoke-direct {v8}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;-><init>()V

    const-string v2, "/"

    .line 692
    invoke-virtual {v7, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    .line 696
    :cond_0
    iput v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    const-string v4, "\\."

    .line 697
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v2, v2, v9

    iput-object v2, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    .line 698
    iget-object v2, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v5

    .line 701
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    iget-object v2, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->streamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v11

    if-nez v11, :cond_2

    return-object v5

    :cond_2
    const/4 v2, 0x3

    .line 706
    iput v2, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    const/16 v2, 0xb

    const/4 v12, 0x6

    const/4 v13, 0x4

    if-ne v1, v2, :cond_5

    .line 708
    invoke-static {v2}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadPath(I)Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_3

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->unZipFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    :cond_3
    if-eqz v3, :cond_4

    .line 716
    iput v13, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 717
    invoke-static/range {p1 .. p1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetVersionWithPath(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    if-nez p3, :cond_f

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bundle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 723
    :cond_4
    iput v12, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    .line 726
    invoke-static {v2}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadPath(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_6

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->bundledLocalDirPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 734
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->unZipFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 735
    iput v13, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 736
    invoke-static/range {p1 .. p1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetVersionWithPath(Ljava/lang/String;)I

    move-result v2

    iput v2, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    .line 737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    goto/16 :goto_0

    .line 739
    :cond_7
    iput v12, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    goto/16 :goto_0

    :cond_8
    if-ne v1, v12, :cond_9

    .line 744
    iput v13, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    goto/16 :goto_0

    .line 746
    :cond_9
    iget-boolean v1, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->isSyncInstallAsset:Z

    const/4 v14, 0x2

    if-eqz v1, :cond_c

    const/4 v3, 0x0

    .line 747
    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->getPackageType()I

    move-result v4

    const/4 v5, 0x1

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v1

    if-nez v1, :cond_a

    .line 749
    iput v13, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 750
    iget-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->getPackageType()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersion(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    .line 751
    iget-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->getPackageType()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageSupportedAspectRatio(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    goto/16 :goto_0

    :cond_a
    if-ne v1, v14, :cond_b

    .line 753
    iput v13, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 754
    iget-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->getPackageType()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersion(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    .line 755
    iget-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->getPackageType()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageSupportedAspectRatio(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    .line 756
    invoke-virtual {v11, v7}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersionFromAssetPackageFilePath(Ljava/lang/String;)I

    move-result v12

    .line 757
    iget v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    if-le v12, v1, :cond_f

    const/4 v3, 0x0

    .line 758
    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->getPackageType()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsAssetPackageManager;->upgradeAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v1

    if-nez v1, :cond_f

    .line 760
    iput v12, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    goto :goto_0

    .line 764
    :cond_b
    iput v12, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    goto :goto_0

    .line 767
    :cond_c
    iget-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->getPackageType()I

    move-result v2

    invoke-virtual {v11, v1, v2}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageStatus(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v14, :cond_e

    .line 768
    invoke-virtual {v11, v7}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersionFromAssetPackageFilePath(Ljava/lang/String;)I

    move-result v1

    .line 769
    iget-object v2, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_0

    .line 777
    :cond_d
    iget v2, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    if-le v1, v2, :cond_f

    const/4 v3, 0x0

    .line 778
    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->getPackageType()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsAssetPackageManager;->upgradeAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    goto :goto_0

    :cond_e
    const/4 v3, 0x0

    .line 782
    invoke-virtual {v8}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->getPackageType()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    :cond_f
    :goto_0
    const-string v1, ""

    .line 787
    iput-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    .line 788
    iput v9, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    const/16 v1, 0x1f

    .line 789
    iput v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    .line 790
    iget v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_10

    .line 791
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/meicam/sdk/NvsAssetPackageManager;->getVideoFxAssetPackageDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetDescription:Ljava/lang/String;

    :cond_10
    return-object v8
.end method

.method public onDestroy()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onDonwloadAssetFailed(Ljava/lang/Exception;ILjava/lang/String;)V
    .locals 1

    .line 1250
    new-instance p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;-><init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;)V

    .line 1251
    iput p2, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->curAssetType:I

    .line 1252
    iput-object p3, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->downloadId:Ljava/lang/String;

    const/16 p2, 0x7d5

    .line 1253
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->sendHandleMsg(Ljava/lang/Object;I)V

    return-void
.end method

.method public onDonwloadAssetProgress(IILjava/lang/String;)V
    .locals 2

    .line 1231
    new-instance v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;-><init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;)V

    .line 1232
    iput p2, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->curAssetType:I

    .line 1233
    iput-object p3, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->downloadId:Ljava/lang/String;

    .line 1234
    iput p1, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->downloadProgress:I

    const/16 p1, 0x7d3

    .line 1235
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->sendHandleMsg(Ljava/lang/Object;I)V

    return-void
.end method

.method public onDonwloadAssetSuccess(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1240
    invoke-virtual {p0, p3}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->setAssetInfoToSharedPreferences(I)V

    .line 1241
    new-instance p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;-><init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;)V

    .line 1242
    iput p3, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->curAssetType:I

    .line 1243
    iput-object p4, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->downloadId:Ljava/lang/String;

    .line 1244
    iput-object p2, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->downloadPath:Ljava/lang/String;

    const/16 p2, 0x7d4

    .line 1245
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->sendHandleMsg(Ljava/lang/Object;I)V

    return-void
.end method

.method public onFinishAssetPackageInstallation(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    if-eqz p4, :cond_1

    const/4 p2, 0x2

    if-ne p4, p2, :cond_0

    goto :goto_0

    .line 1264
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object p2

    const/4 p3, 0x6

    .line 1265
    iput p3, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    goto :goto_1

    .line 1259
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object p2

    const/4 p4, 0x4

    .line 1260
    iput p4, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 1261
    iget-object p4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->packageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    invoke-virtual {p4, p1, p3}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersion(Ljava/lang/String;I)I

    move-result p3

    iput p3, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    .line 1262
    iget-object p3, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->packageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    iget-object p4, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->getPackageType()I

    move-result v0

    invoke-virtual {p3, p4, v0}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageSupportedAspectRatio(Ljava/lang/String;I)I

    move-result p3

    iput p3, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    .line 1267
    :goto_1
    iget-object p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mManagerlistener:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;

    if-eqz p2, :cond_2

    .line 1268
    invoke-interface {p2, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;->onFinishAssetPackageInstallation(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onFinishAssetPackageUpgrading(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    if-eqz p4, :cond_1

    const/4 p2, 0x2

    if-ne p4, p2, :cond_0

    goto :goto_0

    .line 1279
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object p2

    const/4 p3, 0x6

    .line 1280
    iput p3, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    goto :goto_1

    .line 1274
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->findAsset(Ljava/lang/String;)Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    move-result-object p2

    const/4 p4, 0x4

    .line 1275
    iput p4, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->downloadStatus:I

    .line 1276
    iget-object p4, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->packageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    invoke-virtual {p4, p1, p3}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageVersion(Ljava/lang/String;I)I

    move-result p3

    iput p3, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->version:I

    .line 1277
    iget-object p3, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->packageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    iget-object p4, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->getPackageType()I

    move-result v0

    invoke-virtual {p3, p4, v0}, Lcom/meicam/sdk/NvsAssetPackageManager;->getAssetPackageSupportedAspectRatio(Ljava/lang/String;I)I

    move-result p3

    iput p3, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    .line 1282
    :goto_1
    iget-object p2, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mManagerlistener:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;

    if-eqz p2, :cond_2

    .line 1283
    invoke-interface {p2, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;->onFinishAssetPackageUpgrading(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onGetAssetListFailed(Ljava/io/IOException;I)V
    .locals 0

    .line 1225
    iget-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 p2, 0x7d2

    .line 1226
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onGetAssetListSuccess(Ljava/util/ArrayList;IZ)V
    .locals 2

    .line 1216
    new-instance v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;-><init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;)V

    .line 1217
    iput p2, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;->curAssetType:I

    .line 1218
    iput-object p1, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;->resultsArray:Ljava/util/ArrayList;

    .line 1219
    iput-boolean p3, v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;->hasNext:Z

    const/16 p1, 0x7d1

    .line 1220
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->sendHandleMsg(Ljava/lang/Object;I)V

    return-void
.end method

.method public searchLocalAssets(I)V
    .locals 1

    .line 500
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->getIsLocalAssetSearched(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->getAssetDownloadDir(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->searchAssetInLocalPath(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 506
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->setIsLocalAssetSearched(IZ)V

    return-void
.end method

.method public searchReservedAssets(ILjava/lang/String;)V
    .locals 0

    .line 514
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->searchAssetInBundlePath(ILjava/lang/String;)V

    return-void
.end method

.method public setAssetInfoToSharedPreferences(I)V
    .locals 7

    .line 798
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 799
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->assetDict:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 800
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 802
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 803
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    .line 804
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isUsable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 806
    :cond_1
    iget-object v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "coverUrl:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "categoryId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->categoryId:I

    .line 809
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "aspectRatio:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->aspectRatio:I

    .line 810
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "remotePackageSize:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->remotePackageSize:I

    .line 811
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "assetType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->assetType:I

    .line 812
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 806
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 819
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, -0x1

    invoke-static {v2}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "info_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 820
    invoke-direct {p0, v1, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->writeAssetDataToLocal(Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setCustomStickerInfoToSharedPreferences()V
    .locals 7

    .line 837
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 838
    iget-object v1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->customStickerArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;

    .line 839
    iget-object v3, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;->uuid:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "templateUuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;->templateUuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "imagePath:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;->imagePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "targetImagePath:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;->targetImagePath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "order:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvCustomStickerInfo;->order:I

    .line 843
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 839
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 851
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, -0x1

    invoke-static {v2}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getAssetDownloadPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/customStickerInfo.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 852
    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->writeAssetDataToLocal(Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method public setManagerlistener(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->mManagerlistener:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$NvAssetManagerListener;

    return-void
.end method
