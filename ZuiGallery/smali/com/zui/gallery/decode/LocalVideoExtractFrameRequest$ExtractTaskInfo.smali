.class Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;
.super Ljava/lang/Object;
.source "LocalVideoExtractFrameRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractTaskInfo"
.end annotation


# instance fields
.field extractCount:I

.field extractStartTime:I

.field preFrameSecond:F

.field startIndex:I


# direct methods
.method public constructor <init>(IIIF)V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput p1, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;->extractStartTime:I

    .line 293
    iput p2, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;->extractCount:I

    .line 294
    iput p3, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;->startIndex:I

    .line 295
    iput p4, p0, Lcom/zui/gallery/decode/LocalVideoExtractFrameRequest$ExtractTaskInfo;->preFrameSecond:F

    return-void
.end method
