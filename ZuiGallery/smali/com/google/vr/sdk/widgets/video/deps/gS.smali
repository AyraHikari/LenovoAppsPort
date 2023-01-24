.class public Lcom/google/vr/sdk/widgets/video/deps/gS;
.super Lcom/google/vr/sdk/widgets/video/deps/bT;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/gS$b;,
        Lcom/google/vr/sdk/widgets/video/deps/gS$a;
    }
.end annotation


# static fields
.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MAX_PENDING_OUTPUT_STREAM_OFFSET_COUNT:I = 0xa

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"


# instance fields
.field private final allowedJoiningTimeMs:J

.field private codecMaxValues:Lcom/google/vr/sdk/widgets/video/deps/gS$a;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private currentHeight:I

.field private currentPixelWidthHeightRatio:F

.field private currentUnappliedRotationDegrees:I

.field private currentWidth:I

.field private final deviceNeedsAutoFrcWorkaround:Z

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private dummySurface:Landroid/view/Surface;

.field private final eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

.field private final frameReleaseTimeHelper:Lcom/google/vr/sdk/widgets/video/deps/gT;

.field private joiningDeadlineMs:J

.field private final maxDroppedFramesToNotify:I

.field private outputStreamOffsetUs:J

.field private pendingOutputStreamOffsetCount:I

.field private final pendingOutputStreamOffsetsUs:[J

.field private pendingPixelWidthHeightRatio:F

.field private pendingRotationDegrees:I

.field private renderedFirstFrame:Z

.field private reportedHeight:I

.field private reportedPixelWidthHeightRatio:F

.field private reportedUnappliedRotationDegrees:I

.field private reportedWidth:I

.field private scalingMode:I

.field private streamFormats:[Lcom/google/vr/sdk/widgets/video/deps/m;

.field private surface:Landroid/view/Surface;

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Lcom/google/vr/sdk/widgets/video/deps/gS$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 425
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/gS;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/bU;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gS;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/bU;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/bU;J)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/gS;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/bU;JLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/bU;JLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;I)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 5
    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/gS;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/bU;JLcom/google/vr/sdk/widgets/video/deps/ac;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/bU;JLcom/google/vr/sdk/widgets/video/deps/ac;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/bU;",
            "J",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/gU;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0, p2, p5, p6}, Lcom/google/vr/sdk/widgets/video/deps/bT;-><init>(ILcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;Z)V

    .line 8
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->allowedJoiningTimeMs:J

    .line 9
    iput p9, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->maxDroppedFramesToNotify:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->context:Landroid/content/Context;

    .line 11
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/gT;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/gT;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->frameReleaseTimeHelper:Lcom/google/vr/sdk/widgets/video/deps/gT;

    .line 12
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    invoke-direct {p1, p7, p8}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    .line 13
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gS;->deviceNeedsAutoFrcWorkaround()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->deviceNeedsAutoFrcWorkaround:Z

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 14
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetsUs:[J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->outputStreamOffsetUs:J

    .line 16
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->joiningDeadlineMs:J

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentWidth:I

    .line 18
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentHeight:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 19
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentPixelWidthHeightRatio:F

    .line 20
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingPixelWidthHeightRatio:F

    const/4 p1, 0x1

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->scalingMode:I

    .line 22
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->clearReportedVideoSize()V

    return-void
.end method

.method private static areAdaptationCompatible(ZLcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/m;)Z
    .locals 2

    .line 420
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getRotationDegrees(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v0

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getRotationDegrees(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v1

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_0

    iget p0, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v0, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    if-ne p0, v0, :cond_1

    iget p0, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget p1, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clearRenderedFirstFrame()V
    .locals 3

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderedFirstFrame:Z

    .line 289
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunneling:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/gS$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gS$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gS;Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/gS$1;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunnelingOnFrameRenderedListener:Lcom/google/vr/sdk/widgets/video/deps/gS$b;

    :cond_0
    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 2

    const/4 v0, -0x1

    .line 301
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedWidth:I

    .line 302
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedHeight:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 303
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedPixelWidthHeightRatio:F

    .line 304
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedUnappliedRotationDegrees:I

    return-void
.end method

.method private static codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 417
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string v1, "deb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string v1, "flo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "OMX.qcom.video.decoder.avc"

    .line 418
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .locals 2

    const-string/jumbo v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 326
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 327
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static deviceNeedsAutoFrcWorkaround()Z
    .locals 2

    .line 416
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string v1, "foster"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->c:Ljava/lang/String;

    const-string v1, "NVIDIA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getCodecMaxSize(Lcom/google/vr/sdk/widgets/video/deps/bS;Lcom/google/vr/sdk/widgets/video/deps/m;)Landroid/graphics/Point;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/bV$b;
        }
    .end annotation

    .line 363
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 364
    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    :goto_1
    if-eqz v0, :cond_2

    .line 365
    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    goto :goto_2

    :cond_2
    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    :goto_2
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 367
    sget-object v5, Lcom/google/vr/sdk/widgets/video/deps/gS;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    array-length v6, v5

    :goto_3
    const/4 v7, 0x0

    if-ge v2, v6, :cond_a

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float/2addr v9, v4

    float-to-int v9, v9

    if-le v8, v1, :cond_a

    if-gt v9, v3, :cond_3

    goto :goto_8

    .line 371
    :cond_3
    sget v7, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v10, 0x15

    if-lt v7, v10, :cond_6

    if-eqz v0, :cond_4

    move v7, v9

    goto :goto_4

    :cond_4
    move v7, v8

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v8, v9

    .line 374
    :goto_5
    invoke-virtual {p0, v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/bS;->a(II)Landroid/graphics/Point;

    move-result-object v7

    .line 375
    iget v8, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    .line 376
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/bS;->a(IID)Z

    move-result v8

    if-eqz v8, :cond_9

    return-object v7

    :cond_6
    const/16 v7, 0x10

    .line 379
    invoke-static {v8, v7}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(II)I

    move-result v8

    mul-int/2addr v8, v7

    .line 380
    invoke-static {v9, v7}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(II)I

    move-result v9

    mul-int/2addr v9, v7

    mul-int v7, v8, v9

    .line 381
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/bV;->b()I

    move-result v10

    if-gt v7, v10, :cond_9

    .line 382
    new-instance p0, Landroid/graphics/Point;

    if-eqz v0, :cond_7

    move p1, v9

    goto :goto_6

    :cond_7
    move p1, v8

    :goto_6
    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    move v8, v9

    .line 383
    :goto_7
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_8
    return-object v7
.end method

.method private static getMaxInputSize(Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 4

    .line 387
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 389
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 391
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    :cond_0
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->i:I

    add-int/2addr p0, v2

    return p0

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    invoke-static {v0, v1, p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getMaxInputSize(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private static getMaxInputSize(Ljava/lang/String;II)I
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    .line 397
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v5

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "video/avc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v6

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "video/mp4v-es"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "video/hevc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "video/3gpp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v0

    :goto_1
    if-eqz p0, :cond_5

    if-eq p0, v3, :cond_5

    if-eq p0, v6, :cond_3

    if-eq p0, v5, :cond_5

    if-eq p0, v4, :cond_2

    if-eq p0, v2, :cond_2

    return v0

    :cond_2
    mul-int/2addr p1, p2

    goto :goto_3

    .line 401
    :cond_3
    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/gM;->d:Ljava/lang/String;

    const-string v1, "BRAVIA 4K 2015"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    const/16 p0, 0x10

    .line 403
    invoke-static {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(II)I

    move-result p1

    invoke-static {p2, p0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(II)I

    move-result p2

    mul-int/2addr p1, p2

    mul-int/2addr p1, p0

    mul-int/2addr p1, p0

    goto :goto_2

    :cond_5
    mul-int/2addr p1, p2

    :goto_2
    move v4, v6

    :goto_3
    mul-int/2addr p1, v5

    mul-int/2addr v4, v6

    .line 413
    div-int/2addr p1, v4

    return p1

    :cond_6
    :goto_4
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getPixelWidthHeightRatio(Lcom/google/vr/sdk/widgets/video/deps/m;)F
    .locals 2

    .line 423
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->p:F

    :goto_0
    return p0
.end method

.method private static getRotationDegrees(Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 2

    .line 424
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->o:I

    :goto_0
    return p0
.end method

.method private static isBufferLate(J)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    .line 316
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->droppedFrames:I

    if-lez v0, :cond_0

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 318
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    .line 319
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->droppedFrames:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(IJ)V

    const/4 v2, 0x0

    .line 320
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->droppedFrames:I

    .line 321
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged()V
    .locals 5

    .line 306
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentHeight:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedWidth:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedHeight:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentHeight:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedUnappliedRotationDegrees:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentUnappliedRotationDegrees:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedPixelWidthHeightRatio:F

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentPixelWidthHeightRatio:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentWidth:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentHeight:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentUnappliedRotationDegrees:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(IIIF)V

    .line 308
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentWidth:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedWidth:I

    .line 309
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentHeight:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedHeight:I

    .line 310
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentUnappliedRotationDegrees:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedUnappliedRotationDegrees:I

    .line 311
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentPixelWidthHeightRatio:F

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedPixelWidthHeightRatio:F

    :cond_2
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 2

    .line 298
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderedFirstFrame:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 5

    .line 313
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedHeight:I

    if-eq v0, v1, :cond_1

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedWidth:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedHeight:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedUnappliedRotationDegrees:I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->reportedPixelWidthHeightRatio:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(IIIF)V

    :cond_1
    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 4

    .line 285
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 286
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->joiningDeadlineMs:J

    return-void
.end method

.method private static setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .locals 0

    .line 324
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private setSurface(Landroid/view/Surface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    if-nez p1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getCodecInfo()Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/bS;->e:Z

    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gS;->shouldUseDummySurface(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->context:Landroid/content/Context;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/bS;->e:Z

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gQ;->a(Landroid/content/Context;Z)Lcom/google/vr/sdk/widgets/video/deps/gQ;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    .line 129
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    if-eq v0, p1, :cond_6

    .line 130
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    .line 131
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_4

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getCodec()Landroid/media/MediaCodec;

    move-result-object v1

    .line 134
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v3, :cond_3

    .line 135
    invoke-static {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/gS;->setOutputSurfaceV23(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->releaseCodec()V

    .line 137
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->maybeInitCodec()V

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 138
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    if-eq p1, v1, :cond_5

    .line 139
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->maybeRenotifyVideoSizeChanged()V

    .line 140
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->clearRenderedFirstFrame()V

    if-ne v0, v2, :cond_7

    .line 142
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->setJoiningDeadlineMs()V

    goto :goto_2

    .line 143
    :cond_5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->clearReportedVideoSize()V

    .line 144
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->clearRenderedFirstFrame()V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 145
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    if-eq p1, v0, :cond_7

    .line 146
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->maybeRenotifyVideoSizeChanged()V

    .line 147
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->maybeRenotifyRenderedFirstFrame()V

    :cond_7
    :goto_2
    return-void
.end method

.method private static setVideoScalingMode(Landroid/media/MediaCodec;I)V
    .locals 0

    .line 414
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method private shouldUseDummySurface(Z)Z
    .locals 2

    .line 282
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunneling:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->context:Landroid/content/Context;

    .line 283
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gQ;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected canReconfigureCodec(Landroid/media/MediaCodec;ZLcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/m;)Z
    .locals 0

    .line 204
    invoke-static {p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/gS;->areAdaptationCompatible(ZLcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p4, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->codecMaxValues:Lcom/google/vr/sdk/widgets/video/deps/gS$a;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gS$a;->a:I

    if-gt p1, p2, :cond_0

    iget p1, p4, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->codecMaxValues:Lcom/google/vr/sdk/widgets/video/deps/gS$a;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gS$a;->b:I

    if-gt p1, p2, :cond_0

    .line 205
    invoke-static {p4}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getMaxInputSize(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result p1

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->codecMaxValues:Lcom/google/vr/sdk/widgets/video/deps/gS$a;

    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gS$a;->c:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected configureCodec(Lcom/google/vr/sdk/widgets/video/deps/bS;Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/m;Landroid/media/MediaCrypto;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/bV$b;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->streamFormats:[Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p0, p1, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getCodecMaxValues(Lcom/google/vr/sdk/widgets/video/deps/bS;Lcom/google/vr/sdk/widgets/video/deps/m;[Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/gS$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->codecMaxValues:Lcom/google/vr/sdk/widgets/video/deps/gS$a;

    .line 151
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->deviceNeedsAutoFrcWorkaround:Z

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunnelingAudioSessionId:I

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getMediaFormat(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/gS$a;ZI)Landroid/media/MediaFormat;

    move-result-object p3

    .line 152
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 153
    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/bS;->e:Z

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->shouldUseDummySurface(Z)Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 154
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->context:Landroid/content/Context;

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bS;->e:Z

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gQ;->a(Landroid/content/Context;Z)Lcom/google/vr/sdk/widgets/video/deps/gQ;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 158
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_2

    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunneling:Z

    if-eqz p1, :cond_2

    .line 159
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gS$b;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gS$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gS;Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/gS$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunnelingOnFrameRenderedListener:Lcom/google/vr/sdk/widgets/video/deps/gS$b;

    :cond_2
    return-void
.end method

.method protected dropOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .locals 0

    const-string p3, "dropVideoBuffer"

    .line 256
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 257
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 258
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    .line 259
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->g:I

    .line 260
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->droppedFrames:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->droppedFrames:I

    .line 261
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->consecutiveDroppedFrameCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->consecutiveDroppedFrameCount:I

    .line 262
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->consecutiveDroppedFrameCount:I

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget p3, p3, Lcom/google/vr/sdk/widgets/video/deps/S;->h:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->h:I

    .line 263
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->droppedFrames:I

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->maxDroppedFramesToNotify:I

    if-ne p1, p2, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method

.method protected getCodecMaxValues(Lcom/google/vr/sdk/widgets/video/deps/bS;Lcom/google/vr/sdk/widgets/video/deps/m;[Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/gS$a;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/bV$b;
        }
    .end annotation

    .line 329
    iget v0, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    .line 330
    iget v1, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    .line 331
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getMaxInputSize(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v2

    .line 332
    array-length v3, p3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 333
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gS$a;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gS$a;-><init>(III)V

    return-object p1

    .line 335
    :cond_0
    array-length v3, p3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v3, :cond_4

    aget-object v8, p3, v6

    .line 336
    iget-boolean v9, p1, Lcom/google/vr/sdk/widgets/video/deps/bS;->c:Z

    invoke-static {v9, p2, v8}, Lcom/google/vr/sdk/widgets/video/deps/gS;->areAdaptationCompatible(ZLcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/m;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 337
    iget v9, v8, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    iget v9, v8, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-ne v9, v10, :cond_1

    goto :goto_1

    :cond_1
    move v9, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v9, v4

    :goto_2
    or-int/2addr v7, v9

    .line 338
    iget v9, v8, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 339
    iget v9, v8, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 340
    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getMaxInputSize(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    const/16 p3, 0x42

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Resolutions unknown. Codec max resolution: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "x"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaCodecVideoRenderer"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getCodecMaxSize(Lcom/google/vr/sdk/widgets/video/deps/bS;Lcom/google/vr/sdk/widgets/video/deps/m;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 346
    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 347
    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 348
    iget-object p1, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 349
    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getMaxInputSize(Ljava/lang/String;II)I

    move-result p1

    .line 350
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 p1, 0x39

    .line 351
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Codec max resolution adjusted to: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/gS$a;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gS$a;-><init>(III)V

    return-object p1
.end method

.method protected getMediaFormat(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/gS$a;ZI)Landroid/media/MediaFormat;
    .locals 2

    .line 353
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/m;->b()Landroid/media/MediaFormat;

    move-result-object p1

    .line 354
    iget v0, p2, Lcom/google/vr/sdk/widgets/video/deps/gS$a;->a:I

    const-string v1, "max-width"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 355
    iget v0, p2, Lcom/google/vr/sdk/widgets/video/deps/gS$a;->b:I

    const-string v1, "max-height"

    invoke-virtual {p1, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 356
    iget v0, p2, Lcom/google/vr/sdk/widgets/video/deps/gS$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 357
    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/gS$a;->c:I

    const-string v0, "max-input-size"

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x0

    const-string p3, "auto-frc"

    .line 359
    invoke-virtual {p1, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    if-eqz p4, :cond_2

    .line 361
    invoke-static {p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/gS;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    :cond_2
    return-object p1
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 113
    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/gS;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 115
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->scalingMode:I

    .line 116
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getCodec()Landroid/media/MediaCodec;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->scalingMode:I

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gS;->setVideoScalingMode(Landroid/media/MediaCodec;I)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bT;->handleMessage(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isReady()Z
    .locals 9

    .line 76
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderedFirstFrame:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    if-eq v4, v0, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getCodec()Landroid/media/MediaCodec;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunneling:Z

    if-eqz v0, :cond_2

    .line 78
    :cond_1
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->joiningDeadlineMs:J

    return v1

    .line 80
    :cond_2
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->joiningDeadlineMs:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_3

    return v4

    .line 82
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_4

    return v1

    .line 84
    :cond_4
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->joiningDeadlineMs:J

    return v4
.end method

.method maybeNotifyRenderedFirstFrame()V
    .locals 2

    .line 294
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderedFirstFrame:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 295
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderedFirstFrame:Z

    .line 296
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 173
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(Ljava/lang/String;JJ)V

    .line 174
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gS;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->codecNeedsSetOutputSurfaceWorkaround:Z

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentWidth:I

    .line 95
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentHeight:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 96
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentPixelWidthHeightRatio:F

    .line 97
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingPixelWidthHeightRatio:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->outputStreamOffsetUs:J

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetCount:I

    .line 100
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->clearReportedVideoSize()V

    .line 101
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->clearRenderedFirstFrame()V

    .line 102
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->frameReleaseTimeHelper:Lcom/google/vr/sdk/widgets/video/deps/gT;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gT;->b()V

    const/4 v1, 0x0

    .line 103
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunnelingOnFrameRenderedListener:Lcom/google/vr/sdk/widgets/video/deps/gS$b;

    .line 104
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunneling:Z

    .line 105
    :try_start_0
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 107
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    return-void

    :catchall_0
    move-exception v0

    .line 109
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 110
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getConfiguration()Lcom/google/vr/sdk/widgets/video/deps/w;

    move-result-object p1

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/w;->b:I

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunnelingAudioSessionId:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunneling:Z

    .line 54
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    .line 55
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->frameReleaseTimeHelper:Lcom/google/vr/sdk/widgets/video/deps/gT;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gT;->a()V

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 176
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 177
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->eventDispatcher:Lcom/google/vr/sdk/widgets/video/deps/gU$a;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gU$a;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 178
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getPixelWidthHeightRatio(Lcom/google/vr/sdk/widgets/video/deps/m;)F

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingPixelWidthHeightRatio:F

    .line 179
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getRotationDegrees(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingRotationDegrees:I

    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6

    const-string v0, "crop-right"

    .line 184
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "crop-top"

    const-string v3, "crop-bottom"

    const-string v4, "crop-left"

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v0, v5

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "width"

    .line 189
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentWidth:I

    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v5

    goto :goto_2

    :cond_2
    const-string v0, "height"

    .line 192
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentHeight:I

    .line 193
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingPixelWidthHeightRatio:F

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentPixelWidthHeightRatio:F

    .line 194
    sget p2, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_4

    .line 195
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingRotationDegrees:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_3

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_5

    .line 196
    :cond_3
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentWidth:I

    .line 197
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentHeight:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentWidth:I

    .line 198
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 199
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentPixelWidthHeightRatio:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentPixelWidthHeightRatio:F

    goto :goto_3

    .line 201
    :cond_4
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingRotationDegrees:I

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->currentUnappliedRotationDegrees:I

    .line 202
    :cond_5
    :goto_3
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->scalingMode:I

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gS;->setVideoScalingMode(Landroid/media/MediaCodec;I)V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onPositionReset(JZ)V

    .line 67
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->clearRenderedFirstFrame()V

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->consecutiveDroppedFrameCount:I

    .line 69
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetCount:I

    if-eqz p2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetsUs:[J

    add-int/lit8 p2, p2, -0x1

    aget-wide v0, v0, p2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->outputStreamOffsetUs:J

    .line 71
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetCount:I

    :cond_0
    if-eqz p3, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->setJoiningDeadlineMs()V

    goto :goto_0

    :cond_1
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->joiningDeadlineMs:J

    :goto_0
    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/vr/sdk/widgets/video/deps/T;)V
    .locals 1

    .line 181
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->tunneling:Z

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->maybeNotifyRenderedFirstFrame()V

    :cond_0
    return-void
.end method

.method protected onStarted()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onStarted()V

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->droppedFrames:I

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->droppedFrameAccumulationStartTimeMs:J

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 90
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->joiningDeadlineMs:J

    .line 91
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->maybeNotifyDroppedFrames()V

    .line 92
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onStopped()V

    return-void
.end method

.method protected onStreamChanged([Lcom/google/vr/sdk/widgets/video/deps/m;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->streamFormats:[Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 58
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->outputStreamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 59
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->outputStreamOffsetUs:J

    goto :goto_1

    .line 60
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetCount:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetsUs:[J

    array-length v2, v1

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 61
    aget-wide v0, v1, v0

    const/16 v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Too many stream changes, so dropping offset: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaCodecVideoRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 62
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetCount:I

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetsUs:[J

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetCount:I

    add-int/lit8 v1, v1, -0x1

    aput-wide p2, v0, v1

    .line 64
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onStreamChanged([Lcom/google/vr/sdk/widgets/video/deps/m;J)V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 19

    move-object/from16 v7, p0

    move-wide/from16 v0, p3

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-wide/from16 v4, p9

    .line 207
    :goto_0
    iget v6, v7, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetCount:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_0

    iget-object v10, v7, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetsUs:[J

    aget-wide v11, v10, v8

    cmp-long v11, v4, v11

    if-ltz v11, :cond_0

    .line 208
    aget-wide v11, v10, v8

    iput-wide v11, v7, Lcom/google/vr/sdk/widgets/video/deps/gS;->outputStreamOffsetUs:J

    add-int/lit8 v6, v6, -0x1

    .line 209
    iput v6, v7, Lcom/google/vr/sdk/widgets/video/deps/gS;->pendingOutputStreamOffsetCount:I

    .line 210
    invoke-static {v10, v9, v10, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 211
    :cond_0
    iget-wide v10, v7, Lcom/google/vr/sdk/widgets/video/deps/gS;->outputStreamOffsetUs:J

    sub-long v10, v4, v10

    if-eqz p11, :cond_1

    .line 213
    invoke-virtual {v7, v2, v3, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/gS;->skipOutputBuffer(Landroid/media/MediaCodec;IJ)V

    return v9

    :cond_1
    sub-long v12, v4, p1

    .line 216
    iget-object v6, v7, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    iget-object v14, v7, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    if-ne v6, v14, :cond_3

    .line 217
    invoke-static {v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/gS;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {v7, v2, v3, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/gS;->skipOutputBuffer(Landroid/media/MediaCodec;IJ)V

    return v9

    :cond_2
    return v8

    .line 221
    :cond_3
    iget-boolean v6, v7, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderedFirstFrame:Z

    const/16 v14, 0x15

    if-nez v6, :cond_5

    .line 222
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    if-lt v0, v14, :cond_4

    .line 223
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v10

    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    goto :goto_1

    .line 224
    :cond_4
    invoke-virtual {v7, v2, v3, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    :goto_1
    return v9

    .line 226
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->getState()I

    move-result v6

    const/4 v15, 0x2

    if-eq v6, v15, :cond_6

    return v8

    .line 228
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    sub-long/2addr v15, v0

    sub-long/2addr v12, v15

    .line 230
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    mul-long v12, v12, v17

    add-long/2addr v12, v15

    .line 232
    iget-object v6, v7, Lcom/google/vr/sdk/widgets/video/deps/gS;->frameReleaseTimeHelper:Lcom/google/vr/sdk/widgets/video/deps/gT;

    invoke-virtual {v6, v4, v5, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/gT;->a(JJ)J

    move-result-wide v5

    sub-long v12, v5, v15

    .line 233
    div-long v12, v12, v17

    .line 234
    invoke-virtual {v7, v12, v13, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gS;->shouldDropOutputBuffer(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 235
    invoke-virtual {v7, v2, v3, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/gS;->dropOutputBuffer(Landroid/media/MediaCodec;IJ)V

    return v9

    .line 237
    :cond_7
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    if-lt v0, v14, :cond_8

    const-wide/32 v0, 0xc350

    cmp-long v0, v12, v0

    if-gez v0, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p7

    move-wide v3, v10

    .line 239
    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V

    return v9

    :cond_8
    const-wide/16 v0, 0x7530

    cmp-long v0, v12, v0

    if-gez v0, :cond_a

    const-wide/16 v0, 0x2af8

    cmp-long v0, v12, v0

    if-lez v0, :cond_9

    const-wide/16 v0, 0x2710

    sub-long/2addr v12, v0

    .line 243
    :try_start_0
    div-long v12, v12, v17

    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 246
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 247
    :cond_9
    :goto_2
    invoke-virtual {v7, v2, v3, v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/gS;->renderOutputBuffer(Landroid/media/MediaCodec;IJ)V

    return v9

    :cond_a
    return v8
.end method

.method protected releaseCodec()V
    .locals 4

    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 163
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    if-ne v2, v1, :cond_0

    .line 164
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 166
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 167
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    .line 168
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    if-ne v3, v2, :cond_2

    .line 169
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 171
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->dummySurface:Landroid/view/Surface;

    :cond_3
    throw v1
.end method

.method protected renderOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 267
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 268
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 269
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    .line 270
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->e:I

    const/4 p1, 0x0

    .line 271
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->consecutiveDroppedFrameCount:I

    .line 272
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected renderOutputBufferV21(Landroid/media/MediaCodec;IJJ)V
    .locals 0

    .line 274
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->maybeNotifyVideoSizeChanged()V

    const-string p3, "releaseOutputBuffer"

    .line 275
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 277
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    .line 278
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->e:I

    const/4 p1, 0x0

    .line 279
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->consecutiveDroppedFrameCount:I

    .line 280
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gS;->maybeNotifyRenderedFirstFrame()V

    return-void
.end method

.method protected shouldDropOutputBuffer(JJ)Z
    .locals 0

    .line 250
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gS;->isBufferLate(J)Z

    move-result p1

    return p1
.end method

.method protected shouldInitCodec(Lcom/google/vr/sdk/widgets/video/deps/bS;)Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->surface:Landroid/view/Surface;

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bS;->e:Z

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gS;->shouldUseDummySurface(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected skipOutputBuffer(Landroid/media/MediaCodec;IJ)V
    .locals 0

    const-string/jumbo p3, "skipVideoBuffer"

    .line 251
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 252
    invoke-virtual {p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 253
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    .line 254
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gS;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->f:I

    return-void
.end method

.method protected supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/bU;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/bV$b;
        }
    .end annotation

    .line 24
    iget-object v0, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 28
    :cond_0
    iget-object v1, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    if-eqz v1, :cond_1

    move v3, v2

    move v4, v3

    .line 30
    :goto_0
    iget v5, v1, Lcom/google/vr/sdk/widgets/video/deps/aa;->b:I

    if-ge v3, v5, :cond_2

    .line 31
    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/aa;->a(I)Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    move-result-object v5

    iget-boolean v5, v5, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->c:Z

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    .line 33
    :cond_2
    invoke-interface {p1, v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/bU;->a(Ljava/lang/String;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    .line 35
    invoke-interface {p1, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/bU;->a(Ljava/lang/String;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    return v5

    .line 38
    :cond_4
    invoke-static {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gS;->supportsFormatDrm(Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/aa;)Z

    move-result p1

    if-nez p1, :cond_5

    return v5

    .line 40
    :cond_5
    iget-object p1, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/bS;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 41
    iget p2, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    if-lez p2, :cond_9

    iget p2, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    if-lez p2, :cond_9

    .line 42
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_6

    .line 43
    iget p1, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget p2, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget p3, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->n:F

    float-to-double v0, p3

    invoke-virtual {v3, p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bS;->a(IID)Z

    move-result p1

    goto :goto_3

    .line 44
    :cond_6
    iget p1, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget p2, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    mul-int/2addr p1, p2

    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/bV;->b()I

    move-result p2

    if-gt p1, p2, :cond_7

    goto :goto_2

    :cond_7
    move v6, v2

    :goto_2
    if-nez v6, :cond_8

    .line 46
    iget p1, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget p2, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    sget-object p3, Lcom/google/vr/sdk/widgets/video/deps/gM;->e:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "FalseCheck [legacyFrameSize, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecVideoRenderer"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move p1, v6

    .line 47
    :cond_9
    :goto_3
    iget-boolean p2, v3, Lcom/google/vr/sdk/widgets/video/deps/bS;->c:Z

    if-eqz p2, :cond_a

    const/16 p2, 0x10

    goto :goto_4

    :cond_a
    const/16 p2, 0x8

    .line 48
    :goto_4
    iget-boolean p3, v3, Lcom/google/vr/sdk/widgets/video/deps/bS;->d:Z

    if-eqz p3, :cond_b

    const/16 v2, 0x20

    :cond_b
    if-eqz p1, :cond_c

    const/4 p1, 0x4

    goto :goto_5

    :cond_c
    const/4 p1, 0x3

    :goto_5
    or-int/2addr p2, v2

    or-int/2addr p1, p2

    return p1
.end method
