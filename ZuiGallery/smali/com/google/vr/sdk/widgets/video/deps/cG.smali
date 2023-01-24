.class public abstract Lcom/google/vr/sdk/widgets/video/deps/cG;
.super Lcom/google/vr/sdk/widgets/video/deps/cx;
.source "SegmentDownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cG$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/vr/sdk/widgets/video/deps/cx;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/net/Uri;

.field protected final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Z[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z[TK;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cx;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cG;->a:Landroid/net/Uri;

    .line 3
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cG;->b:[Ljava/lang/Object;

    .line 4
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cG;->c:Z

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cG;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cG;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cG;->b:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cG;->b:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 11
    invoke-virtual {p0, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/cG;->a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected abstract a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "TK;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/cx;)Z
    .locals 1

    .line 15
    instance-of v0, p1, Lcom/google/vr/sdk/widgets/video/deps/cG;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cG;->a:Landroid/net/Uri;

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cG;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cG;->a:Landroid/net/Uri;

    .line 16
    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected c()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cG;->c:Z

    return v0
.end method
