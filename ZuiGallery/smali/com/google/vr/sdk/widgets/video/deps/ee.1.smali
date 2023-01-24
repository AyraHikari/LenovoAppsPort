.class public final Lcom/google/vr/sdk/widgets/video/deps/ee;
.super Lcom/google/vr/sdk/widgets/video/deps/cG;
.source "HlsDownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/sdk/widgets/video/deps/cG<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/google/vr/sdk/widgets/video/deps/cx$a;

.field private static final d:Ljava/lang/String; = "HlsDownloadAction"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ee$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/ee$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ee;->c:Lcom/google/vr/sdk/widgets/video/deps/cx$a;

    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Z[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/cG;-><init>(Landroid/net/Uri;Z[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/google/vr/sdk/widgets/video/deps/cC;)Lcom/google/vr/sdk/widgets/video/deps/cB;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ee;->b(Lcom/google/vr/sdk/widgets/video/deps/cC;)Lcom/google/vr/sdk/widgets/video/deps/ef;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ee;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/cC;)Lcom/google/vr/sdk/widgets/video/deps/ef;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ef;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->a:Landroid/net/Uri;

    invoke-direct {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ef;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/cC;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ee;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ee;->b:[Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ef;->a([Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "HlsDownloadAction"

    return-object v0
.end method
