.class final Lcom/google/vr/sdk/widgets/video/deps/j;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/h;


# static fields
.field private static final o:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:Lcom/google/vr/sdk/widgets/video/deps/z;

.field private G:Ljava/lang/Object;

.field private H:Lcom/google/vr/sdk/widgets/video/deps/di;

.field private I:Lcom/google/vr/sdk/widgets/video/deps/fj;

.field private J:Lcom/google/vr/sdk/widgets/video/deps/s;

.field private K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

.field private L:I

.field private M:I

.field private N:J

.field private final p:[Lcom/google/vr/sdk/widgets/video/deps/u;

.field private final q:Lcom/google/vr/sdk/widgets/video/deps/fk;

.field private final r:Lcom/google/vr/sdk/widgets/video/deps/fj;

.field private final s:Landroid/os/Handler;

.field private final t:Lcom/google/vr/sdk/widgets/video/deps/k;

.field private final u:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/t$a;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lcom/google/vr/sdk/widgets/video/deps/z$b;

.field private final w:Lcom/google/vr/sdk/widgets/video/deps/z$a;

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/u;Lcom/google/vr/sdk/widgets/video/deps/fk;Lcom/google/vr/sdk/widgets/video/deps/p;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/gM;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    const-string v4, "ExoPlayerLib/2.5.2"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Init "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    array-length v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/vr/sdk/widgets/video/deps/u;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->p:[Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 5
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/fk;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->q:Lcom/google/vr/sdk/widgets/video/deps/fk;

    .line 6
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->y:Z

    .line 7
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->z:I

    .line 8
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->A:Z

    .line 9
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->B:I

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 11
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fj;

    array-length v2, p1

    new-array v2, v2, [Lcom/google/vr/sdk/widgets/video/deps/fi;

    invoke-direct {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/fj;-><init>([Lcom/google/vr/sdk/widgets/video/deps/fi;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->r:Lcom/google/vr/sdk/widgets/video/deps/fj;

    .line 12
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/z;->a:Lcom/google/vr/sdk/widgets/video/deps/z;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 13
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$b;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->v:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    .line 14
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->w:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 15
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/di;->a:Lcom/google/vr/sdk/widgets/video/deps/di;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->H:Lcom/google/vr/sdk/widgets/video/deps/di;

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->r:Lcom/google/vr/sdk/widgets/video/deps/fj;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->I:Lcom/google/vr/sdk/widgets/video/deps/fj;

    .line 17
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/s;->a:Lcom/google/vr/sdk/widgets/video/deps/s;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->J:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 19
    :goto_1
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/j$1;

    invoke-direct {v2, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/j$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/j;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->s:Landroid/os/Handler;

    .line 20
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/k$b;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 21
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/k;

    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->y:Z

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->z:I

    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->A:Z

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->s:Landroid/os/Handler;

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/k;-><init>([Lcom/google/vr/sdk/widgets/video/deps/u;Lcom/google/vr/sdk/widgets/video/deps/fk;Lcom/google/vr/sdk/widgets/video/deps/p;ZIZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/k$b;Lcom/google/vr/sdk/widgets/video/deps/h;)V

    iput-object v10, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    return-void
.end method

.method private a(J)J
    .locals 3

    .line 233
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide p1

    .line 234
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->w:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 236
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->w:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c()J

    move-result-wide v0

    add-long/2addr p1, v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method a(Landroid/os/Message;)V
    .locals 5

    .line 169
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 231
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 226
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/g;

    .line 227
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 228
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onPlayerError(Lcom/google/vr/sdk/widgets/video/deps/g;)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 221
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->J:Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->J:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 223
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 224
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onPlaybackParametersChanged(Lcom/google/vr/sdk/widgets/video/deps/s;)V

    goto :goto_1

    .line 207
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/k$d;

    .line 208
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/k$d;->d:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    .line 209
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->D:I

    if-nez v0, :cond_3

    .line 210
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/k$d;->a:Lcom/google/vr/sdk/widgets/video/deps/z;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 211
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/k$d;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->G:Ljava/lang/Object;

    .line 212
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/k$d;->c:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 213
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->M:I

    .line 215
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->L:I

    .line 216
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->N:J

    .line 217
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 218
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->G:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onTimelineChanged(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    goto :goto_2

    .line 202
    :pswitch_3
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    if-nez v0, :cond_3

    .line 203
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 204
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 205
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onPositionDiscontinuity()V

    goto :goto_3

    .line 192
    :pswitch_4
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    if-nez v0, :cond_3

    .line 193
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    .line 194
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->M:I

    .line 196
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->L:I

    .line 197
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->N:J

    .line 198
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    .line 199
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 200
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onPositionDiscontinuity()V

    goto :goto_4

    .line 182
    :pswitch_5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->D:I

    if-nez v0, :cond_3

    .line 183
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fl;

    .line 184
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->x:Z

    .line 185
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fl;->a:Lcom/google/vr/sdk/widgets/video/deps/di;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->H:Lcom/google/vr/sdk/widgets/video/deps/di;

    .line 186
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/fl;->b:Lcom/google/vr/sdk/widgets/video/deps/fj;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->I:Lcom/google/vr/sdk/widgets/video/deps/fj;

    .line 187
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->q:Lcom/google/vr/sdk/widgets/video/deps/fk;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fl;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fk;->a(Ljava/lang/Object;)V

    .line 188
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 189
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->H:Lcom/google/vr/sdk/widgets/video/deps/di;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->I:Lcom/google/vr/sdk/widgets/video/deps/fj;

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onTracksChanged(Lcom/google/vr/sdk/widgets/video/deps/di;Lcom/google/vr/sdk/widgets/video/deps/fj;)V

    goto :goto_5

    .line 177
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    goto :goto_6

    :cond_2
    move v3, v4

    :goto_6
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->E:Z

    .line 178
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 179
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->E:Z

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onLoadingChanged(Z)V

    goto :goto_7

    .line 172
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->B:I

    .line 173
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 174
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->y:Z

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->B:I

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onPlayerStateChanged(ZI)V

    goto :goto_8

    .line 170
    :pswitch_8
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->D:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->D:I

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addListener(Lcom/google/vr/sdk/widgets/video/deps/t$a;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs blockingSendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V

    return-void
.end method

.method public getBufferedPercentage()I
    .locals 9

    .line 147
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getBufferedPosition()J

    move-result-wide v2

    .line 150
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getDuration()J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v6

    const/16 v8, 0x64

    if-eqz v0, :cond_3

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move v1, v8

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    .line 152
    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0, v1, v8}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(III)I

    move-result v1

    :cond_3
    :goto_0
    return v1
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->e:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/j;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 145
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->N:J

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 4

    .line 159
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->w:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 161
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->w:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/k$b;->c:J

    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->G:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    return v0

    .line 122
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->M:I

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->d:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/j;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 142
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->N:J

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/vr/sdk/widgets/video/deps/z;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/vr/sdk/widgets/video/deps/di;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->H:Lcom/google/vr/sdk/widgets/video/deps/di;

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/vr/sdk/widgets/video/deps/fj;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->I:Lcom/google/vr/sdk/widgets/video/deps/fj;

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->w:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/z$a;->c:I

    return v0

    .line 125
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->L:I

    return v0
.end method

.method public getDuration()J
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    .line 137
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->b:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->w:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    .line 138
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->w:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->c:I

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->d:I

    invoke-virtual {v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b(II)J

    move-result-wide v0

    .line 139
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    return-wide v0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->v:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$b;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextWindowIndex()I
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getCurrentWindowIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getRepeatMode()I

    move-result v2

    .line 128
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getShuffleModeEnabled()Z

    move-result v3

    .line 129
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(IIZ)I

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->y:Z

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->c()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/vr/sdk/widgets/video/deps/s;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->J:Lcom/google/vr/sdk/widgets/video/deps/s;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->B:I

    return v0
.end method

.method public getPreviousWindowIndex()I
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getCurrentWindowIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getRepeatMode()I

    move-result v2

    .line 131
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getShuffleModeEnabled()Z

    move-result v3

    .line 132
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/z;->b(IIZ)I

    move-result v0

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->p:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v0, v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->p:[Lcom/google/vr/sdk/widgets/video/deps/u;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/u;->getTrackType()I

    move-result p1

    return p1
.end method

.method public getRepeatMode()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->z:I

    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->A:Z

    return v0
.end method

.method public isCurrentWindowDynamic()Z
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->v:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->v:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->E:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 156
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->K:Lcom/google/vr/sdk/widgets/video/deps/k$b;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/k$b;->a:Lcom/google/vr/sdk/widgets/video/deps/cW$b;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/cW$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prepare(Lcom/google/vr/sdk/widgets/video/deps/cW;)V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/vr/sdk/widgets/video/deps/j;->prepare(Lcom/google/vr/sdk/widgets/video/deps/cW;ZZ)V

    return-void
.end method

.method public prepare(Lcom/google/vr/sdk/widgets/video/deps/cW;ZZ)V
    .locals 4

    if-eqz p3, :cond_2

    .line 32
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->G:Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 33
    :cond_0
    sget-object p3, Lcom/google/vr/sdk/widgets/video/deps/z;->a:Lcom/google/vr/sdk/widgets/video/deps/z;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    .line 34
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->G:Ljava/lang/Object;

    .line 35
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 36
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->G:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onTimelineChanged(Lcom/google/vr/sdk/widgets/video/deps/z;Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->x:Z

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 39
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->x:Z

    .line 40
    sget-object p3, Lcom/google/vr/sdk/widgets/video/deps/di;->a:Lcom/google/vr/sdk/widgets/video/deps/di;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->H:Lcom/google/vr/sdk/widgets/video/deps/di;

    .line 41
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->r:Lcom/google/vr/sdk/widgets/video/deps/fj;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->I:Lcom/google/vr/sdk/widgets/video/deps/fj;

    .line 42
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->q:Lcom/google/vr/sdk/widgets/video/deps/fk;

    invoke-virtual {p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/fk;->a(Ljava/lang/Object;)V

    .line 43
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 44
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->H:Lcom/google/vr/sdk/widgets/video/deps/di;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->I:Lcom/google/vr/sdk/widgets/video/deps/fj;

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onTracksChanged(Lcom/google/vr/sdk/widgets/video/deps/di;Lcom/google/vr/sdk/widgets/video/deps/fj;)V

    goto :goto_1

    .line 46
    :cond_2
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->D:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->D:I

    .line 47
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/cW;Z)V

    return-void
.end method

.method public release()V
    .locals 6

    .line 111
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/gM;->e:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/l;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x11

    const-string v4, "ExoPlayerLib/2.5.2"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 113
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->b()V

    .line 115
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->s:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeListener(Lcom/google/vr/sdk/widgets/video/deps/t$a;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(IJ)V
    .locals 8

    if-ltz p1, :cond_6

    .line 80
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->b()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 82
    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->C:I

    .line 83
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->L:I

    .line 84
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z;->a()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->M:I

    goto :goto_2

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->v:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-virtual {v0, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$b;)Lcom/google/vr/sdk/widgets/video/deps/z$b;

    cmp-long v0, p2, v1

    if-nez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->v:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/z$b;->b()J

    move-result-wide v3

    goto :goto_0

    :cond_2
    invoke-static {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v3

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->v:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/z$b;->f:I

    .line 89
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->v:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/z$b;->f()J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 90
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->w:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v3, v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b()J

    move-result-wide v3

    :goto_1
    cmp-long v7, v3, v1

    if-eqz v7, :cond_3

    cmp-long v7, v5, v3

    if-ltz v7, :cond_3

    .line 91
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->v:Lcom/google/vr/sdk/widgets/video/deps/z$b;

    iget v7, v7, Lcom/google/vr/sdk/widgets/video/deps/z$b;->g:I

    if-ge v0, v7, :cond_3

    sub-long/2addr v5, v3

    .line 93
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->w:Lcom/google/vr/sdk/widgets/video/deps/z$a;

    invoke-virtual {v3, v0, v4}, Lcom/google/vr/sdk/widgets/video/deps/z;->a(ILcom/google/vr/sdk/widgets/video/deps/z$a;)Lcom/google/vr/sdk/widgets/video/deps/z$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/z$a;->b()J

    move-result-wide v3

    goto :goto_1

    .line 94
    :cond_3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->M:I

    :goto_2
    cmp-long v0, p2, v1

    if-nez v0, :cond_4

    const-wide/16 p2, 0x0

    .line 96
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->N:J

    .line 97
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-virtual {p2, p3, p1, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/z;IJ)V

    goto :goto_4

    .line 98
    :cond_4
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->N:J

    .line 99
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-static {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide p2

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/z;IJ)V

    .line 100
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 101
    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onPositionDiscontinuity()V

    goto :goto_3

    :cond_5
    :goto_4
    return-void

    .line 81
    :cond_6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/o;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->F:Lcom/google/vr/sdk/widgets/video/deps/z;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/o;-><init>(Lcom/google/vr/sdk/widgets/video/deps/z;IJ)V

    throw v0
.end method

.method public seekTo(J)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/j;->seekTo(IJ)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/j;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/j;->seekToDefaultPosition(I)V

    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 76
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/j;->seekTo(IJ)V

    return-void
.end method

.method public varargs sendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 3

    .line 49
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->y:Z

    if-eq v0, p1, :cond_0

    .line 50
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->y:Z

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Z)V

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 53
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->B:I

    invoke-interface {v1, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onPlayerStateChanged(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/vr/sdk/widgets/video/deps/s;)V
    .locals 1

    if-nez p1, :cond_0

    .line 105
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/s;->a:Lcom/google/vr/sdk/widgets/video/deps/s;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(Lcom/google/vr/sdk/widgets/video/deps/s;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 57
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->z:I

    if-eq v0, p1, :cond_0

    .line 58
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->z:I

    .line 59
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->a(I)V

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 61
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onRepeatModeChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->A:Z

    if-eq v0, p1, :cond_0

    .line 66
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->A:Z

    .line 67
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/k;->b(Z)V

    .line 68
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->u:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/t$a;

    .line 69
    invoke-interface {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/t$a;->onShuffleModeEnabledChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/j;->t:Lcom/google/vr/sdk/widgets/video/deps/k;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/k;->a()V

    return-void
.end method
