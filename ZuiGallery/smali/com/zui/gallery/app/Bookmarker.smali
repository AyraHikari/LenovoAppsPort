.class Lcom/zui/gallery/app/Bookmarker;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# static fields
.field private static final BOOKMARK_CACHE_FILE:Ljava/lang/String; = "bookmark"

.field private static final BOOKMARK_CACHE_MAX_BYTES:I = 0x2800

.field private static final BOOKMARK_CACHE_MAX_ENTRIES:I = 0x64

.field private static final BOOKMARK_CACHE_VERSION:I = 0x1

.field private static final HALF_MINUTE:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "Bookmarker"

.field private static final TWO_MINUTES:I = 0x1d4c0


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput-object p1, p0, Lcom/zui/gallery/app/Bookmarker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBookmark(Landroid/net/Uri;)Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/Bookmarker;->mContext:Landroid/content/Context;

    const-string v2, "bookmark"

    const/16 v3, 0x64

    const/16 v4, 0x2800

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/zui/gallery/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/zui/gallery/common/BlobCache;

    move-result-object v1

    .line 729
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/zui/gallery/common/BlobCache;->lookup(J)[B

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 732
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 735
    invoke-static {v2}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    .line 736
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 737
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 739
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/16 p1, 0x7530

    if-lt v3, p1, :cond_3

    const v1, 0x1d4c0

    if-lt v2, v1, :cond_3

    sub-int/2addr v2, p1

    if-le v3, v2, :cond_2

    goto :goto_0

    .line 747
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_3
    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    const-string v1, "Bookmarker"

    const-string v2, "getBookmark failed"

    .line 749
    invoke-static {v1, v2, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public setBookmark(Landroid/net/Uri;II)V
    .locals 5

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/Bookmarker;->mContext:Landroid/content/Context;

    const-string v1, "bookmark"

    const/16 v2, 0x64

    const/16 v3, 0x2800

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zui/gallery/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/zui/gallery/common/BlobCache;

    move-result-object v0

    .line 711
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 712
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 713
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 715
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 716
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 717
    invoke-virtual {p1}, Landroid/net/Uri;->hashCode()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "Bookmarker"

    const-string p3, "setBookmark failed"

    .line 719
    invoke-static {p2, p3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
