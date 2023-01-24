.class public abstract Lcom/zui/gallery/app/AbstractPhotoSmartSelect;
.super Ljava/lang/Object;
.source "AbstractPhotoSmartSelect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;,
        Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;,
        Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;
    }
.end annotation


# static fields
.field protected static TAG:Ljava/lang/String; = "AbstractPhotoSmartSelect"


# instance fields
.field protected NONE:I

.field private final SELECT_TIME_US:J

.field private frameSequenceListener:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

.field protected mBestData:[B

.field protected mBestFrameTime:J

.field protected mContext:Landroid/content/Context;

.field private final mFilePath:Ljava/lang/String;

.field protected volatile mGroup:I

.field protected volatile mIndex:I

.field private final object:Ljava/lang/Object;

.field private playerThread:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;

.field private sliceHeight:I

.field private stride:I

.field protected videoDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;ILandroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x3d090

    .line 24
    iput-wide v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->SELECT_TIME_US:J

    const/4 p3, -0x1

    .line 25
    iput p3, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->NONE:I

    .line 37
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->object:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mFilePath:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->frameSequenceListener:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    .line 65
    iput-object p4, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->frameSequenceListener:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->stride:I

    return p0
.end method

.method static synthetic access$302(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->stride:I

    return p1
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->sliceHeight:I

    return p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->sliceHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;J)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->onOneGroupDone(J)V

    return-void
.end method

.method private isProcessing()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->playerThread:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;

    if-eqz v0, :cond_0

    .line 91
    iget-boolean v0, v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->isDone:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onOneGroupDone(J)V
    .locals 6

    .line 303
    sget-object v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "one group process finished group index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mGroup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " this group max index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mBestData:[B

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mBestFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 305
    new-instance v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;

    invoke-direct {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;-><init>()V

    .line 306
    iget-object v1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mBestData:[B

    iput-object v1, v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->data:[B

    .line 307
    iget v1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mGroup:I

    iput v1, v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->group:I

    .line 308
    iget-wide v4, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mBestFrameTime:J

    iput-wide v4, v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->time:J

    .line 309
    iget v1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mIndex:I

    iput v1, v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->index:I

    .line 310
    iget v1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->stride:I

    iput v1, v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->stride:I

    .line 311
    iget v1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->sliceHeight:I

    iput v1, v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;->sliceHeight:I

    long-to-float v1, p1

    .line 312
    iget-wide v4, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->videoDuration:J

    long-to-float v4, v4

    div-float/2addr v1, v4

    const/4 v4, 0x0

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_0

    .line 313
    iget v4, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mGroup:I

    if-lez v4, :cond_0

    cmp-long p1, p1, v2

    if-gtz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->frameSequenceListener:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    if-eqz p1, :cond_1

    .line 318
    invoke-interface {p1, v0, v1}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;->onBestFrameSequenceProcess(Lcom/zui/gallery/app/AbstractPhotoSmartSelect$Parama;F)V

    .line 321
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->object:Ljava/lang/Object;

    monitor-enter p1

    .line 322
    :try_start_0
    iget p2, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mGroup:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mGroup:I

    .line 323
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 324
    iput p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mIndex:I

    const/4 p1, 0x0

    .line 325
    iput-object p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mBestData:[B

    .line 326
    iget p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->NONE:I

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->mBestFrameTime:J

    return-void

    :catchall_0
    move-exception p2

    .line 323
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method


# virtual methods
.method public abstract doStart()V
.end method

.method public abstract doStop()V
.end method

.method public abstract processFrame(II[BJZZ)V
.end method

.method public start()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->isProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->stop()V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->doStart()V

    .line 73
    new-instance v0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;-><init>(Lcom/zui/gallery/app/AbstractPhotoSmartSelect;Lcom/zui/gallery/app/AbstractPhotoSmartSelect$1;)V

    iput-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->playerThread:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;

    .line 74
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->playerThread:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;->stopPlaying()V

    :cond_0
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->playerThread:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$PlayerThread;

    .line 82
    invoke-virtual {p0}, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->doStop()V

    return-void
.end method

.method public unRegisterListener()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/zui/gallery/app/AbstractPhotoSmartSelect;->frameSequenceListener:Lcom/zui/gallery/app/AbstractPhotoSmartSelect$FrameSequenceListener;

    return-void
.end method
