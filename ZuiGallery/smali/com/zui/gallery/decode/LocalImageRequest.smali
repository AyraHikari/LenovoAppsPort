.class public Lcom/zui/gallery/decode/LocalImageRequest;
.super Lcom/zui/gallery/cache/ImageCacheRequest;
.source "LocalImageRequest.java"


# static fields
.field private static TAG:Ljava/lang/String; = "LocalImageRequest"

.field private static final USE_SYSTEM_THUMBNAIL:Z = false

.field private static final selection:Ljava/lang/String; = "image_id=?"

.field private static final thumbColumns:[Ljava/lang/String;


# instance fields
.field private mId:I

.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_id"

    const-string v1, "_data"

    .line 106
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/decode/LocalImageRequest;->thumbColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JILjava/lang/String;ZI)V
    .locals 7

    .line 36
    invoke-static {p5}, Lcom/zui/gallery/data/MediaItem;->getTargetSize(I)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/zui/gallery/cache/ImageCacheRequest;-><init>(Lcom/zui/gallery/app/GalleryApp;Lcom/zui/gallery/data/Path;JII)V

    .line 37
    iput-object p6, p0, Lcom/zui/gallery/decode/LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 38
    iput-boolean p7, p0, Lcom/zui/gallery/decode/LocalImageRequest;->mForceReload:Z

    .line 39
    iput p8, p0, Lcom/zui/gallery/decode/LocalImageRequest;->mId:I

    return-void
.end method

.method private getThumbnail(ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, v5, v0

    .line 115
    iget-object p1, p0, Lcom/zui/gallery/decode/LocalImageRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/zui/gallery/decode/LocalImageRequest;->thumbColumns:[Ljava/lang/String;

    const-string v4, "image_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 120
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 130
    :cond_1
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 132
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 134
    iget-object v2, p0, Lcom/zui/gallery/decode/LocalImageRequest;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 142
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 140
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p2

    .line 138
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_0
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v1

    :goto_1
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 145
    throw p2
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/zui/gallery/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 3

    .line 45
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 46
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 66
    invoke-static {p2}, Lcom/zui/gallery/data/MediaItem;->getTargetSize(I)I

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/zui/gallery/decode/LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1, p2}, Lcom/zui/gallery/decode/DecodeUtils;->decodeThumbnail(Lcom/zui/gallery/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
