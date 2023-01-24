.class public Lcom/zui/gallery/data/SecureAlbum;
.super Lcom/zui/gallery/data/MediaSet;
.source "SecureAlbum.java"

# interfaces
.implements Lcom/zui/gallery/app/StitchingChangeListener;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SecureAlbum"

.field private static final mWatchUris:[Landroid/net/Uri;


# instance fields
.field private mAllItemTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAllItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDataManager:Lcom/zui/gallery/data/DataManager;

.field private mExistingItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxImageId:I

.field private mMaxVideoId:I

.field private mMinImageId:I

.field private mMinVideoId:I

.field private final mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

.field private mShowUnlockItem:Z

.field private mUnlockItem:Lcom/zui/gallery/data/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_id"

    .line 39
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    .line 53
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/zui/gallery/data/SecureAlbum;->mWatchUris:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/data/Path;Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/MediaItem;)V
    .locals 2

    .line 65
    invoke-static {}, Lcom/zui/gallery/data/SecureAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/data/MediaSet;-><init>(Lcom/zui/gallery/data/Path;J)V

    const p1, 0x7fffffff

    .line 42
    iput p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mMinImageId:I

    const/high16 v0, -0x80000000

    .line 43
    iput v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mMaxImageId:I

    .line 44
    iput p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mMinVideoId:I

    .line 45
    iput v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mMaxVideoId:I

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    .line 62
    sget-object p1, Lcom/zui/gallery/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mComparator:Ljava/util/Comparator;

    .line 66
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mContext:Landroid/content/Context;

    .line 67
    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mDataManager:Lcom/zui/gallery/data/DataManager;

    .line 68
    new-instance p1, Lcom/zui/gallery/data/ChangeNotifier;

    sget-object v0, Lcom/zui/gallery/data/SecureAlbum;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {p1, p0, v0, p2}, Lcom/zui/gallery/data/ChangeNotifier;-><init>(Lcom/zui/gallery/data/MediaSet;[Landroid/net/Uri;Lcom/zui/gallery/app/GalleryApp;)V

    iput-object p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    .line 69
    iput-object p3, p0, Lcom/zui/gallery/data/SecureAlbum;->mUnlockItem:Lcom/zui/gallery/data/MediaItem;

    .line 70
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/zui/gallery/data/SecureAlbum;->isCameraBucketEmpty(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 71
    invoke-direct {p0, p1}, Lcom/zui/gallery/data/SecureAlbum;->isCameraBucketEmpty(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mShowUnlockItem:Z

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mCurrentId:Ljava/util/List;

    return-void
.end method

.method private isCameraBucketEmpty(Landroid/net/Uri;)Z
    .locals 7

    .line 175
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "limit"

    const-string v1, "1"

    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    .line 177
    sget v0, Lcom/zui/gallery/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    .line 178
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v4, v6

    .line 180
    iget-object v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/zui/gallery/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    .line 185
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v6

    .line 187
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 188
    throw p1
.end method

.method private queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7fffffff

    if-eq p2, v1, :cond_3

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    .line 158
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v6, v1

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v6, p2

    .line 160
    iget-object p2, p0, Lcom/zui/gallery/data/SecureAlbum;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/zui/gallery/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v5, "_id BETWEEN ? AND ?"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 165
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 166
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 170
    throw p2

    :cond_3
    :goto_1
    return-object v0
.end method

.method private updateExistingItems()V
    .locals 6

    .line 192
    iget-object v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v1, p0, Lcom/zui/gallery/data/SecureAlbum;->mMinImageId:I

    iget v2, p0, Lcom/zui/gallery/data/SecureAlbum;->mMaxImageId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/zui/gallery/data/SecureAlbum;->queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/zui/gallery/data/SecureAlbum;->mMinVideoId:I

    iget v3, p0, Lcom/zui/gallery/data/SecureAlbum;->mMaxVideoId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/zui/gallery/data/SecureAlbum;->queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/zui/gallery/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 203
    iget-object v2, p0, Lcom/zui/gallery/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_3

    .line 204
    iget-object v3, p0, Lcom/zui/gallery/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/Path;

    .line 205
    iget-object v4, p0, Lcom/zui/gallery/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 206
    invoke-virtual {v3}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v4, :cond_1

    .line 208
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    iget-object v4, p0, Lcom/zui/gallery/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    iget-object v4, p0, Lcom/zui/gallery/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addMediaItem(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    .line 78
    sget-object v0, Lcom/zui/gallery/data/LocalVideo;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    .line 79
    iget v1, p0, Lcom/zui/gallery/data/SecureAlbum;->mMinVideoId:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/SecureAlbum;->mMinVideoId:I

    .line 80
    iget v1, p0, Lcom/zui/gallery/data/SecureAlbum;->mMaxVideoId:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/SecureAlbum;->mMaxVideoId:I

    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lcom/zui/gallery/data/LocalImage;->ITEM_PATH:Lcom/zui/gallery/data/Path;

    .line 83
    iget v1, p0, Lcom/zui/gallery/data/SecureAlbum;->mMinImageId:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/SecureAlbum;->mMinImageId:I

    .line 84
    iget v1, p0, Lcom/zui/gallery/data/SecureAlbum;->mMaxImageId:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/data/SecureAlbum;->mMaxImageId:I

    .line 86
    :goto_0
    invoke-virtual {v0, p2}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object p2

    .line 87
    iget-object v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p2, p0, Lcom/zui/gallery/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    invoke-virtual {p1}, Lcom/zui/gallery/data/ChangeNotifier;->fakeChange()V

    :cond_1
    return-void
.end method

.method public clearItems()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    iget-object v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    if-lt p1, v1, :cond_0

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    add-int/2addr p2, p1

    .line 111
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zui/gallery/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sub-int/2addr p2, p1

    .line 115
    new-array p1, p2, [Lcom/zui/gallery/data/MediaItem;

    .line 116
    new-instance v1, Lcom/zui/gallery/data/SecureAlbum$1;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/data/SecureAlbum$1;-><init>(Lcom/zui/gallery/data/SecureAlbum;[Lcom/zui/gallery/data/MediaItem;)V

    .line 122
    iget-object v2, p0, Lcom/zui/gallery/data/SecureAlbum;->mDataManager:Lcom/zui/gallery/data/DataManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/zui/gallery/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/zui/gallery/data/MediaSet$ItemConsumer;I)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v3, p2, :cond_1

    .line 125
    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/data/SecureAlbum;->mComparator:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "secure"

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onStitchingProgress(Landroid/net/Uri;I)V
    .locals 0

    return-void
.end method

.method public onStitchingQueued(Landroid/net/Uri;)V
    .locals 1

    .line 224
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/data/SecureAlbum;->addMediaItem(ZI)V

    return-void
.end method

.method public onStitchingResult(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public reload()J
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mNotifier:Lcom/zui/gallery/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/zui/gallery/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/zui/gallery/data/SecureAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mDataVersion:J

    .line 147
    invoke-direct {p0}, Lcom/zui/gallery/data/SecureAlbum;->updateExistingItems()V

    .line 149
    :cond_0
    iget-wide v0, p0, Lcom/zui/gallery/data/SecureAlbum;->mDataVersion:J

    return-wide v0
.end method
