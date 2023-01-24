.class public Lcom/zui/gallery/data/MicroVideoInfo;
.super Ljava/lang/Object;
.source "MicroVideoInfo.java"


# instance fields
.field public final fileSize:J

.field public final microVideoOffset:J

.field public final rotation:I

.field public final videoHeight:I

.field public final videoPath:Ljava/lang/String;

.field public final videoWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJIII)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/zui/gallery/data/MicroVideoInfo;->videoPath:Ljava/lang/String;

    .line 14
    iput-wide p2, p0, Lcom/zui/gallery/data/MicroVideoInfo;->fileSize:J

    .line 15
    iput-wide p4, p0, Lcom/zui/gallery/data/MicroVideoInfo;->microVideoOffset:J

    .line 16
    iput p6, p0, Lcom/zui/gallery/data/MicroVideoInfo;->videoWidth:I

    .line 17
    iput p7, p0, Lcom/zui/gallery/data/MicroVideoInfo;->videoHeight:I

    .line 18
    iput p8, p0, Lcom/zui/gallery/data/MicroVideoInfo;->rotation:I

    return-void
.end method


# virtual methods
.method public isSameVideo(Lcom/zui/gallery/data/MicroVideoInfo;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 26
    iget-object v2, p0, Lcom/zui/gallery/data/MicroVideoInfo;->videoPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/zui/gallery/data/MicroVideoInfo;->videoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/zui/gallery/data/MicroVideoInfo;->microVideoOffset:J

    iget-wide v4, p1, Lcom/zui/gallery/data/MicroVideoInfo;->microVideoOffset:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/zui/gallery/data/MicroVideoInfo;->fileSize:J

    iget-wide v4, p1, Lcom/zui/gallery/data/MicroVideoInfo;->fileSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Lcom/zui/gallery/data/MicroVideoInfo;->rotation:I

    iget v3, p1, Lcom/zui/gallery/data/MicroVideoInfo;->rotation:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/zui/gallery/data/MicroVideoInfo;->videoWidth:I

    iget v3, p1, Lcom/zui/gallery/data/MicroVideoInfo;->videoWidth:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/zui/gallery/data/MicroVideoInfo;->videoHeight:I

    iget p1, p1, Lcom/zui/gallery/data/MicroVideoInfo;->videoHeight:I

    if-ne v2, p1, :cond_1

    return v0

    :cond_1
    return v1
.end method
