.class final Lcom/google/vr/sdk/widgets/video/deps/gT$a;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/gT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final b:I = 0x0

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:Lcom/google/vr/sdk/widgets/video/deps/gT$a;


# instance fields
.field public volatile a:J

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/os/HandlerThread;

.field private h:Landroid/view/Choreographer;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gT$a;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->e:Lcom/google/vr/sdk/widgets/video/deps/gT$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ChoreographerOwner:Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->g:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static a()Lcom/google/vr/sdk/widgets/video/deps/gT$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->e:Lcom/google/vr/sdk/widgets/video/deps/gT$a;

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 23
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->h:Landroid/view/Choreographer;

    return-void
.end method

.method private e()V
    .locals 2

    .line 25
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->i:I

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->h:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 29
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->i:I

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->h:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->a:J

    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public doFrame(J)V
    .locals 2

    .line 12
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->a:J

    .line 13
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->h:Landroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 15
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->f()V

    return v0

    .line 18
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->e()V

    return v0

    .line 16
    :cond_2
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gT$a;->d()V

    return v0
.end method
