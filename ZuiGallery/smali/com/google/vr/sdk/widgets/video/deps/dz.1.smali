.class public final Lcom/google/vr/sdk/widgets/video/deps/dz;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cW;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/dz$b;,
        Lcom/google/vr/sdk/widgets/video/deps/dz$f;,
        Lcom/google/vr/sdk/widgets/video/deps/dz$e;,
        Lcom/google/vr/sdk/widgets/video/deps/dz$c;,
        Lcom/google/vr/sdk/widgets/video/deps/dz$a;,
        Lcom/google/vr/sdk/widgets/video/deps/dz$d;
    }
.end annotation


# static fields
.field public static final a:I = 0x3

.field public static final b:J = -0x1L

.field public static final c:J = 0x7530L

.field private static final d:I = 0x1388

.field private static final e:J = 0x4c4b40L

.field private static final f:Ljava/lang/String; = "DashMediaSource"


# instance fields
.field private A:Landroid/os/Handler;

.field private B:J

.field private C:I

.field private final g:Z

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/dx$a;

.field private final j:I

.field private final k:J

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/fL$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fL$a<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/google/vr/sdk/widgets/video/deps/dz$c;

.field private final o:Ljava/lang/Object;

.field private final p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/dy;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/lang/Runnable;

.field private final r:Ljava/lang/Runnable;

.field private s:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

.field private t:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private u:Lcom/google/vr/sdk/widgets/video/deps/fJ;

.field private v:Lcom/google/vr/sdk/widgets/video/deps/fK;

.field private w:Landroid/net/Uri;

.field private x:J

.field private y:J

.field private z:Lcom/google/vr/sdk/widgets/video/deps/dF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    .line 223
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/dx$a;IJLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V
    .locals 10

    .line 7
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/dG;

    invoke-direct {v3}, Lcom/google/vr/sdk/widgets/video/deps/dG;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dz;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fL$a;Lcom/google/vr/sdk/widgets/video/deps/dx$a;IJLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/dx$a;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V
    .locals 9

    const/4 v4, 0x3

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    .line 5
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/dz;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/dx$a;IJLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fL$a;Lcom/google/vr/sdk/widgets/video/deps/dx$a;IJLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/vr/sdk/widgets/video/deps/fv$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/fL$a<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/dx$a;",
            "IJ",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/cJ;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 9
    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/dz;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dF;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fL$a;Lcom/google/vr/sdk/widgets/video/deps/dx$a;IJLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dF;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fL$a;Lcom/google/vr/sdk/widgets/video/deps/dx$a;IJLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;",
            "Landroid/net/Uri;",
            "Lcom/google/vr/sdk/widgets/video/deps/fv$a;",
            "Lcom/google/vr/sdk/widgets/video/deps/fL$a<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/dx$a;",
            "IJ",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/cJ;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 13
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->w:Landroid/net/Uri;

    .line 14
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->h:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    .line 15
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->m:Lcom/google/vr/sdk/widgets/video/deps/fL$a;

    .line 16
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->i:Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    .line 17
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->j:I

    .line 18
    iput-wide p7, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->k:J

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 19
    :goto_0
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->g:Z

    .line 20
    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    invoke-direct {p3, p9, p10}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;-><init>(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    .line 21
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->o:Ljava/lang/Object;

    .line 22
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->p:Landroid/util/SparseArray;

    .line 23
    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->g:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    .line 24
    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dF;->d:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 25
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->n:Lcom/google/vr/sdk/widgets/video/deps/dz$c;

    .line 26
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->q:Ljava/lang/Runnable;

    .line 27
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->r:Ljava/lang/Runnable;

    goto :goto_1

    .line 28
    :cond_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dz$c;

    invoke-direct {p1, p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/dz$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dz;Lcom/google/vr/sdk/widgets/video/deps/dz$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->n:Lcom/google/vr/sdk/widgets/video/deps/dz$c;

    .line 29
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dz$1;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/dz$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dz;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->q:Ljava/lang/Runnable;

    .line 30
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dz$2;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/dz$2;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dz;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->r:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dF;Lcom/google/vr/sdk/widgets/video/deps/dx$a;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move v6, p3

    move-object v9, p4

    move-object/from16 v10, p5

    .line 3
    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/dz;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dF;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv$a;Lcom/google/vr/sdk/widgets/video/deps/fL$a;Lcom/google/vr/sdk/widgets/video/deps/dx$a;IJLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dF;Lcom/google/vr/sdk/widgets/video/deps/dx$a;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V
    .locals 6

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/dz;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dF;Lcom/google/vr/sdk/widgets/video/deps/dx$a;ILandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/cJ;)V

    return-void
.end method

.method private a(J)V
    .locals 0

    .line 146
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->B:J

    const/4 p1, 0x1

    .line 147
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Z)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/dP;)V
    .locals 3

    .line 126
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dP;->a:Ljava/lang/String;

    const-string/jumbo v1, "urn:mpeg:dash:utc:direct:2014"

    .line 127
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "urn:mpeg:dash:utc:direct:2012"

    .line 128
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-iso:2014"

    .line 130
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const-string/jumbo v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 131
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 133
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 134
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 136
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported UTC timing scheme"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Ljava/io/IOException;)V

    goto :goto_3

    .line 135
    :cond_3
    :goto_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dz$f;

    invoke-direct {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/dz$f;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dz$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Lcom/google/vr/sdk/widgets/video/deps/dP;Lcom/google/vr/sdk/widgets/video/deps/fL$a;)V

    goto :goto_3

    .line 132
    :cond_4
    :goto_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dz$b;

    invoke-direct {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/dz$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dz$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Lcom/google/vr/sdk/widgets/video/deps/dP;Lcom/google/vr/sdk/widgets/video/deps/fL$a;)V

    goto :goto_3

    .line 129
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->b(Lcom/google/vr/sdk/widgets/video/deps/dP;)V

    :goto_3
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/dP;Lcom/google/vr/sdk/widgets/video/deps/fL$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/dP;",
            "Lcom/google/vr/sdk/widgets/video/deps/fL$a<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fL;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->t:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dP;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/fL;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;ILcom/google/vr/sdk/widgets/video/deps/fL$a;)V

    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dz$e;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dz$e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dz;Lcom/google/vr/sdk/widgets/video/deps/dz$1;)V

    const/4 p2, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/dz;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dz;->c()V

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/dz;Z)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Z)V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/fL;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "TT;>;",
            "Lcom/google/vr/sdk/widgets/video/deps/fJ$a<",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->u:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;I)J

    move-result-wide p2

    .line 216
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->b:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJ)V

    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    .line 149
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 150
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 152
    :goto_0
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->p:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 153
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->p:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 154
    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->C:I

    if-lt v3, v4, :cond_0

    .line 155
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->p:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/dy;

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->C:I

    sub-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lcom/google/vr/sdk/widgets/video/deps/dy;->a(Lcom/google/vr/sdk/widgets/video/deps/dF;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_1
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 159
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    invoke-virtual {v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v4

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 160
    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/dF;->c(I)J

    move-result-wide v5

    .line 161
    invoke-static {v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/dz$d;->a(Lcom/google/vr/sdk/widgets/video/deps/dI;J)Lcom/google/vr/sdk/widgets/video/deps/dz$d;

    move-result-object v4

    .line 162
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 163
    invoke-virtual {v5, v2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v5

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    invoke-virtual {v6, v2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->c(I)J

    move-result-wide v6

    .line 164
    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/dz$d;->a(Lcom/google/vr/sdk/widgets/video/deps/dI;J)Lcom/google/vr/sdk/widgets/video/deps/dz$d;

    move-result-object v5

    .line 165
    iget-wide v6, v4, Lcom/google/vr/sdk/widgets/video/deps/dz$d;->b:J

    .line 166
    iget-wide v8, v5, Lcom/google/vr/sdk/widgets/video/deps/dz$d;->c:J

    .line 167
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-boolean v4, v4, Lcom/google/vr/sdk/widgets/video/deps/dF;->d:Z

    const-wide/16 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_5

    iget-boolean v4, v5, Lcom/google/vr/sdk/widgets/video/deps/dz$d;->a:Z

    if-nez v4, :cond_5

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/dz;->e()J

    move-result-wide v4

    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-wide v14, v14, Lcom/google/vr/sdk/widgets/video/deps/dF;->a:J

    invoke-static {v14, v15}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    .line 169
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 170
    invoke-virtual {v14, v2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v14

    iget-wide v14, v14, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    invoke-static {v14, v15}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    .line 171
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 172
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-wide v4, v4, Lcom/google/vr/sdk/widgets/video/deps/dF;->f:J

    cmp-long v4, v4, v12

    if-eqz v4, :cond_4

    .line 173
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-wide v4, v4, Lcom/google/vr/sdk/widgets/video/deps/dF;->f:J

    invoke-static {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v4

    sub-long v4, v8, v4

    :goto_1
    cmp-long v14, v4, v10

    if-gez v14, :cond_2

    if-lez v2, :cond_2

    .line 177
    iget-object v14, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->c(I)J

    move-result-wide v14

    add-long/2addr v4, v14

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 179
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_2

    .line 180
    :cond_3
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dF;->c(I)J

    move-result-wide v4

    :goto_2
    move-wide v6, v4

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    move-wide/from16 v20, v6

    sub-long v8, v8, v20

    move v4, v1

    move-wide/from16 v22, v8

    .line 183
    :goto_4
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_6

    .line 184
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    invoke-virtual {v5, v4}, Lcom/google/vr/sdk/widgets/video/deps/dF;->c(I)J

    move-result-wide v5

    add-long v22, v22, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 187
    :cond_6
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-boolean v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dF;->d:Z

    if-eqz v3, :cond_9

    .line 188
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->k:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_8

    .line 190
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dF;->g:J

    cmp-long v3, v3, v12

    if-eqz v3, :cond_7

    .line 191
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dF;->g:J

    goto :goto_5

    :cond_7
    const-wide/16 v3, 0x7530

    .line 192
    :cond_8
    :goto_5
    invoke-static {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v3

    sub-long v10, v22, v3

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v10, v3

    if-gez v5, :cond_9

    const-wide/16 v5, 0x2

    .line 194
    div-long v5, v22, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    :cond_9
    move-wide/from16 v24, v10

    .line 195
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dF;->a:J

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 196
    invoke-virtual {v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v1

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    add-long/2addr v3, v5

    invoke-static/range {v20 .. v21}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v5

    add-long v17, v3, v5

    .line 197
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/dz$a;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dF;->a:J

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->C:I

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    move-object v14, v1

    move-wide v15, v3

    move/from16 v19, v5

    move-object/from16 v26, v6

    invoke-direct/range {v14 .. v26}, Lcom/google/vr/sdk/widgets/video/deps/dz$a;-><init>(JJIJJJLcom/google/vr/sdk/widgets/video/deps/dF;)V

    .line 198
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->s:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    invoke-interface {v3, v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/cW$a;->a(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    .line 199
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->g:Z

    if-nez v1, :cond_b

    .line 200
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->A:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v2, :cond_a

    .line 202
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->A:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->r:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    if-eqz p1, :cond_b

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/dz;->d()V

    :cond_b
    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/dP;)V
    .locals 4

    .line 138
    :try_start_0
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dP;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->f(Ljava/lang/String;)J

    move-result-wide v0

    .line 139
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->y:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(J)V
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/r; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 142
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->w:Landroid/net/Uri;

    .line 123
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fL;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->t:Lcom/google/vr/sdk/widgets/video/deps/fv;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->m:Lcom/google/vr/sdk/widgets/video/deps/fL$a;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/fL;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Landroid/net/Uri;ILcom/google/vr/sdk/widgets/video/deps/fL$a;)V

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->n:Lcom/google/vr/sdk/widgets/video/deps/dz$c;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->j:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Lcom/google/vr/sdk/widgets/video/deps/fL;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;I)V

    return-void

    :catchall_0
    move-exception v1

    .line 123
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-wide/16 v0, 0x1388

    .line 211
    :cond_1
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->x:J

    add-long/2addr v4, v0

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 213
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->A:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->q:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private e()J
    .locals 4

    .line 218
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->B:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->B:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v0

    return-wide v0

    .line 220
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJLjava/io/IOException;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v9, p6

    .line 102
    instance-of v11, v9, Lcom/google/vr/sdk/widgets/video/deps/r;

    move-object v12, p0

    .line 103
    iget-object v1, v12, Lcom/google/vr/sdk/widgets/video/deps/dz;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fL;->b:I

    .line 104
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->e()J

    move-result-wide v7

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-wide v3, p2

    move-wide/from16 v5, p4

    move v10, v11

    .line 105
    invoke-virtual/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJLjava/io/IOException;Z)V

    if-eqz v11, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cW$b;Lcom/google/vr/sdk/widgets/video/deps/fn;)Lcom/google/vr/sdk/widgets/video/deps/cV;
    .locals 11

    .line 48
    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    .line 49
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 50
    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(J)Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    move-result-object v6

    .line 52
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dy;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->C:I

    add-int v1, v0, v3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->i:Lcom/google/vr/sdk/widgets/video/deps/dx$a;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->j:I

    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->B:J

    iget-object v9, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->v:Lcom/google/vr/sdk/widgets/video/deps/fK;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/dy;-><init>(ILcom/google/vr/sdk/widgets/video/deps/dF;ILcom/google/vr/sdk/widgets/video/deps/dx$a;ILcom/google/vr/sdk/widgets/video/deps/cJ$a;JLcom/google/vr/sdk/widgets/video/deps/fK;Lcom/google/vr/sdk/widgets/video/deps/fn;)V

    .line 53
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->p:Landroid/util/SparseArray;

    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/dy;->a:I

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->v:Lcom/google/vr/sdk/widgets/video/deps/fK;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fK;->d()V

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->w:Landroid/net/Uri;

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cV;)V
    .locals 1

    .line 55
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dy;

    .line 56
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/dy;->f()V

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->p:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dy;->a:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/fL;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Lcom/google/vr/sdk/widgets/video/deps/dF;",
            ">;JJ)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->b:I

    .line 74
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->e()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 75
    invoke-virtual/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJ)V

    .line 76
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 77
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a()I

    move-result v1

    .line 79
    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    :goto_1
    if-ge v2, v1, :cond_1

    .line 80
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 81
    invoke-virtual {v5, v2}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a(I)Lcom/google/vr/sdk/widgets/video/deps/dI;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/vr/sdk/widgets/video/deps/dI;->b:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sub-int v3, v1, v2

    .line 83
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/dF;->a()I

    move-result v4

    if-le v3, v4, :cond_2

    const-string p1, "DashMediaSource"

    const-string p2, "Out of sync manifest"

    .line 84
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dz;->d()V

    return-void

    .line 87
    :cond_2
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    sub-long p4, p2, p4

    .line 88
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->x:J

    .line 89
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->y:J

    .line 90
    iget-object p2, v0, Lcom/google/vr/sdk/widgets/video/deps/dF;->i:Landroid/net/Uri;

    if-eqz p2, :cond_4

    .line 91
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->o:Ljava/lang/Object;

    monitor-enter p2

    .line 92
    :try_start_0
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fy;->c:Landroid/net/Uri;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->w:Landroid/net/Uri;

    if-ne p1, p3, :cond_3

    .line 93
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dF;->i:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->w:Landroid/net/Uri;

    .line 94
    :cond_3
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_2
    const/4 p1, 0x1

    if-nez v1, :cond_6

    .line 96
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/dF;->h:Lcom/google/vr/sdk/widgets/video/deps/dP;

    if-eqz p2, :cond_5

    .line 97
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dF;->h:Lcom/google/vr/sdk/widgets/video/deps/dP;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Lcom/google/vr/sdk/widgets/video/deps/dP;)V

    goto :goto_3

    .line 98
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Z)V

    goto :goto_3

    .line 99
    :cond_6
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->C:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->C:I

    .line 100
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Z)V

    :goto_3
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/h;ZLcom/google/vr/sdk/widgets/video/deps/cW$a;)V
    .locals 0

    .line 36
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->s:Lcom/google/vr/sdk/widgets/video/deps/cW$a;

    .line 37
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->g:Z

    if-eqz p1, :cond_0

    .line 38
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fK$a;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/fK$a;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->v:Lcom/google/vr/sdk/widgets/video/deps/fK;

    const/4 p1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Z)V

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->h:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/fv$a;->a()Lcom/google/vr/sdk/widgets/video/deps/fv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->t:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 41
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fJ;

    const-string p2, "Loader:DashMediaSource"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fJ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->u:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    .line 42
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->v:Lcom/google/vr/sdk/widgets/video/deps/fK;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->A:Landroid/os/Handler;

    .line 44
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/dz;->c()V

    :goto_0
    return-void
.end method

.method b(Lcom/google/vr/sdk/widgets/video/deps/fL;JJLjava/io/IOException;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 112
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/dz;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/fL;->b:I

    .line 113
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->e()J

    move-result-wide v8

    const/4 v11, 0x1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v10, p6

    .line 114
    invoke-virtual/range {v1 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJLjava/io/IOException;Z)V

    move-object/from16 v1, p6

    .line 115
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(Ljava/io/IOException;)V

    const/4 v1, 0x2

    return v1
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->t:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 60
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->v:Lcom/google/vr/sdk/widgets/video/deps/fK;

    .line 61
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->u:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->c()V

    .line 63
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->u:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    :cond_0
    const-wide/16 v1, 0x0

    .line 64
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->x:J

    .line 65
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->y:J

    .line 66
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->z:Lcom/google/vr/sdk/widgets/video/deps/dF;

    .line 67
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->A:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 68
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 69
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->A:Landroid/os/Handler;

    .line 70
    :cond_1
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->B:J

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->p:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method b(Lcom/google/vr/sdk/widgets/video/deps/fL;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->b:I

    .line 108
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->e()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 109
    invoke-virtual/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJ)V

    .line 110
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    sub-long/2addr p4, p2

    invoke-direct {p0, p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/dz;->a(J)V

    return-void
.end method

.method c(Lcom/google/vr/sdk/widgets/video/deps/fL;JJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/fL<",
            "*>;JJ)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dz;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fL;->b:I

    .line 118
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fL;->e()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    .line 119
    invoke-virtual/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b(Lcom/google/vr/sdk/widgets/video/deps/fy;IJJJ)V

    return-void
.end method
