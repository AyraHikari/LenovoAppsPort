.class public Lcom/google/vr/sdk/widgets/video/deps/fY;
.super Ljava/lang/Object;
.source "CacheSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/vr/sdk/widgets/video/deps/fY;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Ljava/io/File;

.field public final f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 9

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/fY;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLjava/io/File;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fY;->a:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fY;->b:J

    .line 6
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fY;->c:J

    if-eqz p8, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fY;->d:Z

    .line 8
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/fY;->e:Ljava/io/File;

    .line 9
    iput-wide p6, p0, Lcom/google/vr/sdk/widgets/video/deps/fY;->f:J

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/fY;)I
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fY;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fY;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 15
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fY;->b:J

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/fY;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public a()Z
    .locals 4

    .line 11
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fY;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fY;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/fY;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fY;->a(Lcom/google/vr/sdk/widgets/video/deps/fY;)I

    move-result p1

    return p1
.end method
