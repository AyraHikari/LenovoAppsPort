.class public abstract Lcom/google/vr/sdk/widgets/video/deps/M;
.super Lcom/google/vr/sdk/widgets/video/deps/a;
.source "SimpleDecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/gw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/M$a;,
        Lcom/google/vr/sdk/widgets/video/deps/M$b;
    }
.end annotation


# static fields
.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2


# instance fields
.field private A:Lcom/google/vr/sdk/widgets/video/deps/W;

.field private B:Lcom/google/vr/sdk/widgets/video/deps/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ab<",
            "Lcom/google/vr/sdk/widgets/video/deps/ad;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/google/vr/sdk/widgets/video/deps/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ab<",
            "Lcom/google/vr/sdk/widgets/video/deps/ad;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field private E:Z

.field private F:Z

.field private G:J

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private final q:Lcom/google/vr/sdk/widgets/video/deps/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/ad;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Z

.field private final s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

.field private final t:Lcom/google/vr/sdk/widgets/video/deps/H;

.field private final u:Lcom/google/vr/sdk/widgets/video/deps/n;

.field private final v:Lcom/google/vr/sdk/widgets/video/deps/T;

.field private w:Lcom/google/vr/sdk/widgets/video/deps/S;

.field private x:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private y:Lcom/google/vr/sdk/widgets/video/deps/V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/V<",
            "Lcom/google/vr/sdk/widgets/video/deps/T;",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/W;",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/E;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/google/vr/sdk/widgets/video/deps/T;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/F;

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v1, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/M;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;[Lcom/google/vr/sdk/widgets/video/deps/F;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;Lcom/google/vr/sdk/widgets/video/deps/C;)V
    .locals 8

    const/4 v0, 0x0

    new-array v7, v0, [Lcom/google/vr/sdk/widgets/video/deps/F;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 5
    invoke-direct/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/M;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;Lcom/google/vr/sdk/widgets/video/deps/C;Lcom/google/vr/sdk/widgets/video/deps/ac;Z[Lcom/google/vr/sdk/widgets/video/deps/F;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;Lcom/google/vr/sdk/widgets/video/deps/C;Lcom/google/vr/sdk/widgets/video/deps/ac;Z[Lcom/google/vr/sdk/widgets/video/deps/F;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/G;",
            "Lcom/google/vr/sdk/widgets/video/deps/C;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/ad;",
            ">;Z[",
            "Lcom/google/vr/sdk/widgets/video/deps/F;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/a;-><init>(I)V

    .line 8
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->q:Lcom/google/vr/sdk/widgets/video/deps/ac;

    .line 9
    iput-boolean p5, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->r:Z

    .line 10
    new-instance p4, Lcom/google/vr/sdk/widgets/video/deps/G$a;

    invoke-direct {p4, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/G$a;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;)V

    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    .line 11
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/H;

    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/M$a;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/M$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/M;Lcom/google/vr/sdk/widgets/video/deps/M$1;)V

    invoke-direct {p1, p3, p6, p2}, Lcom/google/vr/sdk/widgets/video/deps/H;-><init>(Lcom/google/vr/sdk/widgets/video/deps/C;[Lcom/google/vr/sdk/widgets/video/deps/F;Lcom/google/vr/sdk/widgets/video/deps/H$f;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    .line 12
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/n;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/n;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->u:Lcom/google/vr/sdk/widgets/video/deps/n;

    .line 13
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/T;->e()Lcom/google/vr/sdk/widgets/video/deps/T;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->v:Lcom/google/vr/sdk/widgets/video/deps/T;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->D:I

    .line 15
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->F:Z

    return-void
.end method

.method public varargs constructor <init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;[Lcom/google/vr/sdk/widgets/video/deps/F;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/M;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;Lcom/google/vr/sdk/widgets/video/deps/C;Lcom/google/vr/sdk/widgets/video/deps/ac;Z[Lcom/google/vr/sdk/widgets/video/deps/F;)V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/M;)Lcom/google/vr/sdk/widgets/video/deps/G$a;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    return-object p0
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->x:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 261
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->x:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 262
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    .line 264
    :goto_0
    invoke-static {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->x:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->q:Lcom/google/vr/sdk/widgets/video/deps/ac;

    if-eqz v0, :cond_1

    .line 271
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->x:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    invoke-interface {v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 272
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-ne v0, v2, :cond_3

    .line 273
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->q:Lcom/google/vr/sdk/widgets/video/deps/ac;

    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V

    goto :goto_1

    .line 268
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->getIndex()I

    move-result v0

    .line 270
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1

    .line 274
    :cond_2
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 275
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->E:Z

    if-eqz v0, :cond_4

    .line 276
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->D:I

    goto :goto_2

    .line 277
    :cond_4
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->j()V

    .line 278
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->i()V

    .line 279
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->F:Z

    .line 280
    :goto_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/M;Z)Z
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->H:Z

    return p1
.end method

.method private a(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->r:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ab;->c()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    move v1, v0

    :cond_1
    return v1

    .line 118
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ab;->d()Lcom/google/vr/sdk/widgets/video/deps/ab$a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method private e()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;,
            Lcom/google/vr/sdk/widgets/video/deps/E;,
            Lcom/google/vr/sdk/widgets/video/deps/H$c;,
            Lcom/google/vr/sdk/widgets/video/deps/H$d;,
            Lcom/google/vr/sdk/widgets/video/deps/H$h;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/V;->g()Lcom/google/vr/sdk/widgets/video/deps/U;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/W;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->f:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/W;->b:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->f:I

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/W;->c()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 61
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->D:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->j()V

    .line 63
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->i()V

    .line 64
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->F:Z

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/W;->e()V

    .line 66
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    .line 67
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->g()V

    :goto_0
    return v1

    .line 69
    :cond_3
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->F:Z

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->d()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    .line 71
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->v:I

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Ljava/lang/String;IIII)V

    .line 72
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->F:Z

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/W;->c:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    iget-wide v5, v5, Lcom/google/vr/sdk/widgets/video/deps/W;->a:J

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->e:I

    .line 75
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/W;->e()V

    .line 76
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    return v3

    :cond_5
    return v1
.end method

.method private f()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/E;,
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->D:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->I:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    if-nez v2, :cond_1

    .line 82
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/V;->f()Lcom/google/vr/sdk/widgets/video/deps/T;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    if-nez v0, :cond_1

    return v1

    .line 85
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->D:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 86
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/T;->a_(I)V

    .line 87
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/V;->a(Lcom/google/vr/sdk/widgets/video/deps/T;)V

    .line 88
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    .line 89
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->D:I

    return v1

    .line 91
    :cond_2
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->K:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x4

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->u:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/M;->readSource(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I

    move-result v0

    :goto_0
    const/4 v3, -0x3

    if-ne v0, v3, :cond_4

    return v1

    :cond_4
    const/4 v3, -0x5

    if-ne v0, v3, :cond_5

    .line 97
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->u:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/M;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    return v4

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 100
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->I:Z

    .line 101
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/V;->a(Lcom/google/vr/sdk/widgets/video/deps/T;)V

    .line 102
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    return v1

    .line 104
    :cond_6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->g()Z

    move-result v0

    .line 105
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/M;->a(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->K:Z

    if-eqz v0, :cond_7

    return v1

    .line 108
    :cond_7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/T;->h()V

    .line 109
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/V;->a(Lcom/google/vr/sdk/widgets/video/deps/T;)V

    .line 110
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->E:Z

    .line 111
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->c:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->c:I

    .line 112
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    return v4

    :cond_8
    :goto_1
    return v1
.end method

.method private g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->J:Z

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->c()V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/H$h; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 124
    :catch_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ab;->d()Lcom/google/vr/sdk/widgets/video/deps/ab$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object v0

    throw v0
.end method

.method private h()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->K:Z

    .line 127
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->D:I

    if-eqz v1, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->j()V

    .line 129
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->i()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    .line 131
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/W;->e()V

    .line 133
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/V;->d()V

    .line 135
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->E:Z

    :goto_0
    return-void
.end method

.method private i()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 233
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ab;->e()Lcom/google/vr/sdk/widgets/video/deps/ad;

    move-result-object v1

    if-nez v1, :cond_2

    .line 235
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ab;->d()Lcom/google/vr/sdk/widgets/video/deps/ab$a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object v0

    throw v0

    .line 239
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v0, "createAudioDecoder"

    .line 240
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->x:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/M;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/ad;)Lcom/google/vr/sdk/widgets/video/deps/V;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    .line 242
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 244
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/V;->a()Ljava/lang/String;

    move-result-object v5

    sub-long v8, v6, v2

    invoke-virtual/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(Ljava/lang/String;JJ)V

    .line 245
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->a:I
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/E; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object v0

    throw v0
.end method

.method private j()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 252
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->z:Lcom/google/vr/sdk/widgets/video/deps/T;

    .line 253
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

    .line 254
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/V;->e()V

    .line 255
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    .line 256
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/S;->b:I

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->D:I

    .line 258
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->E:Z

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/ad;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            ")I"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/ad;)Lcom/google/vr/sdk/widgets/video/deps/V;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/m;",
            "Lcom/google/vr/sdk/widgets/video/deps/ad;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/V<",
            "Lcom/google/vr/sdk/widgets/video/deps/T;",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/W;",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/E;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/E;
        }
    .end annotation
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/s;)Lcom/google/vr/sdk/widgets/video/deps/s;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

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

.method public b()J
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->isEnded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 143
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->H:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->G:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->G:J

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->H:Z

    .line 146
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->G:J

    return-wide v0
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/s;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->f()Lcom/google/vr/sdk/widgets/video/deps/s;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 13

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->x:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->x:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    const/4 v1, 0x0

    const-string v2, "audio/raw"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v0

    return-object v0
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

    .line 288
    invoke-super {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/a;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_0
    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/B;

    .line 286
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(Lcom/google/vr/sdk/widgets/video/deps/B;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/H;->a(F)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

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

    .line 138
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->x:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->K:Z

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->A:Lcom/google/vr/sdk/widgets/video/deps/W;

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

.method protected onDisabled()V
    .locals 4

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->x:Lcom/google/vr/sdk/widgets/video/deps/m;

    const/4 v1, 0x1

    .line 169
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->F:Z

    const/4 v1, 0x0

    .line 170
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->K:Z

    .line 171
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->j()V

    .line 172
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/H;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 173
    :try_start_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->q:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v1, v2, :cond_1

    .line 176
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->q:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :cond_1
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 178
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 179
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 180
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    return-void

    :catchall_0
    move-exception v1

    .line 182
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 183
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 184
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 185
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 188
    :try_start_3
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v2, v3, :cond_2

    .line 189
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->q:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 190
    :cond_2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 191
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 192
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 193
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    .line 198
    throw v1

    :catchall_2
    move-exception v1

    .line 195
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 196
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 197
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 198
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    throw v1

    :catchall_3
    move-exception v1

    .line 201
    :try_start_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->q:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 203
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v2, v3, :cond_4

    .line 204
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->q:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 205
    :cond_4
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 206
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 207
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 208
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    .line 226
    throw v1

    :catchall_4
    move-exception v1

    .line 210
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 211
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 212
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 213
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    throw v1

    :catchall_5
    move-exception v1

    .line 216
    :try_start_6
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    if-eq v2, v3, :cond_5

    .line 217
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->q:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ac;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 218
    :cond_5
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 219
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 220
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 221
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    .line 226
    throw v1

    :catchall_6
    move-exception v1

    .line 223
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->B:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 224
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->C:Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 225
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    .line 226
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->b(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    throw v1
.end method

.method protected onEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 149
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/S;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    .line 150
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->s:Lcom/google/vr/sdk/widgets/video/deps/G$a;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/G$a;->a(Lcom/google/vr/sdk/widgets/video/deps/S;)V

    .line 151
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->getConfiguration()Lcom/google/vr/sdk/widgets/video/deps/w;

    move-result-object p1

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/w;->b:I

    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/H;->b(I)V

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/H;->g()V

    :goto_0
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 156
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/H;->i()V

    .line 157
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->G:J

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->H:Z

    const/4 p1, 0x0

    .line 159
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->I:Z

    .line 160
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->J:Z

    .line 161
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    if-eqz p1, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->h()V

    :cond_0
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->a()V

    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/H;->h()V

    return-void
.end method

.method public render(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 23
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->J:Z

    if-eqz p1, :cond_0

    .line 24
    :try_start_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->t:Lcom/google/vr/sdk/widgets/video/deps/H;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/H;->c()V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/H$h; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->x:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-nez p1, :cond_3

    .line 30
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->v:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/T;->a()V

    .line 31
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->u:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->v:Lcom/google/vr/sdk/widgets/video/deps/T;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/M;->readSource(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I

    move-result p1

    const/4 p2, -0x5

    if-ne p1, p2, :cond_1

    .line 33
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->u:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/M;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    goto :goto_0

    :cond_1
    const/4 p2, -0x4

    if-ne p1, p2, :cond_2

    .line 35
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->v:Lcom/google/vr/sdk/widgets/video/deps/T;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/T;->c()Z

    move-result p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 36
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->I:Z

    .line 37
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->g()V

    :cond_2
    return-void

    .line 40
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->i()V

    .line 41
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->y:Lcom/google/vr/sdk/widgets/video/deps/V;

    if-eqz p1, :cond_6

    :try_start_1
    const-string p1, "drainAndFeed"

    .line 42
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a(Ljava/lang/String;)V

    .line 43
    :goto_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 44
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 45
    :cond_5
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->a()V
    :try_end_1
    .catch Lcom/google/vr/sdk/widgets/video/deps/E; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/vr/sdk/widgets/video/deps/H$c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/vr/sdk/widgets/video/deps/H$d; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/vr/sdk/widgets/video/deps/H$h; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->w:Lcom/google/vr/sdk/widgets/video/deps/S;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/S;->a()V

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_3

    :catch_4
    move-exception p1

    .line 48
    :goto_3
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/M;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1

    :cond_6
    :goto_4
    return-void
.end method

.method public final supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/M;->q:Lcom/google/vr/sdk/widgets/video/deps/ac;

    invoke-virtual {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/M;->a(Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    return p1

    .line 21
    :cond_0
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    return p1
.end method
