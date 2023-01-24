.class public Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;
.super Ljava/lang/Object;
.source "GalleryLesafeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/lesafe/GalleryLesafeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LesafeEntry"
.end annotation


# instance fields
.field public bucketId:I

.field public isExist:Z

.field public isWhite:Z

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    invoke-static {p2}, Lcom/zui/gallery/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->name:Ljava/lang/String;

    .line 472
    iput p1, p0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->bucketId:I

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", bucketId = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GalleryLesafeUtils"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/gallery/lesafe/GalleryLesafeUtils;->PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->path:Ljava/lang/String;

    .line 463
    iput-object p2, p0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->name:Ljava/lang/String;

    .line 464
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->bucketId:I

    .line 466
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "path = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bucketId = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->bucketId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GalleryLesafeUtils"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 485
    instance-of v0, p1, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 487
    :cond_0
    check-cast p1, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;

    .line 488
    iget v0, p0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->bucketId:I

    iget p1, p1, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->bucketId:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 480
    iget v0, p0, Lcom/zui/gallery/lesafe/GalleryLesafeUtils$LesafeEntry;->bucketId:I

    return v0
.end method
