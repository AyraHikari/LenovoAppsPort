.class public final Lcom/google/vr/sdk/widgets/video/deps/eh$b;
.super Ljava/lang/Object;
.source "HlsMediaPlaylist.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:I

.field public final d:J

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->a:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->b:J

    .line 6
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->c:I

    .line 7
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->d:J

    .line 8
    iput-boolean p7, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->e:Z

    .line 9
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->f:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->g:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->h:Ljava/lang/String;

    .line 12
    iput-wide p11, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->i:J

    .line 13
    iput-wide p13, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->j:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 15

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    .line 1
    invoke-direct/range {v0 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/eh$b;-><init>(Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)I
    .locals 4

    .line 15
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->d:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->d:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eh$b;->a(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method
