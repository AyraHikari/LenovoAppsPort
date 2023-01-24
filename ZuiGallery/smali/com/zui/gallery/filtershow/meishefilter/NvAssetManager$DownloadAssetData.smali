.class Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;
.super Ljava/lang/Object;
.source "NvAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAssetData"
.end annotation


# instance fields
.field public curAssetType:I

.field public downloadId:Ljava/lang/String;

.field public downloadPath:Ljava/lang/String;

.field public downloadProgress:I

.field final synthetic this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$DownloadAssetData;-><init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V

    return-void
.end method
