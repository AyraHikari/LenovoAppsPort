.class Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;
.super Ljava/lang/Object;
.source "LocalVideoThumbnailDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractTaskInfo"
.end annotation


# instance fields
.field extractCount:I

.field extractStartTime:J

.field preFrameSecond:F

.field startIndex:I


# direct methods
.method public constructor <init>(JIIF)V
    .locals 0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-wide p1, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;->extractStartTime:J

    .line 184
    iput p3, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;->extractCount:I

    .line 185
    iput p4, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;->startIndex:I

    .line 186
    iput p5, p0, Lcom/zui/gallery/decode/LocalVideoThumbnailDecoder$ExtractTaskInfo;->preFrameSecond:F

    return-void
.end method
