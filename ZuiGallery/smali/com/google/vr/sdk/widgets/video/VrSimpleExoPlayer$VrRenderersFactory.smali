.class Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer$VrRenderersFactory;
.super Lcom/google/vr/sdk/widgets/video/deps/f;
.source "VrSimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/VrSimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VrRenderersFactory"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected buildMetadataRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cb;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/u;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-super/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/f;->buildMetadataRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cb;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 6
    new-instance p1, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;

    sget-object p2, Lcom/google/vr/libraries/video/MotionCoordinateSystem;->FLIP_XY:Lcom/google/vr/libraries/video/MotionCoordinateSystem;

    invoke-direct {p1, p2}, Lcom/google/vr/libraries/video/CameraMotionMetadataRendererV2;-><init>(Lcom/google/vr/libraries/video/MotionCoordinateSystem;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;JLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;ILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;J",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/gU;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/u;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance p7, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;

    move-object v0, p7

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move-object v4, p6

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/vr/libraries/video/SphericalV2MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/ac;Lcom/google/vr/sdk/widgets/video/deps/gU;J)V

    invoke-virtual {p8, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
