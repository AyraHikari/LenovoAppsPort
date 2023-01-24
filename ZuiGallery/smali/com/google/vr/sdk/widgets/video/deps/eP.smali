.class final Lcom/google/vr/sdk/widgets/video/deps/eP;
.super Ljava/lang/Object;
.source "TtmlStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/eP$b;,
        Lcom/google/vr/sdk/widgets/video/deps/eP$a;,
        Lcom/google/vr/sdk/widgets/video/deps/eP$c;
    }
.end annotation


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field private static final i:I = 0x0

.field private static final j:I = 0x1


# instance fields
.field private k:Ljava/lang/String;

.field private l:I

.field private m:Z

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:F

.field private v:Ljava/lang/String;

.field private w:Lcom/google/vr/sdk/widgets/video/deps/eP;

.field private x:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->p:I

    .line 3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->q:I

    .line 4
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->r:I

    .line 5
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->s:I

    .line 6
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->t:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/eP;Z)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 2

    if-eqz p1, :cond_8

    .line 49
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->m:Z

    if-eqz v0, :cond_0

    .line 50
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->l:I

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(I)Lcom/google/vr/sdk/widgets/video/deps/eP;

    .line 51
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 52
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->r:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->r:I

    .line 53
    :cond_1
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->s:I

    if-ne v0, v1, :cond_2

    .line 54
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->s:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->s:I

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->k:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->k:Ljava/lang/String;

    .line 57
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->p:I

    if-ne v0, v1, :cond_4

    .line 58
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->p:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->p:I

    .line 59
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->q:I

    if-ne v0, v1, :cond_5

    .line 60
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->q:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->q:I

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->x:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 62
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->x:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->x:Landroid/text/Layout$Alignment;

    .line 63
    :cond_6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->t:I

    if-ne v0, v1, :cond_7

    .line 64
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->t:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->t:I

    .line 65
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->u:F

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->u:F

    :cond_7
    if-eqz p2, :cond_8

    .line 66
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->o:Z

    if-nez p2, :cond_8

    iget-boolean p2, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->o:Z

    if-eqz p2, :cond_8

    .line 67
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eP;->n:I

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eP;->b(I)Lcom/google/vr/sdk/widgets/video/deps/eP;

    :cond_8
    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 8
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->s:I

    if-ne v0, v1, :cond_0

    return v1

    .line 10
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 11
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->s:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public a(F)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 0

    .line 75
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->u:F

    return-object p0
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->w:Lcom/google/vr/sdk/widgets/video/deps/eP;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 35
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->l:I

    .line 36
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->m:Z

    return-object p0
.end method

.method public a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->x:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;Z)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->w:Lcom/google/vr/sdk/widgets/video/deps/eP;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 29
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->k:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->w:Lcom/google/vr/sdk/widgets/video/deps/eP;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 15
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->p:I

    return-object p0
.end method

.method public b(I)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 0

    .line 42
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->n:I

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->o:Z

    return-object p0
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/eP;)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/eP;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;Z)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->v:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->w:Lcom/google/vr/sdk/widgets/video/deps/eP;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 19
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->q:I

    return-object p0
.end method

.method public b()Z
    .locals 2

    .line 13
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c(I)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 0

    .line 77
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->t:I

    return-object p0
.end method

.method public c(Z)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->w:Lcom/google/vr/sdk/widgets/video/deps/eP;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 22
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->r:I

    return-object p0
.end method

.method public c()Z
    .locals 2

    .line 17
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d(Z)Lcom/google/vr/sdk/widgets/video/deps/eP;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->w:Lcom/google/vr/sdk/widgets/video/deps/eP;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 25
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->s:I

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 2

    .line 31
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->m:Z

    if-eqz v0, :cond_0

    .line 33
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->l:I

    return v0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->m:Z

    return v0
.end method

.method public g()I
    .locals 2

    .line 39
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->o:Z

    if-eqz v0, :cond_0

    .line 41
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->n:I

    return v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->o:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->v:Ljava/lang/String;

    return-object v0
.end method

.method public j()Landroid/text/Layout$Alignment;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->x:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->t:I

    return v0
.end method

.method public l()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eP;->u:F

    return v0
.end method
