.class public Lcom/google/vr/sdk/widgets/video/deps/y;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/y$a;,
        Lcom/google/vr/sdk/widgets/video/deps/y$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleExoPlayer"


# instance fields
.field private audioAttributes:Lcom/google/vr/sdk/widgets/video/deps/B;

.field private audioDebugListener:Lcom/google/vr/sdk/widgets/video/deps/G;

.field private audioDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

.field private audioFormat:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final audioRendererCount:I

.field private audioSessionId:I

.field private audioVolume:F

.field private final componentListener:Lcom/google/vr/sdk/widgets/video/deps/y$a;

.field private final metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            ">;"
        }
    .end annotation
.end field

.field private ownsSurface:Z

.field private final player:Lcom/google/vr/sdk/widgets/video/deps/h;

.field protected final renderers:[Lcom/google/vr/sdk/widgets/video/deps/u;

.field private surface:Landroid/view/Surface;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private final textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/ev;",
            ">;"
        }
    .end annotation
.end field

.field private textureView:Landroid/view/TextureView;

.field private videoDebugListener:Lcom/google/vr/sdk/widgets/video/deps/gU;

.field private videoDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

.field private videoFormat:Lcom/google/vr/sdk/widgets/video/deps/m;

.field private final videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/vr/sdk/widgets/video/deps/y$b;",
            ">;"
        }
    .end annotation
.end field

.field private final videoRendererCount:I

.field private videoScalingMode:I


# direct methods
.method protected constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/x;Lcom/google/vr/sdk/widgets/video/deps/fk;Lcom/google/vr/sdk/widgets/video/deps/p;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/y$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/y$1;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->componentListener:Lcom/google/vr/sdk/widgets/video/deps/y$a;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 7
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->componentListener:Lcom/google/vr/sdk/widgets/video/deps/y$a;

    move-object v1, p1

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/x;->createRenderers(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;Lcom/google/vr/sdk/widgets/video/deps/G;Lcom/google/vr/sdk/widgets/video/deps/ev;Lcom/google/vr/sdk/widgets/video/deps/cb;)[Lcom/google/vr/sdk/widgets/video/deps/u;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 11
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_1
    const/4 v5, 0x1

    if-ge v2, v0, :cond_3

    aget-object v6, p1, v2

    .line 12
    invoke-interface {v6}, Lcom/google/vr/sdk/widgets/video/deps/u;->getTrackType()I

    move-result v6

    if-eq v6, v5, :cond_2

    const/4 v5, 0x2

    if-eq v6, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 17
    :cond_3
    iput v3, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoRendererCount:I

    .line 18
    iput v4, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioRendererCount:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioVolume:F

    .line 20
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioSessionId:I

    .line 21
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/B;->a:Lcom/google/vr/sdk/widgets/video/deps/B;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioAttributes:Lcom/google/vr/sdk/widgets/video/deps/B;

    .line 22
    iput v5, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoScalingMode:I

    .line 23
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/y;->createExoPlayerImpl([Lcom/google/vr/sdk/widgets/video/deps/u;Lcom/google/vr/sdk/widgets/video/deps/fk;Lcom/google/vr/sdk/widgets/video/deps/p;)Lcom/google/vr/sdk/widgets/video/deps/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/vr/sdk/widgets/video/deps/y;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/S;)Lcom/google/vr/sdk/widgets/video/deps/S;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/vr/sdk/widgets/video/deps/y;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/vr/sdk/widgets/video/deps/y;Landroid/view/Surface;Z)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/y;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/gU;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoDebugListener:Lcom/google/vr/sdk/widgets/video/deps/gU;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoFormat:Lcom/google/vr/sdk/widgets/video/deps/m;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/vr/sdk/widgets/video/deps/y;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/vr/sdk/widgets/video/deps/y;)Landroid/view/Surface;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/S;)Lcom/google/vr/sdk/widgets/video/deps/S;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/vr/sdk/widgets/video/deps/y;)Lcom/google/vr/sdk/widgets/video/deps/G;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioDebugListener:Lcom/google/vr/sdk/widgets/video/deps/G;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/vr/sdk/widgets/video/deps/y;I)I
    .locals 0

    .line 240
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioSessionId:I

    return p1
.end method

.method static synthetic access$902(Lcom/google/vr/sdk/widgets/video/deps/y;Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioFormat:Lcom/google/vr/sdk/widgets/video/deps/m;

    return-object p1
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->textureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->componentListener:Lcom/google/vr/sdk/widgets/video/deps/y$a;

    if-eq v0, v2, :cond_0

    const-string v0, "SimpleExoPlayer"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 212
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 214
    :goto_0
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->textureView:Landroid/view/TextureView;

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 216
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->componentListener:Lcom/google/vr/sdk/widgets/video/deps/y$a;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 217
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_2
    return-void
.end method

.method private setVideoSurfaceInternal(Landroid/view/Surface;Z)V
    .locals 9

    .line 219
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoRendererCount:I

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/h$c;

    .line 221
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 222
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/u;->getTrackType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 223
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/h$c;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8, p1}, Lcom/google/vr/sdk/widgets/video/deps/h$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/h$b;ILjava/lang/Object;)V

    aput-object v7, v0, v4

    move v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->blockingSendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V

    .line 227
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->ownsSurface:Z

    if-eqz v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    goto :goto_1

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->sendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V

    .line 230
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->surface:Landroid/view/Surface;

    .line 231
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->ownsSurface:Z

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/vr/sdk/widgets/video/deps/t$a;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->addListener(Lcom/google/vr/sdk/widgets/video/deps/t$a;)V

    return-void
.end method

.method public addMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/cb;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTextOutput(Lcom/google/vr/sdk/widgets/video/deps/ev;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVideoListener(Lcom/google/vr/sdk/widgets/video/deps/y$b;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs blockingSendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->blockingSendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V

    return-void
.end method

.method public clearMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/cb;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->removeMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/cb;)V

    return-void
.end method

.method public clearTextOutput(Lcom/google/vr/sdk/widgets/video/deps/ev;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->removeTextOutput(Lcom/google/vr/sdk/widgets/video/deps/ev;)V

    return-void
.end method

.method public clearVideoListener(Lcom/google/vr/sdk/widgets/video/deps/y$b;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->removeVideoListener(Lcom/google/vr/sdk/widgets/video/deps/y$b;)V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->surface:Landroid/view/Surface;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->setVideoSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->setVideoTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method protected createExoPlayerImpl([Lcom/google/vr/sdk/widgets/video/deps/u;Lcom/google/vr/sdk/widgets/video/deps/fk;Lcom/google/vr/sdk/widgets/video/deps/p;)Lcom/google/vr/sdk/widgets/video/deps/h;
    .locals 1

    .line 209
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/j;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/j;-><init>([Lcom/google/vr/sdk/widgets/video/deps/u;Lcom/google/vr/sdk/widgets/video/deps/fk;Lcom/google/vr/sdk/widgets/video/deps/p;)V

    return-object v0
.end method

.method public getAudioAttributes()Lcom/google/vr/sdk/widgets/video/deps/B;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioAttributes:Lcom/google/vr/sdk/widgets/video/deps/B;

    return-object v0
.end method

.method public getAudioDecoderCounters()Lcom/google/vr/sdk/widgets/video/deps/S;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioFormat:Lcom/google/vr/sdk/widgets/video/deps/m;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioSessionId:I

    return v0
.end method

.method public getAudioStreamType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioAttributes:Lcom/google/vr/sdk/widgets/video/deps/B;

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/B;->d:I

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->e(I)I

    move-result v0

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/vr/sdk/widgets/video/deps/z;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentTimeline()Lcom/google/vr/sdk/widgets/video/deps/z;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/vr/sdk/widgets/video/deps/di;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentTrackGroups()Lcom/google/vr/sdk/widgets/video/deps/di;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/vr/sdk/widgets/video/deps/fj;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentTrackSelections()Lcom/google/vr/sdk/widgets/video/deps/fj;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextWindowIndex()I
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getNextWindowIndex()I

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/vr/sdk/widgets/video/deps/s;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getPlaybackParameters()Lcom/google/vr/sdk/widgets/video/deps/s;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPreviousWindowIndex()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getPreviousWindowIndex()I

    move-result v0

    return v0
.end method

.method public getRendererCount()I
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getRendererCount()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->getRendererType(I)I

    move-result p1

    return p1
.end method

.method public getRepeatMode()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getVideoDecoderCounters()Lcom/google/vr/sdk/widgets/video/deps/S;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoDecoderCounters:Lcom/google/vr/sdk/widgets/video/deps/S;

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/vr/sdk/widgets/video/deps/m;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoFormat:Lcom/google/vr/sdk/widgets/video/deps/m;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoScalingMode:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    .line 99
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioVolume:F

    return v0
.end method

.method public isCurrentWindowDynamic()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->isCurrentWindowDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->isCurrentWindowSeekable()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public prepare(Lcom/google/vr/sdk/widgets/video/deps/cW;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->prepare(Lcom/google/vr/sdk/widgets/video/deps/cW;)V

    return-void
.end method

.method public prepare(Lcom/google/vr/sdk/widgets/video/deps/cW;ZZ)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/h;->prepare(Lcom/google/vr/sdk/widgets/video/deps/cW;ZZ)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->release()V

    .line 179
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/y;->removeSurfaceCallbacks()V

    .line 180
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 181
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->ownsSurface:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public removeListener(Lcom/google/vr/sdk/widgets/video/deps/t$a;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->removeListener(Lcom/google/vr/sdk/widgets/video/deps/t$a;)V

    return-void
.end method

.method public removeMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/cb;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTextOutput(Lcom/google/vr/sdk/widgets/video/deps/ev;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVideoListener(Lcom/google/vr/sdk/widgets/video/deps/y$b;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/h;->seekTo(IJ)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/h;->seekTo(J)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->seekToDefaultPosition()V

    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->seekToDefaultPosition(I)V

    return-void
.end method

.method public varargs sendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->sendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/vr/sdk/widgets/video/deps/B;)V
    .locals 9

    .line 80
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioAttributes:Lcom/google/vr/sdk/widgets/video/deps/B;

    .line 81
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioRendererCount:I

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/h$c;

    .line 83
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 84
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/u;->getTrackType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 85
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/h$c;

    const/4 v8, 0x3

    invoke-direct {v7, v5, v8, p1}, Lcom/google/vr/sdk/widgets/video/deps/h$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/h$b;ILjava/lang/Object;)V

    aput-object v7, v0, v4

    move v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->sendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V

    return-void
.end method

.method public setAudioDebugListener(Lcom/google/vr/sdk/widgets/video/deps/G;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioDebugListener:Lcom/google/vr/sdk/widgets/video/deps/G;

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->c(I)I

    move-result v0

    .line 74
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->d(I)I

    move-result p1

    .line 75
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/B$a;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/B$a;-><init>()V

    .line 76
    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/B$a;->c(I)Lcom/google/vr/sdk/widgets/video/deps/B$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/B$a;->a(I)Lcom/google/vr/sdk/widgets/video/deps/B$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/B$a;->a()Lcom/google/vr/sdk/widgets/video/deps/B;

    move-result-object p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->setAudioAttributes(Lcom/google/vr/sdk/widgets/video/deps/B;)V

    return-void
.end method

.method public setMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/cb;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->metadataOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->addMetadataOutput(Lcom/google/vr/sdk/widgets/video/deps/cb;)V

    :cond_0
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/vr/sdk/widgets/video/deps/s;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->setPlaybackParameters(Lcom/google/vr/sdk/widgets/video/deps/s;)V

    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 102
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    invoke-virtual {p1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(FF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->setPlaybackParameters(Lcom/google/vr/sdk/widgets/video/deps/s;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->setRepeatMode(I)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/h;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setTextOutput(Lcom/google/vr/sdk/widgets/video/deps/ev;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->textOutputs:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->addTextOutput(Lcom/google/vr/sdk/widgets/video/deps/ev;)V

    :cond_0
    return-void
.end method

.method public setVideoDebugListener(Lcom/google/vr/sdk/widgets/video/deps/gU;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoDebugListener:Lcom/google/vr/sdk/widgets/video/deps/gU;

    return-void
.end method

.method public setVideoListener(Lcom/google/vr/sdk/widgets/video/deps/y$b;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->addVideoListener(Lcom/google/vr/sdk/widgets/video/deps/y$b;)V

    :cond_0
    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 10

    .line 25
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoScalingMode:I

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->videoRendererCount:I

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/h$c;

    .line 28
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 29
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/u;->getTrackType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 30
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/h$c;

    const/4 v8, 0x4

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/h$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/h$b;ILjava/lang/Object;)V

    aput-object v7, v0, v4

    move v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->sendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/y;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/y;->removeSurfaceCallbacks()V

    .line 45
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 47
    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->componentListener:Lcom/google/vr/sdk/widgets/video/deps/y$a;

    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 49
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, p1

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    :goto_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/y;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/y;->removeSurfaceCallbacks()V

    .line 60
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->textureView:Landroid/view/TextureView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 62
    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    goto :goto_2

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "SimpleExoPlayer"

    const-string v3, "Replacing existing SurfaceTextureListener."

    .line 64
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->componentListener:Lcom/google/vr/sdk/widgets/video/deps/y$a;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 66
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 68
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/y;->setVideoSurfaceInternal(Landroid/view/Surface;Z)V

    :goto_2
    return-void
.end method

.method public setVolume(F)V
    .locals 10

    .line 90
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioVolume:F

    .line 91
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->audioRendererCount:I

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/h$c;

    .line 93
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->renderers:[Lcom/google/vr/sdk/widgets/video/deps/u;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 94
    invoke-interface {v5}, Lcom/google/vr/sdk/widgets/video/deps/u;->getTrackType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 95
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/h$c;

    const/4 v8, 0x2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v7, v5, v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/h$c;-><init>(Lcom/google/vr/sdk/widgets/video/deps/h$b;ILjava/lang/Object;)V

    aput-object v7, v0, v4

    move v4, v6

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->sendMessages([Lcom/google/vr/sdk/widgets/video/deps/h$c;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/y;->player:Lcom/google/vr/sdk/widgets/video/deps/h;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/h;->stop()V

    return-void
.end method
