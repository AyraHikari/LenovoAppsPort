.class public final Lcom/google/vr/sdk/widgets/video/deps/fe$b;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v8, 0x1

    const/4 v9, 0x1

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const/4 v12, 0x1

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    .line 6
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    .line 7
    iput-boolean p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    .line 8
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    .line 9
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    .line 10
    iput p7, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    .line 11
    iput-boolean p8, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    .line 12
    iput-boolean p9, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    .line 13
    iput p10, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    .line 14
    iput p11, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    .line 15
    iput-boolean p12, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 2

    const/16 v0, 0x4ff

    const/16 v1, 0x2cf

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a(II)Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 14

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    if-ne p1, v0, :cond_0

    return-object p0

    .line 36
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    iget-boolean v9, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    iget-boolean v10, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    iget v11, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    iget v12, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    iget-boolean v13, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-object v0
.end method

.method public a(II)Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 15

    move-object v0, p0

    .line 31
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    move/from16 v7, p1

    if-ne v7, v1, :cond_0

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    move/from16 v8, p2

    if-ne v8, v1, :cond_1

    return-object v0

    :cond_0
    move/from16 v8, p2

    .line 33
    :cond_1
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    iget-boolean v6, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    iget-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    iget-boolean v11, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    iget v12, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    iget v13, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    iget-boolean v14, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    move-object v2, v1

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-direct/range {v2 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-object v1
.end method

.method public a(IIZ)Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 15

    move-object v0, p0

    .line 45
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    move/from16 v12, p1

    if-ne v12, v1, :cond_0

    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    move/from16 v13, p2

    if-ne v13, v1, :cond_1

    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    move/from16 v14, p3

    if-ne v14, v1, :cond_2

    return-object v0

    :cond_0
    move/from16 v13, p2

    :cond_1
    move/from16 v14, p3

    .line 47
    :cond_2
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    iget-boolean v6, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    iget v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    iget-boolean v10, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    iget-boolean v11, v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    move-object v2, v1

    move/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v2 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-object v1
.end method

.method public a(Landroid/content/Context;Z)Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 1

    .line 48
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 49
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a(IIZ)Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 13

    .line 17
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 20
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    iget-boolean v8, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    iget-boolean v9, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    iget v10, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    iget v11, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    iget-boolean v12, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-object p1
.end method

.method public a(Z)Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 14

    .line 25
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    if-ne p1, v0, :cond_0

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    iget-boolean v9, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    iget-boolean v10, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    iget v11, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    iget v12, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    iget-boolean v13, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-object v0
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 1

    const v0, 0x7fffffff

    .line 38
    invoke-virtual {p0, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a(II)Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 13

    .line 21
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 24
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    iget-boolean v8, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    iget-boolean v9, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    iget v10, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    iget v11, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    iget-boolean v12, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-object p1
.end method

.method public b(Z)Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 14

    .line 28
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    if-ne p1, v0, :cond_0

    return-object p0

    .line 30
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    iget-boolean v9, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    iget-boolean v10, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    iget v11, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    iget v12, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    iget-boolean v13, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-object v0
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 2

    const v0, 0x7fffffff

    const/4 v1, 0x1

    .line 50
    invoke-virtual {p0, v0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a(IIZ)Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 14

    .line 39
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    if-ne p1, v0, :cond_0

    return-object p0

    .line 41
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    iget-boolean v10, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    iget v11, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    iget v12, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    iget-boolean v13, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    move-object v1, v0

    move v9, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-object v0
.end method

.method public d(Z)Lcom/google/vr/sdk/widgets/video/deps/fe$b;
    .locals 14

    .line 42
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    if-ne p1, v0, :cond_0

    return-object p0

    .line 44
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    iget-boolean v5, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    iget v8, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    iget-boolean v9, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    iget v11, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    iget v12, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    iget-boolean v13, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    move-object v1, v0

    move v10, p1

    invoke-direct/range {v1 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/fe$b;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;

    .line 56
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    .line 57
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    .line 58
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->k:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->l:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fe$b;->h:I

    add-int/2addr v0, v1

    return v0
.end method
