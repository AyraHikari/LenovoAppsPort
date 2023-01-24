.class public final Lcom/google/vr/sdk/widgets/video/deps/bt;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/bt$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x0

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x8


# instance fields
.field private final e:Lcom/google/vr/sdk/widgets/video/deps/gz;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/aA;

.field private j:I

.field private k:I

.field private l:Z

.field private m:J

.field private n:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private o:I

.field private p:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/bt;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->e:Lcom/google/vr/sdk/widgets/video/deps/gz;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->e:Lcom/google/vr/sdk/widgets/video/deps/gz;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/gz;->a:[B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([B)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->j:I

    .line 7
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/gA;[BI)Z
    .locals 2

    .line 41
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->k:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 42
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->k:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 43
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->k:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 5

    .line 45
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    .line 46
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->l:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->l:Z

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    .line 51
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->l:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    move v1, v3

    .line 53
    :cond_3
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->l:Z

    goto :goto_0

    :cond_4
    return v1
.end method

.method private c()V
    .locals 14

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->e:Lcom/google/vr/sdk/widgets/video/deps/gz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gz;->a(I)V

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->e:Lcom/google/vr/sdk/widgets/video/deps/gz;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/A;->a(Lcom/google/vr/sdk/widgets/video/deps/gz;)Lcom/google/vr/sdk/widgets/video/deps/A$a;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->n:Lcom/google/vr/sdk/widgets/video/deps/m;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/A$a;->h:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->n:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->t:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/A$a;->g:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->n:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/A$a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->n:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    .line 59
    :cond_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->h:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/A$a;->e:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/A$a;->h:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/A$a;->g:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->g:Ljava/lang/String;

    invoke-static/range {v3 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/aa;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/m;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->n:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 60
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->i:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)V

    .line 61
    :cond_1
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/A$a;->i:I

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->o:I

    const-wide/32 v1, 0xf4240

    .line 62
    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/A$a;->j:I

    int-to-long v3, v0

    mul-long/2addr v3, v1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->n:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/m;->u:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->m:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->j:I

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->k:I

    .line 11
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->l:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->p:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/au;Lcom/google/vr/sdk/widgets/video/deps/bO$d;)V
    .locals 1

    .line 13
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->a()V

    .line 14
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->h:Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bO$d;->b()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/au;->a(II)Lcom/google/vr/sdk/widgets/video/deps/aA;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->i:Lcom/google/vr/sdk/widgets/video/deps/aA;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 10

    .line 19
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    if-lez v0, :cond_4

    .line 20
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->j:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->o:I

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->k:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 32
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->i:Lcom/google/vr/sdk/widgets/video/deps/aA;

    invoke-interface {v2, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 33
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->k:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->k:I

    .line 34
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->o:I

    if-ne v2, v7, :cond_0

    .line 35
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->i:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->p:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    .line 36
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->p:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->m:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->p:J

    .line 37
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->j:I

    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v3, 0x8

    invoke-direct {p0, p1, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/bt;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bt;->c()V

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 29
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->i:Lcom/google/vr/sdk/widgets/video/deps/aA;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-interface {v0, v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    .line 30
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->j:I

    goto :goto_0

    .line 21
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bt;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->j:I

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->f:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    .line 25
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/bt;->k:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
