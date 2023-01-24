.class final Lcom/google/vr/sdk/widgets/video/deps/eW;
.super Ljava/lang/Object;
.source "WebvttCssStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/eW$b;,
        Lcom/google/vr/sdk/widgets/video/deps/eW$a;,
        Lcom/google/vr/sdk/widgets/video/deps/eW$c;
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

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z

.field private r:I

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:F

.field private z:Landroid/text/Layout$Alignment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/eW;->a()V

    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int v0, p0, p3

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->n:Ljava/lang/String;

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    return p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->k:Ljava/lang/String;

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {v2, v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/eW;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->l:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v0, p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/eW;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 32
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->n:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p2, p4, v0}, Lcom/google/vr/sdk/widgets/video/deps/eW;->a(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 33
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->m:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->m:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public a(F)Lcom/google/vr/sdk/widgets/video/deps/eW;
    .locals 0

    .line 72
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->y:F

    return-object p0
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/eW;
    .locals 0

    .line 58
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->p:I

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->q:Z

    return-object p0
.end method

.method public a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/eW;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->z:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public a(S)Lcom/google/vr/sdk/widgets/video/deps/eW;
    .locals 0

    .line 74
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->x:I

    return-object p0
.end method

.method public a(Z)Lcom/google/vr/sdk/widgets/video/deps/eW;
    .locals 0

    .line 43
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->t:I

    return-object p0
.end method

.method public a()V
    .locals 2

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->k:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->l:Ljava/lang/String;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->m:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->n:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->o:Ljava/lang/String;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->q:Z

    .line 10
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->s:Z

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->t:I

    .line 12
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->u:I

    .line 13
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->v:I

    .line 14
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->w:I

    .line 15
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->x:I

    .line 16
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->z:Landroid/text/Layout$Alignment;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eW;)V
    .locals 2

    .line 78
    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->q:Z

    if-eqz v0, :cond_0

    .line 79
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->p:I

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/eW;->a(I)Lcom/google/vr/sdk/widgets/video/deps/eW;

    .line 80
    :cond_0
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 81
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->v:I

    .line 82
    :cond_1
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->w:I

    if-eq v0, v1, :cond_2

    .line 83
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->w:I

    .line 84
    :cond_2
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 85
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->o:Ljava/lang/String;

    .line 86
    :cond_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->t:I

    if-ne v0, v1, :cond_4

    .line 87
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->t:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->t:I

    .line 88
    :cond_4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->u:I

    if-ne v0, v1, :cond_5

    .line 89
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->u:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->u:I

    .line 90
    :cond_5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->z:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 91
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->z:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->z:Landroid/text/Layout$Alignment;

    .line 92
    :cond_6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->x:I

    if-ne v0, v1, :cond_7

    .line 93
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->x:I

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->x:I

    .line 94
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->y:F

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->y:F

    .line 95
    :cond_7
    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->s:Z

    if-eqz v0, :cond_8

    .line 96
    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/eW;->r:I

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eW;->b(I)Lcom/google/vr/sdk/widgets/video/deps/eW;

    :cond_8
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->k:Ljava/lang/String;

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->m:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 4

    .line 37
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->v:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->w:I

    if-ne v0, v1, :cond_0

    return v1

    .line 39
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->v:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 40
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->w:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public b(I)Lcom/google/vr/sdk/widgets/video/deps/eW;
    .locals 0

    .line 65
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->r:I

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->s:Z

    return-object p0
.end method

.method public b(Z)Lcom/google/vr/sdk/widgets/video/deps/eW;
    .locals 0

    .line 46
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->u:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->l:Ljava/lang/String;

    return-void
.end method

.method public c(Z)Lcom/google/vr/sdk/widgets/video/deps/eW;
    .locals 0

    .line 48
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->v:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->n:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 2

    .line 42
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public d(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eW;
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->o:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Lcom/google/vr/sdk/widgets/video/deps/eW;
    .locals 0

    .line 50
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->w:I

    return-object p0
.end method

.method public d()Z
    .locals 2

    .line 45
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->o:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 2

    .line 55
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->q:Z

    if-eqz v0, :cond_0

    .line 57
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->p:I

    return v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->q:Z

    return v0
.end method

.method public h()I
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->s:Z

    if-eqz v0, :cond_0

    .line 64
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->r:I

    return v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->s:Z

    return v0
.end method

.method public j()Landroid/text/Layout$Alignment;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->z:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->x:I

    return v0
.end method

.method public l()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eW;->y:F

    return v0
.end method
