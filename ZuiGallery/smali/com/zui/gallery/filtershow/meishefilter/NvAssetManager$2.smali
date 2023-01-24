.class Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$2;
.super Ljava/lang/Object;
.source "NvAssetManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->getUsableAssets(III)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;


# direct methods
.method constructor <init>(Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$2;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zui/gallery/filtershow/meishefilter/NvAsset;Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)I
    .locals 2

    .line 428
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->bundledLocalDirPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    .line 429
    :goto_0
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->isReserved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->bundledLocalDirPath:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->localDirPath:Ljava/lang/String;

    .line 430
    :goto_1
    invoke-static {p1}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileModifiedTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 431
    invoke-static {p2}, Lcom/zui/gallery/filtershow/meishefilter/PathUtils;->getFileModifiedTime(Ljava/lang/String;)J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    :goto_2
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 425
    check-cast p1, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    check-cast p2, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager$2;->compare(Lcom/zui/gallery/filtershow/meishefilter/NvAsset;Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)I

    move-result p1

    return p1
.end method
