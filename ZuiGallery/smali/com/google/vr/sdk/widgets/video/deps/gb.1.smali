.class final Lcom/google/vr/sdk/widgets/video/deps/gb;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"


# static fields
.field public static final a:Ljava/lang/String; = "cached_content_index.exi"

.field private static final b:I = 0x1

.field private static final c:I = 0x1

.field private static final d:Ljava/lang/String; = "CachedContentIndex"


# instance fields
.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/ga;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/vr/sdk/widgets/video/deps/gm;

.field private final h:Ljavax/crypto/Cipher;

.field private final i:Ljavax/crypto/spec/SecretKeySpec;

.field private final j:Z

.field private k:Z

.field private l:Lcom/google/vr/sdk/widgets/video/deps/gF;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/gb;-><init>(Ljava/io/File;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[B)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gb;-><init>(Ljava/io/File;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;[BZ)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->j:Z

    if-eqz p2, :cond_1

    .line 8
    array-length p3, p2

    const/16 v0, 0x10

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Z)V

    :try_start_0
    const-string p3, "AES/CBC/PKCS5PADDING"

    .line 9
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Ljavax/crypto/Cipher;

    .line 10
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p3, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->i:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 13
    :goto_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Ljavax/crypto/Cipher;

    .line 15
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->i:Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    :goto_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:Ljava/util/HashMap;

    .line 17
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->f:Landroid/util/SparseArray;

    .line 18
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/gm;

    new-instance p3, Ljava/io/File;

    const-string v0, "cached_content_index.exi"

    invoke-direct {p3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gm;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/gm;

    return-void
.end method

.method public static a(Landroid/util/SparseArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 165
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 166
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_0
    if-gez v2, :cond_3

    :goto_1
    if-ge v1, v0, :cond_2

    .line 169
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move v2, v1

    :cond_3
    return v2
.end method

.method private b(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/ga;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->f:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(Landroid/util/SparseArray;)I

    move-result v0

    .line 162
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ga;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ga;-><init>(ILjava/lang/String;J)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(Lcom/google/vr/sdk/widgets/video/deps/ga;)V

    return-object v1
.end method

.method private b(Lcom/google/vr/sdk/widgets/video/deps/ga;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->f:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/ga;->a:I

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private f()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/gm;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/gm;->c()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 71
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    return v0

    .line 73
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_1

    .line 78
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    return v0

    :cond_1
    const/16 v1, 0x10

    :try_start_3
    new-array v1, v1, [B

    .line 81
    invoke-virtual {v3, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 82
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    :try_start_4
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Ljavax/crypto/Cipher;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->i:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v6, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 87
    :try_start_5
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v5, Ljavax/crypto/CipherInputStream;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Ljavax/crypto/Cipher;

    invoke-direct {v5, v2, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 86
    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_3

    .line 90
    iput-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->k:Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    move-object v1, v3

    .line 91
    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v3, v0

    move v5, v3

    :goto_2
    if-ge v3, v2, :cond_4

    .line 94
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/ga;

    invoke-direct {v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/ga;-><init>(Ljava/io/DataInputStream;)V

    .line 95
    invoke-direct {p0, v6}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Lcom/google/vr/sdk/widgets/video/deps/ga;)V

    .line 96
    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/ga;->d()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 98
    :cond_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eq v2, v5, :cond_5

    .line 101
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    return v0

    .line 104
    :cond_5
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    return v4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-object v1, v3

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    :goto_3
    :try_start_7
    const-string v2, "CachedContentIndex"

    const-string v4, "Error reading cache content index file."

    .line 111
    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_6

    .line 114
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    :cond_6
    return v0

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_7

    .line 117
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    :cond_7
    throw v0

    :catch_5
    :goto_5
    if-eqz v1, :cond_8

    .line 108
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    :cond_8
    return v0
.end method

.method private g()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/gm;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gm;->b()Ljava/io/OutputStream;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->l:Lcom/google/vr/sdk/widgets/video/deps/gF;

    if-nez v2, :cond_0

    .line 122
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/gF;

    invoke-direct {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gF;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->l:Lcom/google/vr/sdk/widgets/video/deps/gF;

    goto :goto_0

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->l:Lcom/google/vr/sdk/widgets/video/deps/gF;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gF;->a(Ljava/io/OutputStream;)V

    .line 124
    :goto_0
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->l:Lcom/google/vr/sdk/widgets/video/deps/gF;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    .line 125
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 126
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->j:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Ljavax/crypto/Cipher;

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v4

    .line 128
    :goto_2
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz v3, :cond_3

    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 131
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 132
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 133
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Ljavax/crypto/Cipher;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->i:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, v2, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 139
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljavax/crypto/CipherOutputStream;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->l:Lcom/google/vr/sdk/widgets/video/deps/gF;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->h:Ljavax/crypto/Cipher;

    invoke-direct {v3, v5, v6}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 137
    :goto_3
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 140
    :cond_3
    :goto_4
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 142
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/ga;

    .line 143
    invoke-virtual {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(Ljava/io/DataOutputStream;)V

    .line 144
    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/ga;->d()I

    move-result v3

    add-int/2addr v4, v3

    goto :goto_5

    .line 146
    :cond_4
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 147
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/gm;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gm;->a(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    .line 152
    :goto_6
    :try_start_4
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/fS$a;

    invoke-direct {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fS$a;-><init>(Ljava/io/IOException;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    :goto_7
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->a(Ljava/io/Closeable;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/ga;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 33
    invoke-direct {p0, p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/ga;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->k:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 21
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gb;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->g:Lcom/google/vr/sdk/widgets/video/deps/gm;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/gm;->a()V

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->f:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    return-void
.end method

.method a(Lcom/google/vr/sdk/widgets/video/deps/ga;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Lcom/google/vr/sdk/widgets/video/deps/ga;)V

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->k:Z

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 3

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a()J

    move-result-wide v1

    cmp-long p1, v1, p2

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a(J)V

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->k:Z

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Ljava/lang/String;J)Lcom/google/vr/sdk/widgets/video/deps/ga;

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ga;

    return-object p1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/fS$a;
        }
    .end annotation

    .line 26
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gb;->g()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->k:Z

    return-void
.end method

.method public c(Ljava/lang/String;)I
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;

    move-result-object p1

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ga;->a:I

    return p1
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/vr/sdk/widgets/video/deps/ga;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 4

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/ga;

    .line 47
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/ga;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ga;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 50
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gb;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ga;

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->f:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ga;->a:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->k:Z

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)J
    .locals 2

    .line 62
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gb;->b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ga;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ga;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gb;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
