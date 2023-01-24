.class Lcom/zui/gallery/data/BucketHelper$1;
.super Ljava/lang/Object;
.source "BucketHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/data/BucketHelper;->loadBucketEntriesFromImagesAndVideoTable(Lcom/zui/gallery/util/ThreadPool$JobContext;Landroid/content/ContentResolver;I)[Lcom/zui/gallery/data/BucketHelper$BucketEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/zui/gallery/data/BucketHelper$BucketEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/zui/gallery/data/BucketHelper$BucketEntry;Lcom/zui/gallery/data/BucketHelper$BucketEntry;)I
    .locals 2

    .line 407
    iget-wide v0, p2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    iget-wide p1, p1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;->dateTaken:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 403
    check-cast p1, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    check-cast p2, Lcom/zui/gallery/data/BucketHelper$BucketEntry;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/data/BucketHelper$1;->compare(Lcom/zui/gallery/data/BucketHelper$BucketEntry;Lcom/zui/gallery/data/BucketHelper$BucketEntry;)I

    move-result p1

    return p1
.end method
