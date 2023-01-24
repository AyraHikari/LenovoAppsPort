.class public Lcom/zui/gallery/data/BucketHelper$BucketEntry;
.super Ljava/lang/Object;
.source "BucketHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/BucketHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketEntry"
.end annotation


# instance fields
.field public appType:I

.field public bucketId:I

.field public bucketName:Ljava/lang/String;

.field public burstID:Ljava/lang/String;

.field public coverItemId:I

.field public dateTaken:J

.field public itemCount:I

.field public path:Ljava/lang/String;

.field public systemId:Ljava/lang/String;

.field public white:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 801
    iput-boolean v0, p0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->white:Z

    const/4 v0, -0x1

    .line 802
    iput v0, p0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->appType:I

    .line 807
    iput p1, p0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    .line 808
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 818
    instance-of v0, p1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 820
    :cond_0
    check-cast p1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    .line 821
    iget v0, p0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    iget p1, p1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 813
    iget v0, p0, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->bucketId:I

    return v0
.end method
