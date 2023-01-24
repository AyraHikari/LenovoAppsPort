.class public Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;
.super Ljava/lang/Object;
.source "NvHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NvAssetInfo"
.end annotation


# instance fields
.field private category:I

.field private coverUrl:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private minAppVersion:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageSize:I

.field private packageUrl:Ljava/lang/String;

.field private supportedAspectRatio:I

.field private tags:Ljava/lang/String;

.field final synthetic this$0:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;

.field private version:I


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->this$0:Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->category:I

    return v0
.end method

.method public getCoverUrl()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->coverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMinAppVersion()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->minAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageSize()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->packageSize:I

    return v0
.end method

.method public getPackageUrl()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->packageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedAspectRatio()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->supportedAspectRatio:I

    return v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/zui/gallery/filtershow/meishefilter/NvHttpRequest$NvAssetInfo;->version:I

    return v0
.end method
