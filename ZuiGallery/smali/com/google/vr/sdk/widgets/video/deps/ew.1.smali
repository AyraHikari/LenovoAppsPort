.class public final Lcom/google/vr/sdk/widgets/video/deps/ew;
.super Lcom/google/vr/sdk/widgets/video/deps/a;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ew$b;,
        Lcom/google/vr/sdk/widgets/video/deps/ew$a;
    }
.end annotation


# static fields
.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2

.field private static final q:I


# instance fields
.field private A:Lcom/google/vr/sdk/widgets/video/deps/et;

.field private B:Lcom/google/vr/sdk/widgets/video/deps/eu;

.field private C:Lcom/google/vr/sdk/widgets/video/deps/eu;

.field private D:I

.field private final r:Landroid/os/Handler;

.field private final s:Lcom/google/vr/sdk/widgets/video/deps/ev;

.field private final t:Lcom/google/vr/sdk/widgets/video/deps/es;

.field private final u:Lcom/google/vr/sdk/widgets/video/deps/n;

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private z:Lcom/google/vr/sdk/widgets/video/deps/eq;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ev;Landroid/os/Looper;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/es;->a:Lcom/google/vr/sdk/widgets/video/deps/es;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ew;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ev;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/es;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ev;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/es;)V
    .locals 1

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/a;-><init>(I)V

    .line 4
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ev;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->s:Lcom/google/vr/sdk/widgets/video/deps/ev;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->r:Landroid/os/Handler;

    .line 6
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->t:Lcom/google/vr/sdk/widgets/video/deps/es;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/n;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/n;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->u:Lcom/google/vr/sdk/widgets/video/deps/n;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;

    const/4 v1, -0x1

    .line 95
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->D:I

    .line 96
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->B:Lcom/google/vr/sdk/widgets/video/deps/eu;

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/eu;->e()V

    .line 98
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->B:Lcom/google/vr/sdk/widgets/video/deps/eu;

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->C:Lcom/google/vr/sdk/widgets/video/deps/eu;

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/eu;->e()V

    .line 101
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->C:Lcom/google/vr/sdk/widgets/video/deps/eu;

    :cond_1
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->r:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ew;->b(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->a()V

    .line 104
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->z:Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/eq;->e()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->z:Lcom/google/vr/sdk/widgets/video/deps/eq;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->x:I

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->s:Lcom/google/vr/sdk/widgets/video/deps/ev;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ev;->a(Ljava/util/List;)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->b()V

    .line 109
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->t:Lcom/google/vr/sdk/widgets/video/deps/es;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->y:Lcom/google/vr/sdk/widgets/video/deps/m;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/es;->b(Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/eq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->z:Lcom/google/vr/sdk/widgets/video/deps/eq;

    return-void
.end method

.method private d()J
    .locals 2

    .line 111
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->D:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->B:Lcom/google/vr/sdk/widgets/video/deps/eu;

    .line 112
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/eu;->b()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->B:Lcom/google/vr/sdk/widgets/video/deps/eu;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->D:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(I)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    return-wide v0
.end method

.method private e()V
    .locals 1

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 122
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ew;->b(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->w:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->y:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 89
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->e()V

    .line 90
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->b()V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->e()V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->v:Z

    .line 21
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->w:Z

    .line 22
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->x:I

    if-eqz p1, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->c()V

    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->a()V

    .line 25
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->z:Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/eq;->d()V

    :goto_0
    return-void
.end method

.method protected onStreamChanged([Lcom/google/vr/sdk/widgets/video/deps/m;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    const/4 p2, 0x0

    .line 14
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->y:Lcom/google/vr/sdk/widgets/video/deps/m;

    .line 15
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->z:Lcom/google/vr/sdk/widgets/video/deps/eq;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 16
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->x:I

    goto :goto_0

    .line 17
    :cond_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->t:Lcom/google/vr/sdk/widgets/video/deps/es;

    invoke-interface {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/es;->b(Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/eq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->z:Lcom/google/vr/sdk/widgets/video/deps/eq;

    :goto_0
    return-void
.end method

.method public render(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/g;
        }
    .end annotation

    .line 27
    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->w:Z

    if-eqz p3, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->C:Lcom/google/vr/sdk/widgets/video/deps/eu;

    if-nez p3, :cond_1

    .line 30
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->z:Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-interface {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eq;->a(J)V

    .line 31
    :try_start_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->z:Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-interface {p3}, Lcom/google/vr/sdk/widgets/video/deps/eq;->c()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/vr/sdk/widgets/video/deps/eu;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->C:Lcom/google/vr/sdk/widgets/video/deps/eu;
    :try_end_0
    .catch Lcom/google/vr/sdk/widgets/video/deps/er; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1

    .line 35
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->getState()I

    move-result p3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_2

    return-void

    .line 38
    :cond_2
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->B:Lcom/google/vr/sdk/widgets/video/deps/eu;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 39
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->d()J

    move-result-wide v2

    move p3, v0

    :goto_1
    cmp-long v2, v2, p1

    if-gtz v2, :cond_4

    .line 41
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->D:I

    add-int/2addr p3, v1

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->D:I

    .line 42
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->d()J

    move-result-wide v2

    move p3, v1

    goto :goto_1

    :cond_3
    move p3, v0

    .line 44
    :cond_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->C:Lcom/google/vr/sdk/widgets/video/deps/eu;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 45
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/eu;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p3, :cond_8

    .line 46
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->d()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    .line 47
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->x:I

    if-ne v2, p4, :cond_5

    .line 48
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->c()V

    goto :goto_2

    .line 49
    :cond_5
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->a()V

    .line 50
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->w:Z

    goto :goto_2

    .line 51
    :cond_6
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->C:Lcom/google/vr/sdk/widgets/video/deps/eu;

    iget-wide v4, v2, Lcom/google/vr/sdk/widgets/video/deps/eu;->a:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_8

    .line 52
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->B:Lcom/google/vr/sdk/widgets/video/deps/eu;

    if-eqz p3, :cond_7

    .line 53
    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/eu;->e()V

    .line 54
    :cond_7
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->C:Lcom/google/vr/sdk/widgets/video/deps/eu;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->B:Lcom/google/vr/sdk/widgets/video/deps/eu;

    .line 55
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->C:Lcom/google/vr/sdk/widgets/video/deps/eu;

    .line 56
    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eu;->a(J)I

    move-result p3

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->D:I

    move p3, v1

    :cond_8
    :goto_2
    if-eqz p3, :cond_9

    .line 59
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->B:Lcom/google/vr/sdk/widgets/video/deps/eu;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eu;->b(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ew;->a(Ljava/util/List;)V

    .line 60
    :cond_9
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->x:I

    if-ne p1, p4, :cond_a

    return-void

    .line 62
    :cond_a
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->v:Z

    if-nez p1, :cond_f

    .line 63
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;

    if-nez p1, :cond_b

    .line 64
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->z:Lcom/google/vr/sdk/widgets/video/deps/eq;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/eq;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/et;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;

    if-nez p1, :cond_b

    return-void

    .line 67
    :cond_b
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->x:I

    if-ne p1, v1, :cond_c

    .line 68
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/et;->a_(I)V

    .line 69
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->z:Lcom/google/vr/sdk/widgets/video/deps/eq;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eq;->a(Ljava/lang/Object;)V

    .line 70
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;

    .line 71
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->x:I

    return-void

    .line 73
    :cond_c
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->u:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->readSource(Lcom/google/vr/sdk/widgets/video/deps/n;Lcom/google/vr/sdk/widgets/video/deps/T;Z)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_e

    .line 75
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/et;->c()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 76
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->v:Z

    goto :goto_4

    .line 77
    :cond_d
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->u:Lcom/google/vr/sdk/widgets/video/deps/n;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/n;->a:Lcom/google/vr/sdk/widgets/video/deps/m;

    iget-wide p2, p2, Lcom/google/vr/sdk/widgets/video/deps/m;->y:J

    iput-wide p2, p1, Lcom/google/vr/sdk/widgets/video/deps/et;->g:J

    .line 78
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/et;->h()V

    .line 79
    :goto_4
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->z:Lcom/google/vr/sdk/widgets/video/deps/eq;

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;

    invoke-interface {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eq;->a(Ljava/lang/Object;)V

    .line 80
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->A:Lcom/google/vr/sdk/widgets/video/deps/et;
    :try_end_1
    .catch Lcom/google/vr/sdk/widgets/video/deps/er; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_e
    const/4 p2, -0x3

    if-ne p1, p2, :cond_a

    :cond_f
    return-void

    :catch_1
    move-exception p1

    .line 86
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ew;->getIndex()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/g;->a(Ljava/lang/Exception;I)Lcom/google/vr/sdk/widgets/video/deps/g;

    move-result-object p1

    throw p1
.end method

.method public supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/m;)I
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ew;->t:Lcom/google/vr/sdk/widgets/video/deps/es;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/es;->a(Lcom/google/vr/sdk/widgets/video/deps/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 10
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->k:Lcom/google/vr/sdk/widgets/video/deps/aa;

    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ew;->supportsFormatDrm(Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/aa;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    .line 11
    :cond_1
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gx;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
