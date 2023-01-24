.class public Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetResponseInfo;
.super Ljava/lang/Object;
.source "NvHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NvAssetResponseInfo"
.end annotation


# instance fields
.field private errNo:I

.field private hasNext:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrNo()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetResponseInfo;->errNo:I

    return v0
.end method

.method public getHasNext()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetResponseInfo;->hasNext:Z

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetResponseInfo;->list:Ljava/util/ArrayList;

    return-object v0
.end method
