.class public final Lcom/google/vr/sdk/widgets/video/deps/bx;
.super Ljava/lang/Object;
.source "DtsReader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bz;


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0xf

.field private static final e:I = 0x7ffe8001

.field private static final f:I = 0x4


# instance fields
.field private final g:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private p:I

.field private q:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/16 v1, 0xf

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 3
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v1, 0x7f

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, -0x2

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x2

    const/16 v4, -0x80

    aput-byte v4, v0, v1

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 7
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->k:I

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gA;[BI)Z
    .locals 2

    .line 40
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->l:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 41
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->l:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 42
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->l:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->l:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 3

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 45
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->m:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->m:I

    .line 46
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v2

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->m:I

    const v2, 0x7ffe8001

    if-ne v0, v2, :cond_0

    .line 48
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->m:I

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private c()V
    .locals 5

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 52
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->o:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->h:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/J;->a([BLjava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/aa;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->o:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 54
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->j:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 55
    :cond_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/J;->b([B)I

    move-result v1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->p:I

    const-wide/32 v1, 0xf4240

    .line 57
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/J;->a([B)I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v3, v1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->o:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    long-to-int v0, v3

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->n:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->k:I

    .line 11
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->l:I

    .line 12
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->m:I

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->q:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 1

    .line 14
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->a()V

    .line 15
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->i:Ljava/lang/String;

    .line 16
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->j:Lcom/google/vr/sdk/widgets/video/deps/aA;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 10

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lez v0, :cond_4

    .line 21
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->k:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->p:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->l:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->j:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v1, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 32
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->l:I

    .line 33
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->p:I

    if-ne v1, v7, :cond_0

    .line 34
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->j:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->q:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    .line 35
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->q:J

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->n:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->q:J

    .line 36
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->k:I

    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/bx;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bx;->c()V

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->j:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->g:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {v0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 29
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->k:I

    goto :goto_0

    .line 22
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bx;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 23
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->l:I

    .line 24
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bx;->k:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
