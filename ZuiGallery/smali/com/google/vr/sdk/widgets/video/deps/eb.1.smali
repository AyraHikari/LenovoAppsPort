.class final Lcom/google/vr/sdk/widgets/video/deps/eb;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/au;
.implements Lcom/google/vr/sdk/widgets/video/deps/da$b;
.implements Lcom/google/vr/sdk/widgets/video/deps/dc;
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$a;
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/eb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/au;",
        "Lcom/google/vr/sdk/widgets/video/deps/da$b;",
        "Lcom/google/vr/sdk/widgets/video/deps/dc;",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/dm;",
        ">;",
        "Lcom/google/vr/sdk/widgets/video/deps/fJ$d;"
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3


# instance fields
.field private A:Z

.field private B:[Z

.field private C:[Z

.field private D:J

.field private E:J

.field private F:Z

.field private G:Z

.field private H:Z

.field private final e:I

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/eb$a;

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/dU;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/fn;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final j:I

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

.field private final l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

.field private final m:Lcom/google/vr/sdk/widgets/video/deps/dU$b;

.field private final n:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/vr/sdk/widgets/video/deps/dX;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/Runnable;

.field private final p:Landroid/os/Handler;

.field private q:[Lcom/google/vr/sdk/widgets/video/deps/da;

.field private r:[I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private w:I

.field private x:Z

.field private y:Lcom/google/vr/sdk/widgets/video/deps/di;

.field private z:I


# direct methods
.method public constructor <init>(ILcom/google/vr/sdk/widgets/video/deps/eb$a;Lcom/google/vr/sdk/widgets/video/deps/dU;Lcom/google/vr/sdk/widgets/video/deps/fn;JLcom/google/vr/sdk/widgets/video/deps/m;ILcom/google/vr/sdk/widgets/video/deps/cJ$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->e:I

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->f:Lcom/google/vr/sdk/widgets/video/deps/eb$a;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    .line 5
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->h:Lcom/google/vr/sdk/widgets/video/deps/fn;

    .line 6
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 7
    iput p8, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->j:I

    .line 8
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fJ;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fJ;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    .line 10
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dU$b;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/dU$b;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->m:Lcom/google/vr/sdk/widgets/video/deps/dU$b;

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 11
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->r:[I

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 12
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 13
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    .line 14
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/eb$1;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/eb$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/eb;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->o:Ljava/lang/Runnable;

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Landroid/os/Handler;

    .line 16
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:J

    .line 17
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:J

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 9

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 315
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gx;->h(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 317
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 319
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    move-object v3, v0

    .line 320
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->d:I

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->l:I

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->m:I

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->z:I

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/m;->A:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 333
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 335
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "(\\s*,\\s*)|(\\s*$)"

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 340
    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/gx;->i(Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_2

    .line 341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, ","

    .line 342
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/eb;)V
    .locals 0

    .line 350
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->k()V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/dX;)Z
    .locals 4

    .line 153
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dX;->j:I

    const/4 v0, 0x0

    move v1, v0

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->B:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/da;->f()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/dm;)Z
    .locals 0

    .line 321
    instance-of p1, p1, Lcom/google/vr/sdk/widgets/video/deps/dX;

    return p1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 334
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(IZ)V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->B:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x1

    if-eq v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 309
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->B:[Z

    aput-boolean p2, v0, p1

    .line 310
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:I

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:I

    return-void
.end method

.method private b(J)Z
    .locals 7

    .line 323
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 325
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object v4, v4, v2

    .line 326
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/da;->i()V

    .line 327
    invoke-virtual {v4, p1, p2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(JZZ)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    .line 328
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->A:Z

    if-nez v3, :cond_2

    :cond_1
    return v1

    .line 330
    :cond_2
    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/da;->j()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private j()V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 160
    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->F:Z

    invoke-virtual {v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    :cond_0
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->F:Z

    return-void
.end method

.method private k()V
    .locals 4

    .line 255
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->x:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 258
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/da;->g()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->l()V

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:Z

    .line 263
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->f:Lcom/google/vr/sdk/widgets/video/deps/eb$a;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/eb$a;->g()V

    :cond_3
    :goto_1
    return-void
.end method

.method private l()V
    .locals 14

    .line 267
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v0, v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v5, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v6, 0x3

    const/4 v7, 0x1

    if-ge v3, v0, :cond_5

    .line 269
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/google/vr/sdk/widgets/video/deps/da;->g()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v8

    iget-object v8, v8, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 270
    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/gx;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 272
    :cond_0
    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    .line 274
    :cond_1
    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/gx;->c(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    if-le v6, v4, :cond_3

    move v5, v3

    move v4, v6

    goto :goto_2

    :cond_3
    if-ne v6, v4, :cond_4

    if-eq v5, v1, :cond_4

    move v5, v1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    :cond_5
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/dU;->b()Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v3

    .line 284
    iget v8, v3, Lcom/google/vr/sdk/widgets/video/deps/dh;->a:I

    .line 285
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->z:I

    .line 286
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->B:[Z

    .line 287
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:[Z

    .line 288
    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/dh;

    move v9, v2

    :goto_3
    if-ge v9, v0, :cond_b

    .line 290
    iget-object v10, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/google/vr/sdk/widgets/video/deps/da;->g()Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v10

    .line 291
    iget-object v11, v10, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    .line 292
    invoke-static {v11}, Lcom/google/vr/sdk/widgets/video/deps/gx;->b(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    invoke-static {v11}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_4

    :cond_6
    move v11, v2

    goto :goto_5

    :cond_7
    :goto_4
    move v11, v7

    .line 293
    :goto_5
    iget-object v12, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->C:[Z

    aput-boolean v11, v12, v9

    .line 294
    iget-boolean v12, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->A:Z

    or-int/2addr v11, v12

    iput-boolean v11, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->A:Z

    if-ne v9, v5, :cond_9

    .line 296
    new-array v11, v8, [Lcom/google/vr/sdk/widgets/video/deps/m;

    move v12, v2

    :goto_6
    if-ge v12, v8, :cond_8

    .line 298
    invoke-virtual {v3, v12}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v13

    invoke-static {v13, v10}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 300
    :cond_8
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/dh;

    invoke-direct {v10, v11}, Lcom/google/vr/sdk/widgets/video/deps/dh;-><init>([Lcom/google/vr/sdk/widgets/video/deps/m;)V

    aput-object v10, v1, v9

    .line 301
    iput v9, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->z:I

    goto :goto_8

    :cond_9
    if-ne v4, v6, :cond_a

    .line 303
    iget-object v11, v10, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/vr/sdk/widgets/video/deps/gx;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->i:Lcom/google/vr/sdk/widgets/video/deps/m;

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    .line 304
    :goto_7
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/dh;

    new-array v13, v7, [Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-static {v11, v10}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v10

    aput-object v10, v13, v2

    invoke-direct {v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/dh;-><init>([Lcom/google/vr/sdk/widgets/video/deps/m;)V

    aput-object v12, v1, v9

    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 306
    :cond_b
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/di;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/di;-><init>([Lcom/google/vr/sdk/widgets/video/deps/dh;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->y:Lcom/google/vr/sdk/widgets/video/deps/di;

    return-void
.end method

.method private m()Z
    .locals 4

    .line 322
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a(IJ)I
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object p1, v0, p1

    .line 149
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->h()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->l()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 151
    invoke-virtual {p1, p2, p3, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(JZZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method a(ILcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I
    .locals 9

    .line 137
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dX;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/dX;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dX;

    .line 143
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 144
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {v8, v1}, Lcom/google/vr/sdk/widgets/video/deps/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->e:I

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->d:I

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->e:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->f:J

    move-object v3, v8

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(ILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;J)V

    .line 146
    :cond_2
    iput-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object v1, v0, p1

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Z

    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:J

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;ZZJ)I

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJLjava/io/IOException;)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 208
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dm;->f()J

    move-result-wide v2

    .line 209
    invoke-direct/range {p0 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    .line 212
    :goto_1
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    move-object/from16 v14, p6

    invoke-virtual {v3, v1, v2, v14}, Lcom/google/vr/sdk/widgets/video/deps/dU;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;ZLjava/io/IOException;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v4, :cond_4

    .line 214
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dX;

    if-ne v2, v1, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v6

    .line 215
    :goto_2
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 216
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    iget-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:J

    iput-wide v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:J

    goto :goto_3

    :cond_3
    move v5, v6

    .line 219
    :cond_4
    :goto_3
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v9, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->b:I

    iget v10, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->e:I

    iget-object v11, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v12, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->d:I

    iget-object v13, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->e:Ljava/lang/Object;

    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->f:J

    move-wide v14, v2

    iget-wide v2, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->g:J

    move-wide/from16 v16, v2

    .line 220
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dm;->f()J

    move-result-wide v22

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    move-object/from16 v24, p6

    move/from16 v25, v5

    .line 221
    invoke-virtual/range {v7 .. v25}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v5, :cond_6

    .line 223
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:Z

    if-nez v1, :cond_5

    .line 224
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eb;->c(J)Z

    goto :goto_4

    .line 225
    :cond_5
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->f:Lcom/google/vr/sdk/widgets/video/deps/eb$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    :goto_4
    const/4 v1, 0x2

    return v1

    :cond_6
    return v6
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJLjava/io/IOException;)I
    .locals 0

    .line 346
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dm;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public synthetic a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;
    .locals 0

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(II)Lcom/google/vr/sdk/widgets/video/deps/da;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:Z

    .line 250
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(IZ)V
    .locals 5

    .line 228
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->w:I

    .line 229
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 230
    invoke-virtual {v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 233
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length p2, p1

    :goto_1
    if-ge v2, p2, :cond_1

    aget-object v0, p1, v2

    .line 234
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/da;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 5

    .line 88
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 90
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->B:[Z

    aget-boolean v4, v4, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/az;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 192
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/dU;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;)V

    .line 193
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->b:I

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->e:I

    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v7, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->d:I

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->e:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->f:J

    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->g:J

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dm;->f()J

    move-result-wide v17

    .line 195
    invoke-virtual/range {v2 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V

    .line 196
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:Z

    if-nez v1, :cond_0

    .line 197
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:J

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eb;->c(J)Z

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->f:Lcom/google/vr/sdk/widgets/video/deps/eb$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJZ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    .line 200
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v4, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->b:I

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->e:I

    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v7, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->d:I

    iget-object v8, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->e:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->f:J

    iget-wide v11, v1, Lcom/google/vr/sdk/widgets/video/deps/dm;->g:J

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/dm;->f()J

    move-result-wide v17

    .line 202
    invoke-virtual/range {v2 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->b(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_0

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->j()V

    .line 205
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:I

    if-lez v1, :cond_0

    .line 206
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->f:Lcom/google/vr/sdk/widgets/video/deps/eb$a;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dU;->a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;J)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJ)V
    .locals 0

    .line 348
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dm;

    invoke-virtual/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJ)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;JJZ)V
    .locals 0

    .line 347
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/dm;

    invoke-virtual/range {p0 .. p6}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;JJZ)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 1

    .line 253
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dU;->a(Z)V

    return-void
.end method

.method a(I)Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->d()Z

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

.method public a(JZ)Z
    .locals 1

    .line 93
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:J

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->m()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(J)Z

    move-result p3

    if-eqz p3, :cond_0

    return v0

    .line 96
    :cond_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:J

    .line 97
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Z

    .line 98
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 99
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->b()V

    goto :goto_0

    .line 101
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->j()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public a([Lcom/google/vr/sdk/widgets/video/deps/fi;[Z[Lcom/google/vr/sdk/widgets/video/deps/db;[ZJZ)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p5

    .line 29
    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:Z

    invoke-static {v5}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 30
    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:I

    const/4 v6, 0x0

    move v7, v6

    .line 31
    :goto_0
    array-length v8, v1

    const/4 v9, 0x0

    if-ge v7, v8, :cond_2

    .line 32
    aget-object v8, v2, v7

    if-eqz v8, :cond_1

    aget-object v8, v1, v7

    if-eqz v8, :cond_0

    aget-boolean v8, p2, v7

    if-nez v8, :cond_1

    .line 33
    :cond_0
    aget-object v8, v2, v7

    check-cast v8, Lcom/google/vr/sdk/widgets/video/deps/ea;

    iget v8, v8, Lcom/google/vr/sdk/widgets/video/deps/ea;->a:I

    .line 34
    invoke-direct {p0, v8, v6}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(IZ)V

    .line 35
    aput-object v9, v2, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    if-nez p7, :cond_5

    .line 37
    iget-boolean v8, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->G:Z

    if-eqz v8, :cond_3

    if-nez v5, :cond_4

    goto :goto_1

    :cond_3
    iget-wide v10, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:J

    cmp-long v5, v3, v10

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v7

    .line 38
    :goto_2
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    invoke-virtual {v8}, Lcom/google/vr/sdk/widgets/video/deps/dU;->c()Lcom/google/vr/sdk/widgets/video/deps/fi;

    move-result-object v8

    move v10, v6

    move-object v11, v8

    .line 40
    :goto_3
    array-length v12, v1

    if-ge v10, v12, :cond_9

    .line 41
    aget-object v12, v2, v10

    if-nez v12, :cond_8

    aget-object v12, v1, v10

    if-eqz v12, :cond_8

    .line 42
    aget-object v12, v1, v10

    .line 43
    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->y:Lcom/google/vr/sdk/widgets/video/deps/di;

    invoke-interface {v12}, Lcom/google/vr/sdk/widgets/video/deps/fi;->d()Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/vr/sdk/widgets/video/deps/di;->a(Lcom/google/vr/sdk/widgets/video/deps/dh;)I

    move-result v13

    .line 44
    invoke-direct {p0, v13, v7}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(IZ)V

    .line 45
    iget v14, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->z:I

    if-ne v13, v14, :cond_6

    .line 47
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    invoke-virtual {v11, v12}, Lcom/google/vr/sdk/widgets/video/deps/dU;->a(Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    move-object v11, v12

    .line 48
    :cond_6
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/ea;

    invoke-direct {v12, p0, v13}, Lcom/google/vr/sdk/widgets/video/deps/ea;-><init>(Lcom/google/vr/sdk/widgets/video/deps/eb;I)V

    aput-object v12, v2, v10

    .line 49
    aput-boolean v7, p4, v10

    if-nez v5, :cond_8

    .line 51
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object v5, v5, v13

    .line 52
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/da;->i()V

    .line 53
    invoke-virtual {v5, v3, v4, v7, v7}, Lcom/google/vr/sdk/widgets/video/deps/da;->b(JZZ)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_7

    .line 54
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/da;->e()I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v7

    goto :goto_4

    :cond_7
    move v5, v6

    :cond_8
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 56
    :cond_9
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->u:I

    if-nez v1, :cond_c

    .line 57
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/dU;->d()V

    .line 58
    iput-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->v:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 59
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 60
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 61
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v2, v1

    :goto_5
    if-ge v6, v2, :cond_a

    aget-object v3, v1, v6

    .line 62
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/da;->k()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 64
    :cond_a
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->b()V

    goto :goto_a

    .line 65
    :cond_b
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->j()V

    goto :goto_a

    .line 66
    :cond_c
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 67
    invoke-static {v11, v8}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 69
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->G:Z

    if-nez v1, :cond_e

    const-wide/16 v8, 0x0

    .line 70
    invoke-interface {v11, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/fi;->a(J)V

    .line 71
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/dU;->b()Lcom/google/vr/sdk/widgets/video/deps/dh;

    move-result-object v1

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/vr/sdk/widgets/video/deps/dX;

    iget-object v8, v8, Lcom/google/vr/sdk/widgets/video/deps/dX;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-virtual {v1, v8}, Lcom/google/vr/sdk/widgets/video/deps/dh;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)I

    move-result v1

    .line 72
    invoke-interface {v11}, Lcom/google/vr/sdk/widgets/video/deps/fi;->g()I

    move-result v8

    if-eq v8, v1, :cond_d

    goto :goto_6

    :cond_d
    move v1, v6

    goto :goto_7

    :cond_e
    :goto_6
    move v1, v7

    :goto_7
    if-eqz v1, :cond_f

    .line 79
    iput-boolean v7, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->F:Z

    move v1, v7

    move v5, v1

    goto :goto_8

    :cond_f
    move/from16 v1, p7

    :goto_8
    if-eqz v5, :cond_11

    .line 81
    invoke-virtual {p0, v3, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(JZ)Z

    .line 82
    :goto_9
    array-length v1, v2

    if-ge v6, v1, :cond_11

    .line 83
    aget-object v1, v2, v6

    if-eqz v1, :cond_10

    .line 84
    aput-boolean v7, p4, v6

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 86
    :cond_11
    :goto_a
    iput-boolean v7, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->G:Z

    return v5
.end method

.method public b(II)Lcom/google/vr/sdk/widgets/video/deps/da;
    .locals 3

    .line 237
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length p2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 239
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->r:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/da;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->h:Lcom/google/vr/sdk/widgets/video/deps/fn;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/da;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fn;)V

    .line 243
    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/da$b;)V

    .line 244
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->r:[I

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->r:[I

    .line 245
    aput p1, v1, p2

    .line 246
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/da;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    .line 247
    aput-object v0, p1, p2

    return-object v0
.end method

.method public b()V
    .locals 2

    .line 19
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:Z

    if-nez v0, :cond_0

    .line 20
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:J

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->c(J)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/m;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eb;->b(II)Lcom/google/vr/sdk/widgets/video/deps/da;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/da;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->s:Z

    .line 24
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->k()V

    return-void
.end method

.method public c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->i()V

    return-void
.end method

.method public c(J)Z
    .locals 19

    move-object/from16 v0, p0

    .line 164
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Z

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 166
    :cond_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/dX;

    .line 167
    :goto_0
    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move-wide/from16 v4, p1

    :goto_1
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->m:Lcom/google/vr/sdk/widgets/video/deps/dU$b;

    .line 168
    invoke-virtual {v1, v3, v4, v5, v8}, Lcom/google/vr/sdk/widgets/video/deps/dU;->a(Lcom/google/vr/sdk/widgets/video/deps/dX;JLcom/google/vr/sdk/widgets/video/deps/dU$b;)V

    .line 169
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->m:Lcom/google/vr/sdk/widgets/video/deps/dU$b;

    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->b:Z

    .line 170
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->m:Lcom/google/vr/sdk/widgets/video/deps/dU$b;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->a:Lcom/google/vr/sdk/widgets/video/deps/dm;

    .line 171
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->m:Lcom/google/vr/sdk/widgets/video/deps/dU$b;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->c:Lcom/google/vr/sdk/widgets/video/deps/eg$a;

    .line 172
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->m:Lcom/google/vr/sdk/widgets/video/deps/dU$b;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/dU$b;->a()V

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 174
    iput-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:J

    .line 175
    iput-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Z

    return v5

    :cond_3
    if-nez v3, :cond_5

    if-eqz v4, :cond_4

    .line 179
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->f:Lcom/google/vr/sdk/widgets/video/deps/eb$a;

    invoke-interface {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/eb$a;->a(Lcom/google/vr/sdk/widgets/video/deps/eg$a;)V

    :cond_4
    return v2

    .line 181
    :cond_5
    invoke-direct {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/eb;->a(Lcom/google/vr/sdk/widgets/video/deps/dm;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 182
    iput-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:J

    .line 183
    move-object v1, v3

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/dX;

    .line 184
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/dX;->a(Lcom/google/vr/sdk/widgets/video/deps/eb;)V

    .line 185
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_6
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->j:I

    invoke-virtual {v1, v3, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;I)J

    move-result-wide v17

    .line 187
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->l:Lcom/google/vr/sdk/widgets/video/deps/cJ$a;

    iget-object v7, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->a:Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget v8, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->b:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/eb;->e:I

    iget-object v10, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->c:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v11, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->d:I

    iget-object v12, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->e:Ljava/lang/Object;

    iget-wide v13, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->f:J

    iget-wide v1, v3, Lcom/google/vr/sdk/widgets/video/deps/dm;->g:J

    move-wide v15, v1

    invoke-virtual/range {v6 .. v18}, Lcom/google/vr/sdk/widgets/video/deps/cJ$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;IILcom/google/vr/sdk/widgets/video/deps/m;ILjava/lang/Object;JJJ)V

    return v5

    :cond_7
    :goto_2
    return v2
.end method

.method public d()J
    .locals 7

    .line 103
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:J

    return-wide v0

    .line 107
    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->D:J

    .line 108
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dX;

    .line 109
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/dX;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/dX;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 112
    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/dX;->g:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 113
    :cond_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 115
    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/da;->h()J

    move-result-wide v5

    .line 116
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 189
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->E:J

    return-wide v0

    .line 191
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->H:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/dX;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/dX;->g:J

    :goto_0
    return-wide v0
.end method

.method public f()Lcom/google/vr/sdk/widgets/video/deps/di;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->y:Lcom/google/vr/sdk/widgets/video/deps/di;

    return-object v0
.end method

.method public g()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/eb;->j()V

    return-void
.end method

.method public h()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$d;)Z

    move-result v0

    .line 120
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->t:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->q:[Lcom/google/vr/sdk/widgets/video/deps/da;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 122
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/da;->k()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->x:Z

    return-void
.end method

.method i()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->k:Lcom/google/vr/sdk/widgets/video/deps/fJ;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->d()V

    .line 135
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eb;->g:Lcom/google/vr/sdk/widgets/video/deps/dU;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/dU;->a()V

    return-void
.end method
