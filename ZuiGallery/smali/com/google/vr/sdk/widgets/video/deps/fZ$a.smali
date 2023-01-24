.class public Lcom/google/vr/sdk/widgets/video/deps/fZ$a;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public volatile a:J

.field public volatile b:J

.field public volatile c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 3
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->a:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fZ$a;->b:J

    add-long/2addr v0, v2

    return-wide v0
.end method
