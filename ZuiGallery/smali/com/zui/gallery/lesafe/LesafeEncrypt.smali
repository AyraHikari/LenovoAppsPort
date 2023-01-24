.class public Lcom/zui/gallery/lesafe/LesafeEncrypt;
.super Ljava/lang/Object;
.source "LesafeEncrypt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/lesafe/LesafeEncrypt$ThreadInitChiper;
    }
.end annotation


# static fields
.field private static final BWP_ENCRYPT_SEED:Ljava/lang/String; = "qWmHYUg8Gfr50Njg"

.field private static final TAG:Ljava/lang/String; = "LesafeDataConst"

.field public static iv:[B = null

.field public static keyForServer:[B = null

.field private static mIsCipherInit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UTF-8"

    const-string v1, "qWmHYUg8Gfr50Njg"

    .line 41
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    sput-object v2, Lcom/zui/gallery/lesafe/LesafeEncrypt;->keyForServer:[B

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/lesafe/LesafeEncrypt;->iv:[B

    const-string v0, "LesafeDataConst"

    const-string v1, "BWEncrypt : initial key"

    .line 43
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized AESCipherInit()V
    .locals 2

    const-class v0, Lcom/zui/gallery/lesafe/LesafeEncrypt;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-boolean v1, Lcom/zui/gallery/lesafe/LesafeEncrypt;->mIsCipherInit:Z

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/zui/gallery/lesafe/LesafeEncrypt$ThreadInitChiper;

    invoke-direct {v1}, Lcom/zui/gallery/lesafe/LesafeEncrypt$ThreadInitChiper;-><init>()V

    .line 71
    invoke-virtual {v1}, Lcom/zui/gallery/lesafe/LesafeEncrypt$ThreadInitChiper;->start()V

    const/4 v1, 0x1

    .line 72
    sput-boolean v1, Lcom/zui/gallery/lesafe/LesafeEncrypt;->mIsCipherInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static AESDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 96
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 97
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/zui/gallery/lesafe/LesafeEncrypt;->keyForServer:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/CBC/PKCS5Padding"

    .line 98
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 99
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/zui/gallery/lesafe/LesafeEncrypt;->iv:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 101
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "LesafeDataConst"

    const-string v0, "decrypt error"

    .line 105
    invoke-static {p0, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static AESEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 79
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/zui/gallery/lesafe/LesafeEncrypt;->keyForServer:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const-string v1, "AES/CBC/PKCS5Padding"

    .line 81
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 82
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lcom/zui/gallery/lesafe/LesafeEncrypt;->iv:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v0, "UTF-8"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s"

    const-string v1, ""

    .line 86
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
