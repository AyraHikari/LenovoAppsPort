.class public Lcom/google/vr/sdk/widgets/video/deps/bV$b;
.super Ljava/lang/Exception;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/bV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Failed to query underlying media codecs"

    .line 1
    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lcom/google/vr/sdk/widgets/video/deps/bV$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/bV$b;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
