.class public abstract Lcom/google/vr/sdk/widgets/video/deps/cG$a;
.super Ljava/lang/Object;
.source "SegmentDownloadAction.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cx$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/cG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/cx$a;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/net/Uri;Z[Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/cx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z[TK;)",
            "Lcom/google/vr/sdk/widgets/video/deps/cx;"
        }
    .end annotation
.end method

.method public a(Ljava/io/DataInputStream;)Lcom/google/vr/sdk/widgets/video/deps/cx;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cG$a;->a(I)[Ljava/lang/Object;

    move-result-object v4

    :goto_1
    if-ge v2, v1, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cG$a;->b(Ljava/io/DataInputStream;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v4

    .line 11
    :goto_2
    invoke-virtual {p0, v0, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/cG$a;->a(Landroid/net/Uri;Z[Ljava/lang/Object;)Lcom/google/vr/sdk/widgets/video/deps/cx;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(I)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TK;"
        }
    .end annotation
.end method

.method protected abstract b(Ljava/io/DataInputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            ")TK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
