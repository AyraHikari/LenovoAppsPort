.class public final Lcom/zui/gallery/common/FileCache$CacheEntry;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/common/FileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheEntry"
.end annotation


# instance fields
.field public cacheFile:Ljava/io/File;

.field public contentUrl:Ljava/lang/String;

.field private id:J


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide p1, p0, Lcom/zui/gallery/common/FileCache$CacheEntry;->id:J

    .line 70
    iput-object p3, p0, Lcom/zui/gallery/common/FileCache$CacheEntry;->contentUrl:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/zui/gallery/common/FileCache$CacheEntry;->cacheFile:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/io/File;Lcom/zui/gallery/common/FileCache$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/gallery/common/FileCache$CacheEntry;-><init>(JLjava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/common/FileCache$CacheEntry;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/zui/gallery/common/FileCache$CacheEntry;->id:J

    return-wide v0
.end method
