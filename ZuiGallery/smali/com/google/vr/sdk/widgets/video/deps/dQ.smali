.class public final Lcom/google/vr/sdk/widgets/video/deps/dQ;
.super Lcom/google/vr/sdk/widgets/video/deps/cG;
.source "DashDownloadAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/vr/sdk/widgets/video/deps/cG<",
        "Lcom/google/vr/sdk/widgets/video/deps/dL;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/google/vr/sdk/widgets/video/deps/cx$a;

.field private static final d:Ljava/lang/String; = "DashDownloadAction"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dQ$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/dQ$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/dQ;->c:Lcom/google/vr/sdk/widgets/video/deps/cx$a;

    return-void
.end method

.method public varargs constructor <init>(Landroid/net/Uri;Z[Lcom/google/vr/sdk/widgets/video/deps/dL;)V
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

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dQ;->b(Lcom/google/vr/sdk/widgets/video/deps/cC;)Lcom/google/vr/sdk/widgets/video/deps/dR;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/io/DataOutputStream;Lcom/google/vr/sdk/widgets/video/deps/dL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget v0, p2, Lcom/google/vr/sdk/widgets/video/deps/dL;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 9
    iget v0, p2, Lcom/google/vr/sdk/widgets/video/deps/dL;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 10
    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/dL;->c:I

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/io/DataOutputStream;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/dL;

    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dQ;->a(Ljava/io/DataOutputStream;Lcom/google/vr/sdk/widgets/video/deps/dL;)V

    return-void
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/cC;)Lcom/google/vr/sdk/widgets/video/deps/dR;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dR;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dQ;->a:Landroid/net/Uri;

    invoke-direct {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/dR;-><init>(Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/cC;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/dQ;->c()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dQ;->b:[Ljava/lang/Object;

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/dL;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dR;->a([Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "DashDownloadAction"

    return-object v0
.end method
