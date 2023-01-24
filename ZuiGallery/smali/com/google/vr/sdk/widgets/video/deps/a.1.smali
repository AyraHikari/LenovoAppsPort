.class public abstract Lcom/google/vr/sdk/widgets/video/deps/a;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/u;
.implements Lcom/google/vr/sdk/widgets/video/deps/v;


# instance fields
.field private configuration:Lcom/google/vr/sdk/widgets/video/deps/w;

.field private index:I

.field private readEndOfStream:Z

.field private state:I

.field private stream:Lcom/google/vr/sdk/widgets/video/deps/db;

.field private streamIsFinal:Z

.field private streamOffsetUs:J

.field private final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->trackType:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->readEndOfStream:Z

    return-void
.end method

.method protected static supportsFormatDrm(Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/aa;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "*>;",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 77
    :cond_1
    invoke-interface {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/aa;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final disable()V
    .locals 3

    .line 43
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 44
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->state:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->stream:Lcom/google/vr/sdk/widgets/video/deps/db;

    .line 46
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->streamIsFinal:Z

    .line 47
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/a;->onDisabled()V

    return-void
.end method

.method public final enable(Lcom/google/vr/sdk/widgets/video/deps/w;[Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/db;JZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 11
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 12
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->configuration:Lcom/google/vr/sdk/widgets/video/deps/w;

    .line 13
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->state:I

    .line 14
    invoke-virtual {p0, p6}, Lcom/google/vr/sdk/widgets/video/deps/a;->onEnabled(Z)V

    .line 15
    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/google/vr/sdk/widgets/video/deps/a;->replaceStream([Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/db;J)V

    .line 16
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/vr/sdk/widgets/video/deps/a;->onPositionReset(JZ)V

    return-void
.end method

.method public final getCapabilities()Lcom/google/vr/sdk/widgets/video/deps/v;
    .locals 0

    return-object p0
.end method

.method protected final getConfiguration()Lcom/google/vr/sdk/widgets/video/deps/w;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->configuration:Lcom/google/vr/sdk/widgets/video/deps/w;

    return-object v0
.end method

.method protected final getIndex()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->index:I

    return v0
.end method

.method public getMediaClock()Lcom/google/vr/sdk/widgets/video/deps/gw;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->state:I

    return v0
.end method

.method public final getStream()Lcom/google/vr/sdk/widgets/video/deps/db;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->stream:Lcom/google/vr/sdk/widgets/video/deps/db;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->trackType:I

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->readEndOfStream:Z

    return v0
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->streamIsFinal:Z

    return v0
.end method

.method protected final isSourceReady()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->readEndOfStream:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->streamIsFinal:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->stream:Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/db;->c()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final maybeThrowStreamError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->stream:Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/db;->b_()V

    return-void
.end method

.method protected onDisabled()V
    .locals 0

    return-void
.end method

.method protected onEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    return-void
.end method

.method protected onStopped()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    return-void
.end method

.method protected onStreamChanged([Lcom/google/vr/sdk/widgets/video/deps/m;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    return-void
.end method

.method protected final readSource(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->stream:Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/db;->a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 61
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/T;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->readEndOfStream:Z

    .line 63
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->streamIsFinal:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 64
    :cond_1
    iget-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/T;->f:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->streamOffsetUs:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/T;->f:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 66
    iget-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 67
    iget-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 68
    iget-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->streamOffsetUs:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(J)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p2

    .line 69
    iput-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    :cond_3
    :goto_1
    return p3
.end method

.method public final replaceStream([Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/db;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 22
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 23
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->stream:Lcom/google/vr/sdk/widgets/video/deps/db;

    const/4 p2, 0x0

    .line 24
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->readEndOfStream:Z

    .line 25
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->streamOffsetUs:J

    .line 26
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/a;->onStreamChanged([Lcom/google/vr/sdk/widgets/video/deps/m;J)V

    return-void
.end method

.method public final resetPosition(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->streamIsFinal:Z

    .line 36
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->readEndOfStream:Z

    .line 37
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/a;->onPositionReset(JZ)V

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->streamIsFinal:Z

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->index:I

    return-void
.end method

.method protected skipSource(J)I
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->stream:Lcom/google/vr/sdk/widgets/video/deps/db;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->streamOffsetUs:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/db;->a(J)I

    move-result p1

    return p1
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 18
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    const/4 v0, 0x2

    .line 19
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->state:I

    .line 20
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/a;->onStarted()V

    return-void
.end method

.method public final stop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 39
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 40
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/a;->state:I

    .line 41
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/a;->onStopped()V

    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
