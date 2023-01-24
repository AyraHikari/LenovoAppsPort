.class public Lcom/google/vr/sdk/widgets/video/deps/f;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/f$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field public static final EXTENSION_RENDERER_MODE_OFF:I = 0x0

.field public static final EXTENSION_RENDERER_MODE_ON:I = 0x1

.field public static final EXTENSION_RENDERER_MODE_PREFER:I = 0x2

.field protected static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DefaultRenderersFactory"


# instance fields
.field private final allowedVideoJoiningTimeMs:J

.field private final context:Landroid/content/Context;

.field private final drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;"
        }
    .end annotation
.end field

.field private final extensionRendererMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/f;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/f;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;I)V"
        }
    .end annotation

    const-wide/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/f;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;IJ)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->context:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    .line 10
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->extensionRendererMode:I

    .line 11
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->allowedVideoJoiningTimeMs:J

    return-void
.end method


# virtual methods
.method protected buildAudioProcessors()[Lcom/google/vr/sdk/widgets/video/deps/F;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/F;

    return-object v0
.end method

.method protected buildAudioRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;[Lcom/google/vr/sdk/widgets/video/deps/F;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;ILjava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/ac<",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;[",
            "Lcom/google/vr/sdk/widgets/video/deps/F;",
            "Landroid/os/Handler;",
            "Lcom/google/vr/sdk/widgets/video/deps/G;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/u;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p6

    move-object/from16 v9, p7

    const-string v10, "DefaultRenderersFactory"

    .line 40
    new-instance v11, Lcom/google/vr/sdk/widgets/video/deps/K;

    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/bU;->a:Lcom/google/vr/sdk/widgets/video/deps/bU;

    .line 41
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/C;->a(Landroid/content/Context;)Lcom/google/vr/sdk/widgets/video/deps/C;

    move-result-object v7

    const/4 v4, 0x1

    move-object v1, v11

    move-object v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/K;-><init>(Lcom/google/vr/sdk/widgets/video/deps/bU;Lcom/google/vr/sdk/widgets/video/deps/ac;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;Lcom/google/vr/sdk/widgets/video/deps/C;[Lcom/google/vr/sdk/widgets/video/deps/F;)V

    .line 42
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer"

    .line 49
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Class;

    .line 50
    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v0

    const-class v7, Lcom/google/vr/sdk/widgets/video/deps/G;

    aput-object v7, v6, v4

    const-class v7, [Lcom/google/vr/sdk/widgets/video/deps/F;

    aput-object v7, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p4, v6, v0

    aput-object p5, v6, v4

    aput-object p3, v6, v2

    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/vr/sdk/widgets/video/deps/u;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, v1, 0x1

    .line 52
    :try_start_1
    invoke-virtual {v9, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "Loaded LibopusAudioRenderer."

    .line 53
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move v1, v6

    goto :goto_0

    :catch_1
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    :goto_0
    move v6, v1

    :goto_1
    :try_start_2
    const-string v1, "com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer"

    .line 60
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Class;

    .line 61
    const-class v7, Landroid/os/Handler;

    aput-object v7, v5, v0

    const-class v7, Lcom/google/vr/sdk/widgets/video/deps/G;

    aput-object v7, v5, v4

    const-class v7, [Lcom/google/vr/sdk/widgets/video/deps/F;

    aput-object v7, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p4, v5, v0

    aput-object p5, v5, v4

    aput-object p3, v5, v2

    .line 62
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/u;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    add-int/lit8 v5, v6, 0x1

    .line 63
    :try_start_3
    invoke-virtual {v9, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "Loaded LibflacAudioRenderer."

    .line 64
    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_3
    move v6, v5

    goto :goto_2

    :catch_4
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    :goto_2
    move v5, v6

    :goto_3
    :try_start_4
    const-string v1, "com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer"

    .line 71
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Class;

    .line 72
    const-class v7, Landroid/os/Handler;

    aput-object v7, v6, v0

    const-class v7, Lcom/google/vr/sdk/widgets/video/deps/G;

    aput-object v7, v6, v4

    const-class v7, [Lcom/google/vr/sdk/widgets/video/deps/F;

    aput-object v7, v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p4, v3, v0

    aput-object p5, v3, v4

    aput-object p3, v3, v2

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 74
    invoke-virtual {v9, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded FfmpegAudioRenderer."

    .line 75
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    :goto_4
    return-void
.end method

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

    .line 84
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cc;

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cc;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cb;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/u;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected buildTextRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ev;Landroid/os/Looper;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/vr/sdk/widgets/video/deps/ev;",
            "Landroid/os/Looper;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/google/vr/sdk/widgets/video/deps/u;",
            ">;)V"
        }
    .end annotation

    .line 82
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ew;

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ew;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ev;Landroid/os/Looper;)V

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected buildVideoRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;JLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;ILjava/util/ArrayList;)V
    .locals 13
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

    move/from16 v0, p7

    move-object/from16 v1, p8

    .line 20
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/gS;

    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/bU;->a:Lcom/google/vr/sdk/widgets/video/deps/bU;

    const/4 v8, 0x0

    const/16 v11, 0x32

    move-object v2, v12

    move-object v3, p1

    move-wide/from16 v5, p3

    move-object v7, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/gS;-><init>(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/bU;JLcom/google/vr/sdk/widgets/video/deps/ac;ZLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer"

    .line 27
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    .line 28
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v6, Landroid/os/Handler;

    aput-object v6, v5, v3

    const-class v6, Lcom/google/vr/sdk/widgets/video/deps/gU;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p5, v4, v3

    aput-object p6, v4, v9

    const/16 v3, 0x32

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v10

    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/u;

    .line 32
    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "DefaultRenderersFactory"

    const-string v1, "Loaded LibvpxVideoRenderer."

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    :goto_0
    return-void
.end method

.method public createRenderers(Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;Lcom/google/vr/sdk/widgets/video/deps/G;Lcom/google/vr/sdk/widgets/video/deps/ev;Lcom/google/vr/sdk/widgets/video/deps/cb;)[Lcom/google/vr/sdk/widgets/video/deps/u;
    .locals 10

    .line 13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->allowedVideoJoiningTimeMs:J

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->extensionRendererMode:I

    move-object v0, p0

    move-object v5, p1

    move-object v6, p2

    move-object v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/f;->buildVideoRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;JLandroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/gU;ILjava/util/ArrayList;)V

    .line 15
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->drmSessionManager:Lcom/google/vr/sdk/widgets/video/deps/ac;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/f;->buildAudioProcessors()[Lcom/google/vr/sdk/widgets/video/deps/F;

    move-result-object v3

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->extensionRendererMode:I

    move-object v4, p1

    move-object v5, p3

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/f;->buildAudioRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ac;[Lcom/google/vr/sdk/widgets/video/deps/F;Landroid/os/Handler;Lcom/google/vr/sdk/widgets/video/deps/G;ILjava/util/ArrayList;)V

    .line 16
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->extensionRendererMode:I

    move-object v2, p4

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/f;->buildTextRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/ev;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 17
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->extensionRendererMode:I

    move-object v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/f;->buildMetadataRenderers(Landroid/content/Context;Lcom/google/vr/sdk/widgets/video/deps/cb;Landroid/os/Looper;ILjava/util/ArrayList;)V

    .line 18
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->context:Landroid/content/Context;

    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/f;->extensionRendererMode:I

    invoke-virtual {p0, p2, p1, p3, v9}, Lcom/google/vr/sdk/widgets/video/deps/f;->buildMiscellaneousRenderers(Landroid/content/Context;Landroid/os/Handler;ILjava/util/ArrayList;)V

    .line 19
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/vr/sdk/widgets/video/deps/u;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/u;

    return-object p1
.end method
