.class final Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bB$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:I = 0x2

.field private static final b:I = 0x7


# instance fields
.field private c:Z

.field private d:Z

.field private e:Lcom/google/vr/sdk/widgets/video/deps/gy$b;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/bB$1;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;-><init>()V

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;)Z
    .locals 3

    .line 26
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->c:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->h:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->h:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->i:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->i:I

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->j:Z

    iget-boolean v2, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->j:Z

    if-ne v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->l:Z

    iget-boolean v2, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->l:Z

    if-ne v0, v2, :cond_5

    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->f:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->f:I

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->e:Lcom/google/vr/sdk/widgets/video/deps/gy$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->h:I

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->e:Lcom/google/vr/sdk/widgets/video/deps/gy$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->h:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->o:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->o:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->p:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->p:I

    if-ne v0, v2, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->e:Lcom/google/vr/sdk/widgets/video/deps/gy$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->h:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->e:Lcom/google/vr/sdk/widgets/video/deps/gy$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/gy$b;->h:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->q:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->q:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->r:I

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->r:I

    if-ne v0, v2, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->m:Z

    iget-boolean v2, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->m:Z

    if-ne v0, v2, :cond_5

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->n:I

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->n:I

    if-eq v0, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    return v1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->a(Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->c:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->g:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->d:Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/gy$b;IIIIZZZZIIIII)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->e:Lcom/google/vr/sdk/widgets/video/deps/gy$b;

    .line 9
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->f:I

    .line 10
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->g:I

    .line 11
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->h:I

    .line 12
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->i:I

    .line 13
    iput-boolean p6, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->j:Z

    .line 14
    iput-boolean p7, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->k:Z

    .line 15
    iput-boolean p8, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->l:Z

    .line 16
    iput-boolean p9, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->m:Z

    .line 17
    iput p10, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->n:I

    .line 18
    iput p11, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->o:I

    .line 19
    iput p12, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->p:I

    .line 20
    iput p13, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->q:I

    .line 21
    iput p14, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->r:I

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->c:Z

    .line 23
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->d:Z

    return-void
.end method

.method public b()Z
    .locals 2

    .line 25
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/bB$a$a;->g:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
