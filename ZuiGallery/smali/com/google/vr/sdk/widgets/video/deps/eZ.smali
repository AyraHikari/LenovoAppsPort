.class public final Lcom/google/vr/sdk/widgets/video/deps/eZ;
.super Lcom/google/vr/sdk/widgets/video/deps/en;
.source "WebvttDecoder.java"


# static fields
.field private static final a:I = -0x1

.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:Ljava/lang/String; = "NOTE"

.field private static final g:Ljava/lang/String; = "STYLE"


# instance fields
.field private final h:Lcom/google/vr/sdk/widgets/video/deps/eY;

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/eX$a;

.field private final k:Lcom/google/vr/sdk/widgets/video/deps/eT;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eW;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/en;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eY;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/eY;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->h:Lcom/google/vr/sdk/widgets/video/deps/eY;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/eX$a;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->j:Lcom/google/vr/sdk/widgets/video/deps/eX$a;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eT;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/eT;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->k:Lcom/google/vr/sdk/widgets/video/deps/eT;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->l:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v3, v0

    move v2, v1

    :goto_0
    if-ne v2, v1, :cond_3

    .line 32
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v3

    .line 33
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->D()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return v2
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gA;)V
    .locals 1

    .line 44
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected synthetic a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ep;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/eZ;->b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/fb;

    move-result-object p1

    return-object p1
.end method

.method protected b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/fb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 8
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    .line 9
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->j:Lcom/google/vr/sdk/widgets/video/deps/eX$a;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->a()V

    .line 10
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 11
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/fa;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :cond_1
    :goto_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/eZ;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    move-result p2

    if-eqz p2, :cond_5

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 16
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/eZ;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 20
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->D()Ljava/lang/String;

    .line 21
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->k:Lcom/google/vr/sdk/widgets/video/deps/eT;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/eT;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/eW;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 23
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->l:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/er;

    const-string p2, "A style block was found after the first cue."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 p3, 0x3

    if-ne p2, p3, :cond_1

    .line 25
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->h:Lcom/google/vr/sdk/widgets/video/deps/eY;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->i:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->j:Lcom/google/vr/sdk/widgets/video/deps/eX$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->l:Ljava/util/List;

    invoke-virtual {p2, p3, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eY;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/eX$a;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 26
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->j:Lcom/google/vr/sdk/widgets/video/deps/eX$a;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->b()Lcom/google/vr/sdk/widgets/video/deps/eX;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eZ;->j:Lcom/google/vr/sdk/widgets/video/deps/eX$a;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->a()V

    goto :goto_1

    .line 28
    :cond_5
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/fb;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/fb;-><init>(Ljava/util/List;)V

    return-object p2
.end method
