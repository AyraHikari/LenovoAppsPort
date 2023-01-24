.class public final Lcom/google/vr/sdk/widgets/video/deps/gK;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 5
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 6
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gK;->b()V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 2
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gK;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b()V
    .locals 0

    .line 10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method
