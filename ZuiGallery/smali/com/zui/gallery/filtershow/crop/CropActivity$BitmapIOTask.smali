.class Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;
.super Landroid/os/AsyncTask;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/crop/CropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapIOTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mCrop:Landroid/graphics/RectF;

.field mFlags:I

.field mInStream:Ljava/io/InputStream;

.field mInUri:Landroid/net/Uri;

.field mOrig:Landroid/graphics/RectF;

.field mOutStream:Ljava/io/OutputStream;

.field mOutUri:Landroid/net/Uri;

.field mOutputFormat:Ljava/lang/String;

.field mPhoto:Landroid/graphics/RectF;

.field mResultIntent:Landroid/content/Intent;

.field mRotation:I

.field private final mWPManager:Landroid/app/WallpaperManager;

.field final synthetic this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 359
    const-class v0, Lcom/zui/gallery/filtershow/crop/CropActivity;

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/crop/CropActivity;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;ILandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;III)V
    .locals 2

    .line 390
    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    .line 363
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    .line 364
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    .line 365
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 366
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 367
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    .line 368
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    .line 369
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    .line 370
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    .line 371
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    .line 372
    iput v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 391
    iput-object p4, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    .line 392
    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    .line 393
    iput-object p3, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 394
    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    .line 395
    iput p5, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    .line 396
    iput-object p6, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    .line 397
    iput-object p7, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    .line 398
    iput-object p8, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    .line 399
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    .line 400
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iput-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    if-gez p9, :cond_0

    neg-int p9, p9

    .line 401
    :cond_0
    iput p9, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 402
    rem-int/lit16 p9, p9, 0x168

    iput p9, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 403
    div-int/lit8 p9, p9, 0x5a

    mul-int/lit8 p9, p9, 0x5a

    iput p9, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    .line 404
    invoke-static {p1, p10}, Lcom/zui/gallery/filtershow/crop/CropActivity;->access$202(Lcom/zui/gallery/filtershow/crop/CropActivity;I)I

    .line 405
    invoke-static {p1, p11}, Lcom/zui/gallery/filtershow/crop/CropActivity;->access$302(Lcom/zui/gallery/filtershow/crop/CropActivity;I)I

    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_2

    .line 408
    iget-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    const-string p3, "CropActivity"

    if-nez p2, :cond_1

    const-string p1, "cannot write file, no output URI given"

    .line 409
    invoke-static {p3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 414
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cannot write file: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    and-int/lit8 p1, p5, 0x5

    if-eqz p1, :cond_3

    .line 420
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->regenerateInputStream()V

    :cond_3
    return-void
.end method

.method private regenerateInputStream()V
    .locals 4

    .line 376
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    const-string v1, "CropActivity"

    if-nez v0, :cond_0

    const-string v0, "cannot read original file, no input URI given"

    .line 377
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 14

    const/4 v0, 0x0

    .line 473
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 427
    aget-object p1, p1, v0

    .line 430
    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    .line 431
    invoke-static {v2, v3, v4}, Lcom/zui/gallery/filtershow/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 432
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 433
    iget v4, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 434
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eqz v2, :cond_0

    .line 436
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 437
    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 438
    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    const-string v4, "cropped-rect"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 443
    :cond_0
    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    const-string v3, "CropActivity"

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 445
    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    invoke-static {p1, v2, v5}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getCroppedImage(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    const v2, 0xb71b0

    .line 447
    invoke-static {p1, v2}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getDownsampledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "could not downsample bitmap to return in data"

    .line 450
    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    .line 453
    :cond_2
    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez v2, :cond_3

    .line 454
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 455
    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v2, v2

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 456
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 457
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    move-object v5, p1

    .line 456
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object p1, v2

    .line 462
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    const-string v5, "data"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 467
    :cond_4
    :goto_0
    iget p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    if-eqz p1, :cond_16

    .line 469
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mCrop:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mPhoto:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOrig:Landroid/graphics/RectF;

    invoke-static {p1, v2, v5}, Lcom/zui/gallery/filtershow/crop/CropMath;->getScaledCropBounds(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "cannot find crop for full size image"

    .line 471
    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 475
    :cond_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 476
    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 478
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-lez p1, :cond_15

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-gtz p1, :cond_6

    goto/16 :goto_8

    :cond_6
    const/4 p1, 0x0

    .line 487
    :try_start_0
    iget-object v5, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v5, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 489
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot open region decoder for file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v5}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, p1

    :goto_1
    if-eqz v5, :cond_7

    .line 495
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 496
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 497
    invoke-virtual {v5, v2, v6}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 498
    invoke-virtual {v5}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_2

    :cond_7
    move-object v6, p1

    :goto_2
    if-nez v6, :cond_9

    .line 503
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->regenerateInputStream()V

    .line 505
    iget-object v5, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    if-eqz v5, :cond_8

    .line 506
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_8
    if-eqz p1, :cond_9

    .line 509
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 510
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 511
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 509
    invoke-static {p1, v5, v6, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_9
    if-nez v6, :cond_a

    .line 516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot decode file: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 520
    :cond_a
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->access$200(Lcom/zui/gallery/filtershow/crop/CropActivity;)I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;

    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->access$300(Lcom/zui/gallery/filtershow/crop/CropActivity;)I

    move-result p1

    if-lez p1, :cond_c

    .line 521
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 522
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 523
    iget v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez v2, :cond_b

    int-to-float v2, v2

    .line 524
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 525
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 527
    :cond_b
    new-instance v2, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;

    invoke-static {v5}, Lcom/zui/gallery/filtershow/crop/CropActivity;->access$200(Lcom/zui/gallery/filtershow/crop/CropActivity;)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;

    invoke-static {v8}, Lcom/zui/gallery/filtershow/crop/CropActivity;->access$300(Lcom/zui/gallery/filtershow/crop/CropActivity;)I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v2, v7, v7, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 528
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v1, v2, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 529
    iget v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 530
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    .line 531
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 530
    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 533
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 534
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v6, p1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object v6, v1

    goto :goto_3

    .line 537
    :cond_c
    iget p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    if-lez p1, :cond_d

    .line 538
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 539
    iget p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mRotation:I

    int-to-float p1, p1

    invoke-virtual {v12, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 540
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 541
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    move-object v7, v6

    .line 540
    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_d

    move-object v6, p1

    .line 547
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutputFormat:Ljava/lang/String;

    .line 548
    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p1

    .line 551
    iget v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    const/16 v2, 0x5a

    const/4 v5, 0x4

    const-string v7, "failed to compress bitmap to file: "

    if-ne v1, v5, :cond_10

    .line 552
    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_f

    .line 553
    invoke-virtual {v6, p1, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_4

    .line 557
    :cond_e
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 554
    :cond_f
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 561
    :cond_10
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x800

    invoke-direct {v1, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 562
    invoke-virtual {v6, p1, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 566
    iget p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/2addr p1, v5

    if-eqz p1, :cond_12

    .line 567
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    if-nez p1, :cond_11

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 569
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 568
    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move v0, v4

    goto :goto_6

    .line 573
    :cond_11
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 574
    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutUri:Landroid/net/Uri;

    .line 578
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 576
    invoke-static {v3, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 585
    :cond_12
    :goto_6
    iget p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mFlags:I

    and-int/2addr p1, v4

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mWPManager:Landroid/app/WallpaperManager;

    if-eqz p1, :cond_16

    if-nez p1, :cond_13

    const-string p1, "no wallpaper manager"

    .line 587
    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 591
    :cond_13
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 592
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 591
    invoke-virtual {p1, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception p1

    const-string v0, "cannot write stream to wallpaper"

    .line 594
    invoke-static {v3, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_14
    const-string p1, "cannot compress bitmap"

    .line 600
    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move v0, v4

    goto :goto_9

    :cond_15
    :goto_8
    const-string p1, "crop has bad values for full size image"

    .line 479
    invoke-static {v3, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_16
    :goto_9
    xor-int/lit8 p1, v0, 0x1

    .line 605
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 359
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mOutStream:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 611
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mInStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 612
    iget-object v0, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->this$0:Lcom/zui/gallery/filtershow/crop/CropActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->mResultIntent:Landroid/content/Intent;

    invoke-static {v0, p1, v1}, Lcom/zui/gallery/filtershow/crop/CropActivity;->access$400(Lcom/zui/gallery/filtershow/crop/CropActivity;ZLandroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 359
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/crop/CropActivity$BitmapIOTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
