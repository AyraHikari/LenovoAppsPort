.class public final Lcom/google/vr/sdk/widgets/video/deps/fJ;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fJ$e;,
        Lcom/google/vr/sdk/widgets/video/deps/fJ$b;,
        Lcom/google/vr/sdk/widgets/video/deps/fJ$d;,
        Lcom/google/vr/sdk/widgets/video/deps/fJ$a;,
        Lcom/google/vr/sdk/widgets/video/deps/fJ$c;,
        Lcom/google/vr/sdk/widgets/video/deps/fJ$f;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# instance fields
.field private final e:Ljava/util/concurrent/ExecutorService;

.field private f:Lcom/google/vr/sdk/widgets/video/deps/fJ$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/fJ$b<",
            "+",
            "Lcom/google/vr/sdk/widgets/video/deps/fJ$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ;)Lcom/google/vr/sdk/widgets/video/deps/fJ$b;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->f:Lcom/google/vr/sdk/widgets/video/deps/fJ$b;

    return-object p0
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ;Lcom/google/vr/sdk/widgets/video/deps/fJ$b;)Lcom/google/vr/sdk/widgets/video/deps/fJ$b;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->f:Lcom/google/vr/sdk/widgets/video/deps/fJ$b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/fJ;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->g:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/fJ;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->e:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/fJ$c;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;I)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/vr/sdk/widgets/video/deps/fJ$c;",
            ">(TT;",
            "Lcom/google/vr/sdk/widgets/video/deps/fJ$a<",
            "TT;>;I)J"
        }
    .end annotation

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 7
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fJ;Landroid/os/Looper;Lcom/google/vr/sdk/widgets/video/deps/fJ$c;Lcom/google/vr/sdk/widgets/video/deps/fJ$a;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->a(J)V

    return-wide v8
.end method

.method public a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->g:Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->f:Lcom/google/vr/sdk/widgets/video/deps/fJ$b;

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 30
    iget p1, v0, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->a:I

    .line 31
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->a(I)V

    :cond_1
    return-void

    .line 27
    :cond_2
    throw v0
.end method

.method public a()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->f:Lcom/google/vr/sdk/widgets/video/deps/fJ$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fJ$d;)Z
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->f:Lcom/google/vr/sdk/widgets/video/deps/fJ$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->a(Z)V

    if-eqz p1, :cond_1

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fJ$e;

    invoke-direct {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$e;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fJ$d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 20
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$d;->g()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 22
    :goto_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return v1
.end method

.method public b()V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fJ;->f:Lcom/google/vr/sdk/widgets/video/deps/fJ$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fJ$b;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(Lcom/google/vr/sdk/widgets/video/deps/fJ$d;)Z

    return-void
.end method

.method public d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/fJ;->a(I)V

    return-void
.end method
