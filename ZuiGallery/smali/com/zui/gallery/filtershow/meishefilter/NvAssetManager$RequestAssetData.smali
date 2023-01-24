.class Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;
.super Ljava/lang/Object;
.source "NvAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestAssetData"
.end annotation


# instance fields
.field public curAssetType:I

.field public hasNext:Z

.field public resultsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$1;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$RequestAssetData;-><init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V

    return-void
.end method
