.class Lcom/google/vr/sdk/widgets/video/deps/Y;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ab;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/Y$b;,
        Lcom/google/vr/sdk/widgets/video/deps/Y$c;,
        Lcom/google/vr/sdk/widgets/video/deps/Y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/vr/sdk/widgets/video/deps/ad;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/ab<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "DefaultDrmSession"

.field private static final j:I = 0x0

.field private static final k:I = 0x1

.field private static final l:I = 0x3c


# instance fields
.field private A:Lcom/google/vr/sdk/widgets/video/deps/ab$a;

.field private B:[B

.field private C:[B

.field final a:Lcom/google/vr/sdk/widgets/video/deps/ak;

.field final b:Ljava/util/UUID;

.field c:Lcom/google/vr/sdk/widgets/video/deps/Y$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/Y$c;"
        }
    .end annotation
.end field

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final n:[B

.field private final o:Ljava/lang/String;

.field private final p:I

.field private final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroid/os/Handler;

.field private final s:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final u:Lcom/google/vr/sdk/widgets/video/deps/Y$a;

.field private v:I

.field private w:I

.field private x:Landroid/os/HandlerThread;

.field private y:Landroid/os/Handler;

.field private z:Lcom/google/vr/sdk/widgets/video/deps/ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ae;[BLjava/lang/String;I[BLjava/util/HashMap;Lcom/google/vr/sdk/widgets/video/deps/ak;Landroid/os/Looper;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/vr/sdk/widgets/video/deps/Y$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/vr/sdk/widgets/video/deps/ae<",
            "TT;>;[B",
            "Ljava/lang/String;",
            "I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/ak;",
            "Landroid/os/Looper;",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/Z$a;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lcom/google/vr/sdk/widgets/video/deps/Y$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->b:Ljava/util/UUID;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->m:Lcom/google/vr/sdk/widgets/video/deps/ae;

    .line 4
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->p:I

    .line 5
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->C:[B

    .line 6
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->q:Ljava/util/HashMap;

    .line 7
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->a:Lcom/google/vr/sdk/widgets/video/deps/ak;

    .line 8
    iput-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->r:Landroid/os/Handler;

    .line 9
    iput-object p11, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->s:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    .line 10
    iput-object p12, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    iput-object p13, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->u:Lcom/google/vr/sdk/widgets/video/deps/Y$a;

    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    .line 13
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/Y$c;

    invoke-direct {p1, p0, p9}, Lcom/google/vr/sdk/widgets/video/deps/Y$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/Y;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->c:Lcom/google/vr/sdk/widgets/video/deps/Y$c;

    .line 14
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "DrmRequestHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->x:Landroid/os/HandlerThread;

    .line 15
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 16
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/Y$b;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->x:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/Y$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/Y;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->y:Landroid/os/Handler;

    if-nez p6, :cond_0

    .line 18
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->n:[B

    .line 19
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->n:[B

    .line 21
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->o:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/Y;)Lcom/google/vr/sdk/widgets/video/deps/Z$a;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->s:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    return-object p0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/Y;Ljava/lang/Object;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .line 147
    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->i()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(Ljava/lang/Exception;)V

    return-void

    .line 73
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->m:Lcom/google/vr/sdk/widgets/video/deps/ae;

    check-cast p1, [B

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->b([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->u:Lcom/google/vr/sdk/widgets/video/deps/Y$a;

    if-eqz p1, :cond_1

    .line 79
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/Y$a;->a()V

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 76
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Z)Z
    .locals 3

    .line 50
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 52
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->m:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->B:[B

    .line 53
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->m:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-interface {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->d([B)Lcom/google/vr/sdk/widgets/video/deps/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->z:Lcom/google/vr/sdk/widgets/video/deps/ad;

    const/4 v0, 0x3

    .line 54
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 62
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz p1, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->i()V

    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(I)V
    .locals 7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->C:[B

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->B:[B

    :goto_0
    move-object v2, v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->m:Lcom/google/vr/sdk/widgets/video/deps/ae;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->n:[B

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->o:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->q:Ljava/util/HashMap;

    move v5, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/ae;->a([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/vr/sdk/widgets/video/deps/ae$a;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->y:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 122
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/Y;Ljava/lang/Object;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/Exception;)V
    .locals 2

    .line 151
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ab$a;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ab$a;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->A:Lcom/google/vr/sdk/widgets/video/deps/ab$a;

    .line 152
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->s:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    if-eqz v1, :cond_0

    .line 153
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/Y$4;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y$4;-><init>(Lcom/google/vr/sdk/widgets/video/deps/Y;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_0
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    .line 155
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 127
    check-cast p1, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->a(Ljava/lang/Exception;)V

    return-void

    .line 129
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->m:Lcom/google/vr/sdk/widgets/video/deps/ae;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->C:[B

    check-cast p1, [B

    invoke-interface {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->a([B[B)[B

    .line 131
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->r:Landroid/os/Handler;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->s:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    if-eqz p1, :cond_5

    .line 132
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->r:Landroid/os/Handler;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/Y$2;

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/Y$2;-><init>(Lcom/google/vr/sdk/widgets/video/deps/Y;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->m:Lcom/google/vr/sdk/widgets/video/deps/ae;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->B:[B

    check-cast p1, [B

    invoke-interface {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->a([B[B)[B

    move-result-object p1

    .line 134
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->p:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->p:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->C:[B

    if-eqz v0, :cond_4

    :cond_3
    if-eqz p1, :cond_4

    array-length v0, p1

    if-eqz v0, :cond_4

    .line 135
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->C:[B

    :cond_4
    const/4 p1, 0x4

    .line 136
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    .line 137
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->r:Landroid/os/Handler;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->s:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    if-eqz p1, :cond_5

    .line 138
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->r:Landroid/os/Handler;

    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/Y$3;

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/Y$3;-><init>(Lcom/google/vr/sdk/widgets/video/deps/Y;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->a(Ljava/lang/Exception;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private i()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->m:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->b()Lcom/google/vr/sdk/widgets/video/deps/ae$c;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->y:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private j()V
    .locals 5

    .line 86
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 105
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(I)V

    goto/16 :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->C:[B

    if-nez v0, :cond_2

    .line 101
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(I)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 103
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(I)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->C:[B

    if-nez v0, :cond_4

    .line 88
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(I)V

    goto :goto_0

    .line 89
    :cond_4
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->l()J

    move-result-wide v0

    .line 91
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->p:I

    if-nez v3, :cond_5

    const-wide/16 v3, 0x3c

    cmp-long v3, v0, v3

    if-gtz v3, :cond_5

    const/16 v3, 0x58

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Offline license has expired or will expire soon. Remaining seconds: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultDrmSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(I)V

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    .line 95
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ai;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ai;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    .line 96
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    .line 97
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->r:Landroid/os/Handler;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->s:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    if-eqz v1, :cond_7

    .line 98
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/Y$1;

    invoke-direct {v1, p0}, Lcom/google/vr/sdk/widgets/video/deps/Y$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/Y;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_0
    return-void
.end method

.method private k()Z
    .locals 3

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->m:Lcom/google/vr/sdk/widgets/video/deps/ae;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->B:[B

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->C:[B

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ae;->b([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DefaultDrmSession"

    const-string v2, "Error trying to restore Widevine keys."

    .line 110
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method private l()J
    .locals 5

    .line 113
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->be:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->b:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    .line 115
    :cond_0
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/an;->a(Lcom/google/vr/sdk/widgets/video/deps/ab;)Landroid/util/Pair;

    move-result-object v0

    .line 116
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private m()V
    .locals 2

    .line 143
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 144
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    .line 145
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ai;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ai;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private n()Z
    .locals 2

    .line 157
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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


# virtual methods
.method public a()V
    .locals 2

    .line 23
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->w:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->w:I

    if-ne v0, v1, :cond_1

    .line 24
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    if-ne v0, v1, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->j()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 158
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->m()V

    goto :goto_0

    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->j()V

    goto :goto_0

    .line 165
    :cond_3
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    .line 166
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->i()V

    :goto_0
    return-void
.end method

.method public a([B)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->n:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 4

    .line 29
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->w:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->w:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 30
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->c:Lcom/google/vr/sdk/widgets/video/deps/Y$c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/Y$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->y:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 33
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->y:Landroid/os/Handler;

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->x:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 35
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->x:Landroid/os/HandlerThread;

    .line 36
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->z:Lcom/google/vr/sdk/widgets/video/deps/ad;

    .line 37
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->A:Lcom/google/vr/sdk/widgets/video/deps/ab$a;

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->B:[B

    if-eqz v0, :cond_0

    .line 39
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->m:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-interface {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->a([B)V

    .line 40
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->B:[B

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public b([B)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->B:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    return v0
.end method

.method public final d()Lcom/google/vr/sdk/widgets/video/deps/ab$a;
    .locals 2

    .line 46
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->A:Lcom/google/vr/sdk/widgets/video/deps/ab$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final e()Lcom/google/vr/sdk/widgets/video/deps/ad;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->z:Lcom/google/vr/sdk/widgets/video/deps/ad;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->B:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->m:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->c([B)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public g()[B
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->C:[B

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 81
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Y;->v:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/Y;->j()V

    :cond_1
    return-void
.end method
