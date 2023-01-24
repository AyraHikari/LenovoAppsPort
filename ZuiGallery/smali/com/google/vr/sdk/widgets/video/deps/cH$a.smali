.class public Lcom/google/vr/sdk/widgets/video/deps/cH$a;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/vr/sdk/widgets/video/deps/cH$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/google/vr/sdk/widgets/video/deps/fy;


# direct methods
.method public constructor <init>(JLcom/google/vr/sdk/widgets/video/deps/fy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cH$a;->a:J

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cH$a;->b:Lcom/google/vr/sdk/widgets/video/deps/fy;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cH$a;)I
    .locals 4

    .line 5
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cH$a;->a:J

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/cH$a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cH$a;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cH$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cH$a;)I

    move-result p1

    return p1
.end method
