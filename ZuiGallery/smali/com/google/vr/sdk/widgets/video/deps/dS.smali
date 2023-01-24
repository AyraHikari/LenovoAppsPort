.class final Lcom/google/vr/sdk/widgets/video/deps/dS;
.super Ljava/lang/Object;
.source "Aes128DataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fv;


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fv;

.field private final b:[B

.field private final c:[B

.field private d:Ljavax/crypto/CipherInputStream;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fv;[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->b:[B

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->c:[B

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->d:Ljavax/crypto/CipherInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->d:Ljavax/crypto/CipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherInputStream;->read([BII)I

    move-result p1

    if-gez p1, :cond_1

    const/4 p1, -0x1

    :cond_1
    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/fy;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS7Padding"

    .line 6
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 10
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->b:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 11
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->c:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    .line 12
    :try_start_1
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    new-instance v1, Ljavax/crypto/CipherInputStream;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/fx;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-direct {v2, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/fx;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fv;Lcom/google/vr/sdk/widgets/video/deps/fy;)V

    invoke-direct {v1, v2, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->d:Ljavax/crypto/CipherInputStream;

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 15
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 9
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->d:Ljavax/crypto/CipherInputStream;

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->a()V

    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dS;->a:Lcom/google/vr/sdk/widgets/video/deps/fv;

    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/fv;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
