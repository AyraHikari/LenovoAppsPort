.class final Lcom/google/vr/sdk/widgets/video/deps/df$b;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fJ$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/df;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private c:I

.field private d:[B


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/fv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fv;

    return-void
.end method

.method static synthetic a(Lcom/google/vr/sdk/widgets/video/deps/df$b;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->c:I

    return p0
.end method

.method static synthetic b(Lcom/google/vr/sdk/widgets/video/deps/df$b;)[B
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->d:[B

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->c:I

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fv;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/fy;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->a:Landroid/net/Uri;

    invoke-direct {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/fy;-><init>(Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 11
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->c:I

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->d:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 13
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->d:[B

    goto :goto_1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->d:[B

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->d:[B

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->d:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->d:[B

    .line 16
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fv;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->d:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->c:I

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->d:[B

    array-length v3, v3

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->c:I

    sub-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    return-void

    :catchall_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/df$b;->b:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Lcom/google/vr/sdk/widgets/video/deps/fv;)V

    throw v0
.end method
