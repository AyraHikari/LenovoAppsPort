.class Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;
.super Landroid/os/AsyncTask;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 5347
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/app/PhotoPage$1;)V
    .locals 0

    .line 5347
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5347
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12

    .line 5351
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 5354
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    .line 5355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground   path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "uri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v2}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KE"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v1, v1, [F

    if-eqz p1, :cond_1

    :try_start_0
    const-string v3, "mp4"

    .line 5361
    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5363
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/zui/gallery/util/GalleryUtils;->getLocationFromMp4(Landroid/net/Uri;[F)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 5367
    new-instance v3, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {v3}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    .line 5368
    invoke-virtual {v3, p1}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    .line 5369
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 5370
    invoke-virtual {v3, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    :goto_0
    const/4 p1, 0x0

    .line 5375
    aget v3, v1, p1

    float-to-double v3, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    float-to-double v6, v6

    invoke-static {v3, v4, v6, v7}, Lcom/zui/gallery/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5376
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v3}, Lcom/zui/gallery/app/PhotoPage;->access$6300(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/util/ReverseGeocoder;

    move-result-object v6

    aget p1, v1, p1

    float-to-double v7, p1

    aget p1, v1, v5

    float-to-double v9, p1

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/zui/gallery/util/ReverseGeocoder;->lookupAddress(DDZ)Landroid/location/Address;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5378
    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 5385
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "doInBackground   error"

    .line 5386
    invoke-static {v2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5383
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 5347
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const-string v3, " "

    const v4, 0x7f050138

    const-string v5, "\n"

    const-string v6, "dd/M/yyyy"

    const-wide/16 v7, 0x0

    const-string/jumbo v9, "ta"

    const/4 v10, 0x2

    const/16 v11, 0x21

    if-eqz v1, :cond_4

    .line 5393
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 5394
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "000portrait timeDayTextSizeOld:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v13}, Lcom/zui/gallery/app/PhotoPage;->access$6400(Lcom/zui/gallery/app/PhotoPage;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getTextSize()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "ttfansile"

    invoke-static {v13, v12}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5403
    iget-object v12, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v12}, Lcom/zui/gallery/app/PhotoPage;->access$6500(Lcom/zui/gallery/app/PhotoPage;)V

    .line 5405
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "11111portrait timeDayTextSizeOld:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v14}, Lcom/zui/gallery/app/PhotoPage;->access$6400(Lcom/zui/gallery/app/PhotoPage;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getTextSize()F

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5406
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 5407
    iget-object v14, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v14}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/zui/gallery/data/MediaItem;->getDateInMs()J

    move-result-wide v14

    .line 5410
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isSoftwareForHW()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 5411
    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-direct {v9, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 5413
    :cond_0
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v9

    :goto_0
    cmp-long v6, v14, v7

    if-lez v6, :cond_1

    .line 5418
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, ""

    .line 5421
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5423
    iget-object v7, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v7, v7, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 5424
    iget-object v7, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v7, v7, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v7

    iget-object v8, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v8, v8, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v7, v10, :cond_2

    .line 5425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5429
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 5430
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5431
    iget-object v7, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v7, v7, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v7

    iget-object v8, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v8, v8, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v7, v10, :cond_3

    .line 5432
    new-instance v2, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;

    iget-object v7, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v7, v7, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/high16 v8, 0x41800000    # 16.0f

    invoke-static {v7, v8}, Lcom/zui/gallery/ui/videoslow/DisplayUtil;->sp2px(Landroid/content/Context;F)F

    move-result v7

    invoke-direct {v2, v7}, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v2, v3, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 5434
    :cond_3
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v8, 0x10

    invoke-direct {v7, v8, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v7, v3, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5437
    :goto_2
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v6, v2, v3, v4, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "22222portrait timeDayTextSizeOld:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v3}, Lcom/zui/gallery/app/PhotoPage;->access$6400(Lcom/zui/gallery/app/PhotoPage;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5439
    iget-object v2, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v2}, Lcom/zui/gallery/app/PhotoPage;->access$6400(Lcom/zui/gallery/app/PhotoPage;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "333portrait timeDayTextSizeOld:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v3}, Lcom/zui/gallery/app/PhotoPage;->access$6400(Lcom/zui/gallery/app/PhotoPage;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 5443
    :cond_4
    iget-object v12, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v12}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v12

    if-eqz v12, :cond_c

    .line 5444
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const/4 v13, 0x0

    .line 5447
    iget-object v14, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v14}, Lcom/zui/gallery/app/PhotoPage;->access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;

    move-result-object v14

    invoke-virtual {v14}, Lcom/zui/gallery/data/MediaItem;->getDateInMs()J

    move-result-wide v14

    .line 5450
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isSoftwareForHW()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 5451
    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-direct {v9, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 5453
    :cond_5
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v9

    :goto_3
    cmp-long v6, v14, v7

    if-lez v6, :cond_6

    .line 5457
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 5459
    :cond_6
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5461
    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v8, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 5466
    :goto_4
    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "HH:mm"

    invoke-direct {v8, v12, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-lez v6, :cond_7

    .line 5468
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    .line 5471
    :cond_7
    iget-object v6, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v6}, Lcom/zui/gallery/app/PhotoPage;->access$6400(Lcom/zui/gallery/app/PhotoPage;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v8, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v8, v8, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v11, 0x7f05016a

    invoke-virtual {v8, v11}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    if-eqz v13, :cond_8

    .line 5477
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_8
    move-object v5, v7

    .line 5479
    :goto_6
    iget-object v6, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v6, v6, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 5480
    iget-object v6, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v6, v6, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v6

    iget-object v8, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v8, v8, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v6, v10, :cond_a

    if-eqz v13, :cond_9

    .line 5482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_7

    :cond_9
    move-object v5, v7

    .line 5485
    :cond_a
    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 5486
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5487
    iget-object v7, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v7, v7, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v7

    iget-object v8, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v8, v8, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    if-ne v7, v10, :cond_b

    .line 5488
    new-instance v2, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;

    iget-object v7, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    iget-object v7, v7, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/high16 v8, 0x41500000    # 13.0f

    invoke-static {v7, v8}, Lcom/zui/gallery/ui/videoslow/DisplayUtil;->sp2px(Landroid/content/Context;F)F

    move-result v7

    invoke-direct {v2, v7}, Lcom/zui/gallery/selfwidget/VerticalCenterSpan;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v6, v2, v3, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :cond_b
    const/16 v8, 0x21

    .line 5490
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v9, 0xd

    invoke-direct {v7, v9, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v7, v3, v2, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5492
    :goto_8
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v6, v2, v3, v4, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5495
    iget-object v2, v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->this$0:Lcom/zui/gallery/app/PhotoPage;

    invoke-static {v2}, Lcom/zui/gallery/app/PhotoPage;->access$6400(Lcom/zui/gallery/app/PhotoPage;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5499
    :cond_c
    :goto_9
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
