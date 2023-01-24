.class public final Lcom/google/vr/sdk/widgets/video/deps/ag;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/ae<",
        "Lcom/google/vr/sdk/widgets/video/deps/af;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Ljava/util/UUID;

.field private final h:Landroid/media/MediaDrm;


# direct methods
.method private constructor <init>(Ljava/util/UUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->bc:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(ZLjava/lang/Object;)V

    .line 9
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->bd:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/b;->bc:Ljava/util/UUID;

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->g:Ljava/util/UUID;

    .line 11
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    return-void
.end method

.method public static a(Ljava/util/UUID;)Lcom/google/vr/sdk/widgets/video/deps/ag;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/am;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ag;

    invoke-direct {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/ag;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/UnsupportedSchemeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/am;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/google/vr/sdk/widgets/video/deps/am;-><init>(ILjava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p0

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/am;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/vr/sdk/widgets/video/deps/am;-><init>(ILjava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public a([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/google/vr/sdk/widgets/video/deps/ae$a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/ae$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/ag$2;

    invoke-direct {p2, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag$2;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ag;Landroid/media/MediaDrm$KeyRequest;)V

    return-object p2
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ae$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ae$b<",
            "-",
            "Lcom/google/vr/sdk/widgets/video/deps/af;",
            ">;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ag$1;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag$1;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ag;Lcom/google/vr/sdk/widgets/video/deps/ae$b;)V

    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public a([B)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public a()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method

.method public a([B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/ae$c;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ag$3;

    invoke-direct {v1, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ag$3;-><init>(Lcom/google/vr/sdk/widgets/video/deps/ag;Landroid/media/MediaDrm$ProvisionRequest;)V

    return-object v1
.end method

.method public b([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public b([B[B)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public b(Ljava/lang/String;)[B
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public c([B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->h:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    return-void
.end method

.method public synthetic d([B)Lcom/google/vr/sdk/widgets/video/deps/ad;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ag;->e([B)Lcom/google/vr/sdk/widgets/video/deps/af;

    move-result-object p1

    return-object p1
.end method

.method public e([B)Lcom/google/vr/sdk/widgets/video/deps/af;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 36
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->be:Ljava/util/UUID;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->g:Ljava/util/UUID;

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "securityLevel"

    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ag;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/af;

    new-instance v2, Landroid/media/MediaCrypto;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ag;->g:Ljava/util/UUID;

    invoke-direct {v2, v3, p1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    invoke-direct {v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/af;-><init>(Landroid/media/MediaCrypto;Z)V

    return-object v1
.end method
