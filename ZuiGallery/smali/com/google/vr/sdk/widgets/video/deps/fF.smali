.class public final Lcom/google/vr/sdk/widgets/video/deps/fF;
.super Ljava/lang/Object;
.source "DummyDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/fF;

.field public static final b:Lcom/google/vr/sdk/widgets/video/deps/fv$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fF;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/fF;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/fF;->a:Lcom/google/vr/sdk/widgets/video/deps/fF;

    .line 8
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/fF$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/fF$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/fF;->b:Lcom/google/vr/sdk/widgets/video/deps/fv$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fF$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/fF;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Dummy source"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
