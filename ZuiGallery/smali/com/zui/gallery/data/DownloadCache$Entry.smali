.class public Lcom/zui/gallery/data/DownloadCache$Entry;
.super Ljava/lang/Object;
.source "DownloadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/DownloadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Entry"
.end annotation


# instance fields
.field public cacheFile:Ljava/io/File;

.field protected mId:J

.field final synthetic this$0:Lcom/zui/gallery/data/DownloadCache;


# direct methods
.method constructor <init>(Lcom/zui/gallery/data/DownloadCache;JLjava/io/File;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/zui/gallery/data/DownloadCache$Entry;->this$0:Lcom/zui/gallery/data/DownloadCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-wide p2, p0, Lcom/zui/gallery/data/DownloadCache$Entry;->mId:J

    .line 257
    invoke-static {p4}, Lcom/zui/gallery/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/zui/gallery/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    return-void
.end method
