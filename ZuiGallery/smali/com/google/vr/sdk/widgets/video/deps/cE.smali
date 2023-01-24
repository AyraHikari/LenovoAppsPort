.class public final Lcom/google/vr/sdk/widgets/video/deps/cE;
.super Lcom/google/vr/sdk/widgets/video/deps/cx;
.source "ProgressiveDownloadAction.java"


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cx$a;

.field private static final b:Ljava/lang/String; = "ProgressiveDownloadAction"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cE$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/cE$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/cE;->a:Lcom/google/vr/sdk/widgets/video/deps/cx$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/cx;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->d:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->e:Z

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

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cE;->b(Lcom/google/vr/sdk/widgets/video/deps/cC;)Lcom/google/vr/sdk/widgets/video/deps/cF;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/cE;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/cx;)Z
    .locals 1

    .line 16
    instance-of v0, p1, Lcom/google/vr/sdk/widgets/video/deps/cE;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_0
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cE;

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cE;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cE;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/cC;)Lcom/google/vr/sdk/widgets/video/deps/cF;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cF;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/cF;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cC;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "ProgressiveDownloadAction"

    return-object v0
.end method

.method protected c()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/cE;

    .line 27
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->e:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cE;->e:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/cE;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/cE;->d:Ljava/lang/String;

    .line 28
    invoke-static {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 32
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/cE;->e:Z

    add-int/2addr v0, v1

    return v0
.end method
