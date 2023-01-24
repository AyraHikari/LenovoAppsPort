.class public Lcom/google/vr/sdk/widgets/video/deps/K;
.super Lcom/google/vr/sdk/widgets/video/deps/bT;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/gw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/K$a;
    }
.end annotation


# instance fields
.field private final n:Lcom/google/vr/sdk/widgets/video/deps/G$a;

.field private final o:Lcom/google/vr/sdk/widgets/video/deps/H;

.field private p:Z

.field private q:Z

.field private r:Landroid/media/MediaFormat;

.field private s:I

.field private t:I

.field private u:J

.field private v:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bU;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/K;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bU;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/K;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/bU;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/K;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/bU;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/G;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v8, v0, [Lcom/google/vr/sdk/widgets/video/deps/F;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 7
    invoke-direct/range {v1 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/K;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;Lcom/google/vr/sdk/widgets/video/deps/C;[Lcom/google/vr/sdk/widgets/video/deps/F;)V

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;Lcom/google/vr/sdk/widgets/video/deps/C;[Lcom/google/vr/sdk/widgets/video/deps/F;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/bU;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/G;",
            "Lcom/google/vr/sdk/widgets/video/deps/C;",
            "[",
            "Lcom/google/vr/sdk/widgets/video/deps/F;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bT;-><init>(ILcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;Z)V

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/H;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/K$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/K$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/K;Lcom/google/vr/sdk/widgets/video/deps/K$1;)V

    invoke-direct {p1, p6, p7, p2}, Lcom/google/vr/sdk/widgets/video/deps/H;-><init>(Lcom/google/vr/sdk/widgets/video/deps/C;[Lcom/google/vr/sdk/widgets/video/deps/F;Lcom/google/vr/sdk/widgets/video/deps/H$f;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    .line 11
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/G$a;

    invoke-direct {p1, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/G$a;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->n:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/K;)Lcom/google/vr/sdk/widgets/video/deps/G$a;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->n:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    return-object p0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/K;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->v:Z

    return p1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .line 158
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/gM;->c:Ljava/lang/String;

    const-string v0, "samsung"

    .line 159
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string/jumbo v0, "zeroflte"

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string v0, "herolte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/vr/sdk/widgets/video/deps/gM;->b:Ljava/lang/String;

    const-string v0, "heroqlte"

    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/s;)Lcom/google/vr/sdk/widgets/video/deps/s;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Lcom/google/vr/sdk/widgets/video/deps/s;)Lcom/google/vr/sdk/widgets/video/deps/s;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected a(IJJ)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()J
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/K;->isEnded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 123
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->v:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->u:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->u:J

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->v:Z

    .line 126
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->u:J

    return-wide v0
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/s;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->f()Lcom/google/vr/sdk/widgets/video/deps/s;

    move-result-object v0

    return-object v0
.end method

.method protected configureCodec(Lcom/google/vr/sdk/widgets/video/deps/bS;Landroid/media/MediaCodec;Lcom/google/vr/sdk/widgets/video/deps/m;Landroid/media/MediaCrypto;)V
    .locals 4

    .line 47
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bS;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/K;->b(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->q:Z

    .line 48
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->p:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/m;->b()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->r:Landroid/media/MediaFormat;

    const-string v2, "mime"

    const-string v3, "audio/raw"

    .line 50
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->r:Landroid/media/MediaFormat;

    invoke-virtual {p2, p1, v1, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 52
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->r:Landroid/media/MediaFormat;

    iget-object p2, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/m;->b()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {p2, p1, v1, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 54
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->r:Landroid/media/MediaFormat;

    :goto_0
    return-void
.end method

.method protected getDecoderInfo(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/m;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/bV$b;
        }
    .end annotation

    .line 39
    iget-object v0, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/K;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/bU;->a()Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->p:Z

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->p:Z

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bT;->getDecoderInfo(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/m;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object p1

    return-object p1
.end method

.method public getMediaClock()Lcom/google/vr/sdk/widgets/video/deps/gw;
    .locals 0

    return-object p0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 156
    invoke-super {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/bT;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 153
    :cond_0
    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/B;

    .line 154
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Lcom/google/vr/sdk/widgets/video/deps/B;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(F)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onCodecInitialized(Ljava/lang/String;JJ)V
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->n:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 106
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->n:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    return-void

    :catchall_0
    move-exception v0

    .line 108
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 109
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->n:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 112
    :try_start_2
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 113
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 114
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->n:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    .line 117
    throw v0

    :catchall_2
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 117
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->n:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    throw v0
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 85
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onEnabled(Z)V

    .line 86
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->n:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/K;->getConfiguration()Lcom/google/vr/sdk/widgets/video/deps/w;

    move-result-object p1

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/w;->b:I

    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/H;->b(I)V

    goto :goto_0

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/H;->g()V

    :goto_0
    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onInputFormatChanged(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->n:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 61
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 62
    :goto_0
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->s:I

    .line 63
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->t:I

    return-void
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 65
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->r:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->r:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "audio/raw"

    :goto_1
    move-object v3, v1

    if-eqz p1, :cond_2

    .line 68
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->r:Landroid/media/MediaFormat;

    :cond_2
    const-string p1, "channel-count"

    .line 69
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string p1, "sample-rate"

    .line 70
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    .line 71
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->q:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    if-ne v4, p1, :cond_3

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->t:I

    if-ge p2, p1, :cond_3

    .line 72
    new-array p1, p2, [I

    .line 73
    :goto_2
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->t:I

    if-ge v0, p2, :cond_4

    .line 74
    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :cond_4
    move-object v8, p1

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->s:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Ljava/lang/String;IIII[I)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/H$c; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/K;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onPositionReset(JZ)V

    .line 93
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/H;->i()V

    .line 94
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->u:J

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->v:Z

    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onStarted()V

    .line 98
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->a()V

    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->h()V

    .line 101
    invoke-super {p0}, Lcom/google/vr/sdk/widgets/video/deps/bT;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 129
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->p:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_0
    if-eqz p11, :cond_1

    .line 133
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 134
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->f:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->f:I

    .line 135
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/H;->b()V

    return p3

    .line 137
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {p1, p6, p9, p10}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 138
    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 139
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->decoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->e:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/vr/sdk/widgets/video/deps/S;->e:I
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/H$d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/vr/sdk/widgets/video/deps/H$h; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :cond_2
    return p2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/K;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1
.end method

.method protected renderToEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/K;->o:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->c()V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/H$h; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/K;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object v0

    throw v0
.end method

.method protected supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 9
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

    .line 13
    iget-object v0, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 16
    :cond_0
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    move v1, v2

    .line 17
    :goto_0
    iget-object v4, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    invoke-static {p2, v4}, Lcom/google/vr/sdk/widgets/video/deps/K;->supportsFormatDrm(Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/aa;)Z

    move-result p2

    const/4 v4, 0x4

    if-eqz p2, :cond_2

    .line 18
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/K;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 19
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/bU;->a()Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object v5

    if-eqz v5, :cond_2

    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v4

    return p1

    .line 22
    :cond_2
    iget-object v5, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    if-eqz v5, :cond_3

    move v6, v2

    move v7, v6

    .line 24
    :goto_1
    iget v8, v5, Lcom/google/vr/sdk/widgets/video/deps/aa;->b:I

    if-ge v6, v8, :cond_4

    .line 25
    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/aa;->a(I)Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    move-result-object v8

    iget-boolean v8, v8, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->c:Z

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v7, v2

    .line 27
    :cond_4
    invoke-interface {p1, v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/bU;->a(Ljava/lang/String;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-nez v5, :cond_6

    if-eqz v7, :cond_5

    .line 29
    invoke-interface {p1, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/bU;->a(Ljava/lang/String;Z)Lcom/google/vr/sdk/widgets/video/deps/bS;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v6, v8

    :goto_2
    return v6

    :cond_6
    if-nez p2, :cond_7

    return v6

    .line 34
    :cond_7
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    if-lt p1, v3, :cond_9

    iget p1, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_8

    iget p1, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    .line 35
    invoke-virtual {v5, p1}, Lcom/google/vr/sdk/widgets/video/deps/bS;->a(I)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_8
    iget p1, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    if-eq p1, p2, :cond_9

    iget p1, p3, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    .line 36
    invoke-virtual {v5, p1}, Lcom/google/vr/sdk/widgets/video/deps/bS;->b(I)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    move v2, v8

    :cond_a
    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    const/4 v4, 0x3

    :goto_3
    or-int/lit8 p1, v1, 0x8

    or-int/2addr p1, v4

    return p1
.end method
