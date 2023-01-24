.class public Lcom/zui/gallery/ui/CacheStorageUsageInfo;
.super Ljava/lang/Object;
.source "CacheStorageUsageInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheStorageUsageInfo"


# instance fields
.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mContext:Landroid/content/Context;

.field private mTargetCacheBytes:J

.field private mTotalBytes:J

.field private mUsedBytes:J

.field private mUsedCacheBytes:J

.field private mUserChangeDelta:J


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 49
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getExpectedUsedBytes()J
    .locals 4

    .line 79
    iget-wide v0, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mUsedBytes:J

    iget-wide v2, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mUsedCacheBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mTargetCacheBytes:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeBytes()J
    .locals 4

    .line 88
    iget-wide v0, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mTotalBytes:J

    iget-wide v2, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mUsedBytes:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public getUsedBytes()J
    .locals 2

    .line 84
    iget-wide v0, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mUsedBytes:J

    return-wide v0
.end method

.method public increaseTargetCacheSize(J)V
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mUserChangeDelta:J

    return-void
.end method

.method public loadStorageInfo(Lcom/zui/gallery/util/ThreadPool$JobContext;)V
    .locals 9

    .line 57
    iget-object p1, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    .line 62
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 63
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-long v1, p1

    .line 65
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    int-to-long v3, p1

    .line 66
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p1

    int-to-long v5, p1

    mul-long v7, v1, v5

    .line 68
    iput-wide v7, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mTotalBytes:J

    sub-long/2addr v5, v3

    mul-long/2addr v1, v5

    .line 69
    iput-wide v1, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mUsedBytes:J

    .line 70
    iget-object p1, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/DataManager;->getTotalUsedCacheSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mUsedCacheBytes:J

    .line 71
    iget-object p1, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/DataManager;->getTotalTargetCacheSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/ui/CacheStorageUsageInfo;->mTargetCacheBytes:J

    return-void
.end method
