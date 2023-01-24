.class public final Lcom/google/vr/sdk/widgets/video/deps/cc;
.super Lcom/google/vr/sdk/widgets/video/deps/a;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cc$a;
    }
.end annotation


# static fields
.field private static final n:I = 0x0

.field private static final o:I = 0x5


# instance fields
.field private final p:Lcom/google/vr/sdk/widgets/video/deps/bZ;

.field private final q:Lcom/google/vr/sdk/widgets/video/deps/cb;

.field private final r:Landroid/os/Handler;

.field private final s:Lcom/google/vr/sdk/widgets/video/deps/n;

.field private final t:Lcom/google/vr/sdk/widgets/video/deps/ca;

.field private final u:[Lcom/google/vr/sdk/widgets/video/deps/bW;

.field private final v:[J

.field private w:I

.field private x:I

.field private y:Lcom/google/vr/sdk/widgets/video/deps/bX;

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cb;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/bZ;->a:Lcom/google/vr/sdk/widgets/video/deps/bZ;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/cc;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cb;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/bZ;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cb;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/bZ;)V
    .locals 1

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/a;-><init>(I)V

    .line 4
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cb;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->q:Lcom/google/vr/sdk/widgets/video/deps/cb;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->r:Landroid/os/Handler;

    .line 6
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/bZ;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->p:Lcom/google/vr/sdk/widgets/video/deps/bZ;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/n;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/n;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->s:Lcom/google/vr/sdk/widgets/video/deps/n;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ca;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ca;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->t:Lcom/google/vr/sdk/widgets/video/deps/ca;

    const/4 p1, 0x5

    new-array p2, p1, [Lcom/google/vr/sdk/widgets/video/deps/bW;

    .line 9
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->u:[Lcom/google/vr/sdk/widgets/video/deps/bW;

    new-array p1, p1, [J

    .line 10
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->v:[J

    return-void
.end method

.method private a()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->u:[Lcom/google/vr/sdk/widgets/video/deps/bW;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->w:I

    .line 53
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->x:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/bW;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cc;->b(Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/bW;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->q:Lcom/google/vr/sdk/widgets/video/deps/cb;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cb;->a(Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 56
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/bW;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cc;->b(Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    const/4 p1, 0x1

    return p1

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->z:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cc;->a()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->y:Lcom/google/vr/sdk/widgets/video/deps/bX;

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cc;->a()V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->z:Z

    return-void
.end method

.method protected onStreamChanged([Lcom/google/vr/sdk/widgets/video/deps/m;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 15
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->p:Lcom/google/vr/sdk/widgets/video/deps/bZ;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/bZ;->b(Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/bX;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->y:Lcom/google/vr/sdk/widgets/video/deps/bX;

    return-void
.end method

.method public render(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 20
    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->z:Z

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-nez p3, :cond_2

    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->x:I

    if-ge p3, p4, :cond_2

    .line 21
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->t:Lcom/google/vr/sdk/widgets/video/deps/ca;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/ca;->a()V

    .line 22
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->s:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->t:Lcom/google/vr/sdk/widgets/video/deps/ca;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cc;->readSource(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I

    move-result p3

    const/4 v1, -0x4

    if-ne p3, v1, :cond_2

    .line 24
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->t:Lcom/google/vr/sdk/widgets/video/deps/ca;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/ca;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 25
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->z:Z

    goto :goto_0

    .line 26
    :cond_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->t:Lcom/google/vr/sdk/widgets/video/deps/ca;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/ca;->c_()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->t:Lcom/google/vr/sdk/widgets/video/deps/ca;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->s:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    iput-wide v1, p3, Lcom/google/vr/sdk/widgets/video/deps/ca;->g:J

    .line 28
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->t:Lcom/google/vr/sdk/widgets/video/deps/ca;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/ca;->h()V

    .line 29
    :try_start_0
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->w:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->x:I

    add-int/2addr p3, v1

    rem-int/2addr p3, p4

    .line 30
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->u:[Lcom/google/vr/sdk/widgets/video/deps/bW;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->y:Lcom/google/vr/sdk/widgets/video/deps/bX;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->t:Lcom/google/vr/sdk/widgets/video/deps/ca;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/bX;->a(Lcom/google/vr/sdk/widgets/video/deps/ca;)Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-result-object v2

    aput-object v2, v1, p3

    .line 31
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->v:[J

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->t:Lcom/google/vr/sdk/widgets/video/deps/ca;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ca;->f:J

    aput-wide v2, v1, p3

    .line 32
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->x:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->x:I
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/bY; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cc;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1

    .line 36
    :cond_2
    :goto_0
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->x:I

    if-lez p3, :cond_3

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->v:[J

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->w:I

    aget-wide v2, p3, v1

    cmp-long p1, v2, p1

    if-gtz p1, :cond_3

    .line 37
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->u:[Lcom/google/vr/sdk/widgets/video/deps/bW;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cc;->a(Lcom/google/vr/sdk/widgets/video/deps/bW;)V

    .line 38
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->u:[Lcom/google/vr/sdk/widgets/video/deps/bW;

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->w:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    add-int/2addr p2, v0

    .line 39
    rem-int/2addr p2, p4

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->w:I

    .line 40
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->x:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->x:I

    :cond_3
    return-void
.end method

.method public supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cc;->p:Lcom/google/vr/sdk/widgets/video/deps/bZ;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bZ;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 13
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cc;->supportsFormatDrm(Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/aa;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
