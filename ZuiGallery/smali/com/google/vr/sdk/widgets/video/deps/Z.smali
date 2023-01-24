.class public Lcom/google/vr/sdk/widgets/video/deps/Z;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/Y$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/Z$b;,
        Lcom/google/vr/sdk/widgets/video/deps/Z$c;,
        Lcom/google/vr/sdk/widgets/video/deps/Z$d;,
        Lcom/google/vr/sdk/widgets/video/deps/Z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/vr/sdk/widgets/video/deps/ad;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/Y$a;",
        "Lcom/google/vr/sdk/widgets/video/deps/ac<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "PRCustomData"

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field private static final g:Ljava/lang/String; = "cenc"


# instance fields
.field f:Lcom/google/vr/sdk/widgets/video/deps/Z$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/Z$c;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/Handler;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/ak;

.field private final m:Ljava/util/UUID;

.field private final n:Z

.field private o:Landroid/os/Looper;

.field private p:I

.field private q:[B

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/Y<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/vr/sdk/widgets/video/deps/ae<",
            "TT;>;",
            "Lcom/google/vr/sdk/widgets/video/deps/ak;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/Z$a;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/Z;-><init>(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/vr/sdk/widgets/video/deps/ae<",
            "TT;>;",
            "Lcom/google/vr/sdk/widgets/video/deps/ak;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/Z$a;",
            "Z)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->bc:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(ZLjava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->m:Ljava/util/UUID;

    .line 15
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->j:Lcom/google/vr/sdk/widgets/video/deps/ae;

    .line 16
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->l:Lcom/google/vr/sdk/widgets/video/deps/ak;

    .line 17
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->k:Ljava/util/HashMap;

    .line 18
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->h:Landroid/os/Handler;

    .line 19
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->i:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    .line 20
    iput-boolean p7, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->n:Z

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->p:I

    .line 22
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->r:Ljava/util/List;

    .line 23
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p7, :cond_0

    const-string p1, "sessionSharing"

    const-string p3, "enable"

    .line 25
    invoke-interface {p2, p1, p3}, Lcom/google/vr/sdk/widgets/video/deps/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/lang/String;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;)Lcom/google/vr/sdk/widgets/video/deps/Z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ak;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/Z$a;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/Z<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/am;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "PRCustomData"

    .line 4
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/b;->bf:Ljava/util/UUID;

    invoke-static {p1, p0, v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;)Lcom/google/vr/sdk/widgets/video/deps/Z;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;)Lcom/google/vr/sdk/widgets/video/deps/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ak;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/Z$a;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/Z<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/am;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->be:Ljava/util/UUID;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;)Lcom/google/vr/sdk/widgets/video/deps/Z;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;)Lcom/google/vr/sdk/widgets/video/deps/Z;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/google/vr/sdk/widgets/video/deps/ak;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/Z$a;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/Z<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/am;
        }
    .end annotation

    .line 7
    new-instance v8, Lcom/google/vr/sdk/widgets/video/deps/Z;

    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Ljava/util/UUID;)Lcom/google/vr/sdk/widgets/video/deps/ag;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/Z;-><init>(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ae;Lcom/google/vr/sdk/widgets/video/deps/ak;Ljava/util/HashMap;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;Z)V

    return-object v8
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/aa;Ljava/util/UUID;)Lcom/google/vr/sdk/widgets/video/deps/aa$a;
    .locals 2

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aa;->a(Ljava/util/UUID;)Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/b;->bd:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/b;->bc:Ljava/util/UUID;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aa;->a(Ljava/util/UUID;)Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/Z;)Ljava/util/UUID;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->m:Ljava/util/UUID;

    return-object p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/aa$a;Ljava/util/UUID;)[B
    .locals 2

    .line 91
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->b:[B

    .line 92
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 93
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ba;->a([BLjava/util/UUID;)[B

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/Z;)Lcom/google/vr/sdk/widgets/video/deps/Z$a;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->i:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    return-object p0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/aa$a;Ljava/util/UUID;)Ljava/lang/String;
    .locals 2

    .line 97
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/aa$a;->a:Ljava/lang/String;

    .line 98
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->bd:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "video/mp4"

    .line 99
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "audio/mp4"

    .line 100
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p0, "cenc"

    :cond_1
    return-object p0
.end method

.method static synthetic c(Lcom/google/vr/sdk/widgets/video/deps/Z;)Ljava/util/List;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->r:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/google/vr/sdk/widgets/video/deps/Z;)I
    .locals 0

    .line 106
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->p:I

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/ab;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/vr/sdk/widgets/video/deps/aa;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/ab<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v9, p1

    .line 49
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->o:Landroid/os/Looper;

    if-eqz v0, :cond_1

    if-ne v0, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 50
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 51
    iput-object v9, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->o:Landroid/os/Looper;

    .line 52
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/Z$c;

    invoke-direct {v0, v14, v9}, Lcom/google/vr/sdk/widgets/video/deps/Z$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/Z;Landroid/os/Looper;)V

    iput-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->f:Lcom/google/vr/sdk/widgets/video/deps/Z$c;

    .line 53
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->j:Lcom/google/vr/sdk/widgets/video/deps/ae;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/Z$b;

    invoke-direct {v2, v14, v1}, Lcom/google/vr/sdk/widgets/video/deps/Z$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/Z;Lcom/google/vr/sdk/widgets/video/deps/Z$1;)V

    invoke-interface {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/ae;->a(Lcom/google/vr/sdk/widgets/video/deps/ae$b;)V

    .line 57
    :cond_2
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->q:[B

    if-nez v0, :cond_4

    .line 58
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->m:Ljava/util/UUID;

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Lcom/google/vr/sdk/widgets/video/deps/aa;Ljava/util/UUID;)Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    move-result-object v0

    if-nez v0, :cond_3

    .line 60
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->h:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v2, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->i:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    if-eqz v2, :cond_4

    .line 61
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/Z$1;

    invoke-direct {v2, v14}, Lcom/google/vr/sdk/widgets/video/deps/Z$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/Z;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 62
    :cond_3
    iget-object v2, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->m:Ljava/util/UUID;

    invoke-static {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Lcom/google/vr/sdk/widgets/video/deps/aa$a;Ljava/util/UUID;)[B

    move-result-object v2

    .line 63
    iget-object v3, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->m:Ljava/util/UUID;

    invoke-static {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/Z;->b(Lcom/google/vr/sdk/widgets/video/deps/aa$a;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move-object v3, v2

    goto :goto_3

    :cond_4
    :goto_2
    move-object v3, v1

    move-object v4, v3

    .line 64
    :goto_3
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/Y;

    .line 65
    iget-boolean v5, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->n:Z

    if-eqz v5, :cond_6

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/Y;->a([B)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_6
    move-object v1, v2

    :cond_7
    if-nez v1, :cond_8

    .line 70
    new-instance v15, Lcom/google/vr/sdk/widgets/video/deps/Y;

    iget-object v1, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->m:Ljava/util/UUID;

    iget-object v2, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->j:Lcom/google/vr/sdk/widgets/video/deps/ae;

    iget v5, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->p:I

    iget-object v6, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->q:[B

    iget-object v7, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->k:Ljava/util/HashMap;

    iget-object v8, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->l:Lcom/google/vr/sdk/widgets/video/deps/ak;

    iget-object v10, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->h:Landroid/os/Handler;

    iget-object v11, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->i:Lcom/google/vr/sdk/widgets/video/deps/Z$a;

    iget-object v12, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, v15

    move-object/from16 v9, p1

    move-object/from16 v13, p0

    invoke-direct/range {v0 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/Y;-><init>(Ljava/util/UUID;Lcom/google/vr/sdk/widgets/video/deps/ae;[BLjava/lang/String;I[BLjava/util/HashMap;Lcom/google/vr/sdk/widgets/video/deps/ak;Landroid/os/Looper;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/Z$a;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/vr/sdk/widgets/video/deps/Y$a;)V

    .line 71
    iget-object v0, v14, Lcom/google/vr/sdk/widgets/video/deps/Z;->r:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v15

    .line 72
    :cond_8
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->a()V

    return-object v1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->j:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/Y;

    .line 84
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->h()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(I[B)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 35
    :cond_0
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_1
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->p:I

    .line 37
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->q:[B

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ab<",
            "TT;>;)V"
        }
    .end annotation

    .line 74
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/Y;

    .line 75
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/Y;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->r:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->j:Lcom/google/vr/sdk/widgets/video/deps/ae;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ae;->a(Lcom/google/vr/sdk/widgets/video/deps/ae$b;)V

    .line 79
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->f:Lcom/google/vr/sdk/widgets/video/deps/Z$c;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/Z$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->f:Lcom/google/vr/sdk/widgets/video/deps/Z$c;

    .line 81
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->o:Landroid/os/Looper;

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->j:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;[B)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->j:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ae;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/aa;)Z
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->m:Ljava/util/UUID;

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/Z;->a(Lcom/google/vr/sdk/widgets/video/deps/aa;Ljava/util/UUID;)Lcom/google/vr/sdk/widgets/video/deps/aa$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 42
    :cond_0
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/aa;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const-string v2, "cenc"

    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "cbc1"

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "cbcs"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "cens"

    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    .line 47
    :cond_3
    :goto_0
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v2, 0x18

    if-lt p1, v2, :cond_4

    move v1, v0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v0
.end method

.method public final b(Ljava/lang/String;)[B
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/Z;->j:Lcom/google/vr/sdk/widgets/video/deps/ae;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ae;->b(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
