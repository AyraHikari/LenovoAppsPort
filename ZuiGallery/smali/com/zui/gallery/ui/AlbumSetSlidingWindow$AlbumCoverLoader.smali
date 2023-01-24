.class Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;
.super Lcom/zui/gallery/ui/BitmapLoader;
.source "AlbumSetSlidingWindow.java"

# interfaces
.implements Lcom/zui/gallery/ui/AlbumSetSlidingWindow$EntryUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumCoverLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;
    }
.end annotation


# instance fields
.field private count:Ljava/lang/String;

.field private mMediaItems:[Lcom/zui/gallery/data/MediaItem;

.field private mSlotIndex:I

.field private mSystemId:I

.field mTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;I[Lcom/zui/gallery/data/MediaItem;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-direct {p0}, Lcom/zui/gallery/ui/BitmapLoader;-><init>()V

    .line 885
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    .line 886
    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItems:[Lcom/zui/gallery/data/MediaItem;

    .line 887
    iput-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->name:Ljava/lang/String;

    .line 888
    iput p6, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSystemId:I

    .line 889
    iput-object p5, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->count:Ljava/lang/String;

    if-nez p3, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic access$1200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;Landroid/graphics/Canvas;)V
    .locals 0

    .line 876
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->drawAlbumLable(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I
    .locals 0

    .line 876
    invoke-direct {p0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->getTrashFileCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;Ljava/util/List;Landroid/database/Cursor;)V
    .locals 0

    .line 876
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->addTrashCloudItem(Ljava/util/List;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I
    .locals 0

    .line 876
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSystemId:I

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)Ljava/lang/String;
    .locals 0

    .line 876
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)I
    .locals 0

    .line 876
    iget p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    return p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)[Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 876
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mMediaItems:[Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)Ljava/lang/String;
    .locals 0

    .line 876
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->count:Ljava/lang/String;

    return-object p0
.end method

.method private addTrashCloudItem(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/CloudTrashItem;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 1423
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "deleted"

    .line 1424
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1426
    new-instance v0, Lcom/zui/gallery/trash/CloudTrashItem;

    invoke-direct {v0}, Lcom/zui/gallery/trash/CloudTrashItem;-><init>()V

    const-string v1, "name"

    .line 1427
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/trash/CloudTrashItem;->setName(Ljava/lang/String;)V

    .line 1428
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addTrashLocalItem(Ljava/util/List;Landroid/database/Cursor;[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;",
            "Landroid/database/Cursor;",
            "[I)V"
        }
    .end annotation

    .line 1405
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1406
    new-instance v0, Lcom/zui/gallery/trash/TrashItem;

    invoke-direct {v0}, Lcom/zui/gallery/trash/TrashItem;-><init>()V

    const-string v1, "_display_name"

    .line 1407
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1408
    invoke-virtual {v0, v1}, Lcom/zui/gallery/trash/TrashItem;->setName(Ljava/lang/String;)V

    .line 1409
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "date_expires"

    .line 1411
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1412
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getInstance(Landroid/content/Context;)Lcom/zui/gallery/data/LocalTimeDateUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/LocalTimeDateUtil;->getLeftDay(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 1414
    aget v1, p3, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawAlbumLable(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1434
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    iget v1, v1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->bottom_left_for_title_height:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    iget v1, v1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->albumNameTextOffsetY:I

    add-int/2addr v0, v1

    .line 1435
    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSystemId:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->count:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1437
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/data/DataManager;->from(Landroid/content/Context;)Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    const-string v2, "/local/all/moredirs"

    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v1

    .line 1438
    instance-of v2, v1, Lcom/zui/gallery/data/LocalAlbumSetMore;

    if-eqz v2, :cond_0

    .line 1440
    check-cast v1, Lcom/zui/gallery/data/LocalAlbumSetMore;

    sget v1, Lcom/zui/gallery/data/LocalAlbumSetMore;->maxOtherAlbumCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->count:Ljava/lang/String;

    .line 1447
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    .line 1448
    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1900(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v3

    add-int/lit8 v3, v3, -0x78

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 1447
    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1448
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1449
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1900(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1900(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1452
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1900(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 1453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->count:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/zui/gallery/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v3}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2000(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getTrashFileCount()I
    .locals 18

    move-object/from16 v7, p0

    const-string v0, "android:query-arg-match-trashed"

    .line 1274
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1275
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 1276
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1277
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 1281
    sget-object v3, Lcom/zui/gallery/cloud/CloudManager;->CLOUD_TRASH_URI:Landroid/net/Uri;

    const/4 v10, 0x1

    new-array v11, v10, [I

    const/4 v12, 0x0

    aput v12, v11, v12

    const/4 v13, 0x0

    .line 1294
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1295
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x3

    .line 1296
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1298
    iget-object v5, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v5}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v5

    invoke-interface {v5}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/zui/gallery/trash/TrashBackGroundTask;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v5, v1, v6, v2, v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1301
    :try_start_1
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1302
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1303
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1305
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/zui/gallery/trash/TrashBackGroundTask;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2, v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1308
    :try_start_2
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getIsFirstToTrash(Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v1, "  \u591a\u4e2a\u5f00\u5173 ==  "

    const-string v2, "  --\u81ea\u52a8\u5f00\u5173 == "

    const-string/jumbo v6, "zlq"

    if-eqz v0, :cond_1

    .line 1309
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIsFirstToTrash ... 1 == "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/gallery/util/GalleryUtils;->getIsFirstToTrash(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v2, v3

    move-object v3, v0

    move-object v13, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1313
    :try_start_4
    invoke-direct {v7, v9, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->addTrashCloudItem(Ljava/util/List;Landroid/database/Cursor;)V

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not first load cloud count ... "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v17, v1

    const/4 v0, 0x0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object/from16 v17, v1

    goto/16 :goto_3

    :catch_0
    move-object/from16 v17, v1

    goto/16 :goto_4

    :cond_0
    move-object v13, v6

    goto/16 :goto_0

    :cond_1
    move-object v13, v6

    .line 1317
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIsFirstToTrash ... 2 == "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/gallery/util/GalleryUtils;->getIsFirstToTrash(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  --- \u662f\u5426\u767b\u9646  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncOn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isAutoSyncAllowed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1319
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1321
    iget-object v1, v7, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$1100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/cloud/CloudManager;->getiBinder()Lcom/zui/cloudservice/lpcs/ILPCSManager;

    move-result-object v6

    new-instance v5, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v4, v11

    move-object v10, v5

    move-object v5, v9

    move-object v12, v6

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$1;-><init>(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;Landroid/net/Uri;[ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v12, v10}, Lcom/zui/cloudservice/lpcs/ILPCSManager;->fetchTrashBin(Lcom/zui/cloudservice/lpcs/ILPCSResultCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/16 v17, 0x0

    :goto_2
    if-eqz v14, :cond_3

    const/4 v1, 0x0

    .line 1355
    :try_start_6
    aget v2, v11, v1

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v11, v1

    .line 1356
    invoke-direct {v7, v8, v14, v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->addTrashLocalItem(Ljava/util/List;Landroid/database/Cursor;[I)V

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_3
    move-object v13, v14

    goto/16 :goto_b

    :catch_1
    :goto_4
    move-object v13, v14

    goto/16 :goto_e

    :cond_3
    :goto_5
    if-eqz v15, :cond_4

    const/4 v1, 0x0

    .line 1360
    aget v2, v11, v1

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v11, v1

    .line 1361
    invoke-direct {v7, v8, v15, v11}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->addTrashLocalItem(Ljava/util/List;Landroid/database/Cursor;[I)V

    .line 1362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v17, :cond_5

    const/4 v1, 0x0

    .line 1365
    aget v2, v11, v1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v11, v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    if-eqz v14, :cond_6

    .line 1371
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v15, :cond_7

    .line 1374
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v17, :cond_8

    .line 1377
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v0, :cond_9

    .line 1382
    :try_start_7
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1384
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_6
    const-string v0, "await... "

    .line 1386
    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 1390
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/trash/CloudTrashItem;

    .line 1391
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/trash/TrashItem;

    .line 1392
    invoke-virtual {v3}, Lcom/zui/gallery/trash/TrashItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zui/gallery/trash/CloudTrashItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    .line 1393
    aget v4, v11, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aput v4, v11, v3

    .line 1394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u53bb\u91cd name  as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/zui/gallery/trash/CloudTrashItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    const/4 v5, 0x1

    goto :goto_7

    .line 1400
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCount  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, v11, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    aget v0, v11, v1

    if-gez v0, :cond_d

    move v12, v1

    goto :goto_8

    :cond_d
    aget v12, v11, v1

    :goto_8
    return v12

    :catchall_2
    move-exception v0

    move-object v13, v14

    goto :goto_a

    :catch_3
    move-object v13, v14

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v13, v14

    goto :goto_9

    :catch_4
    move-object v13, v14

    goto :goto_c

    :catchall_4
    move-exception v0

    const/4 v13, 0x0

    :goto_9
    const/4 v15, 0x0

    :goto_a
    const/16 v17, 0x0

    :goto_b
    if-eqz v13, :cond_e

    .line 1371
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v15, :cond_f

    .line 1374
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v17, :cond_10

    .line 1377
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1379
    :cond_10
    throw v0

    :catch_5
    const/4 v13, 0x0

    :goto_c
    const/4 v15, 0x0

    :goto_d
    const/16 v17, 0x0

    :goto_e
    if-eqz v13, :cond_11

    .line 1371
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v15, :cond_12

    .line 1374
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz v17, :cond_13

    .line 1377
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method private newTexture(Landroid/graphics/Bitmap;)Z
    .locals 3

    .line 1494
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 1499
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1504
    :cond_1
    new-instance v0, Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcom/zui/gallery/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 1505
    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/BitmapTexture;->setOpaque(Z)V

    const/4 p1, 0x1

    return p1

    .line 1500
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "- ERROR mSlotIndex:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": bitmap is null!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlbumSetSlidingWindow"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method protected onLoadComplete(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "AlbumSetSlidingWindow"

    if-eqz p1, :cond_2

    .line 1479
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1483
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->newTexture(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1484
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2300(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/ui/SynchronizedHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/zui/gallery/ui/SynchronizedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    const-string p1, "create texture failed"

    .line 1486
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 1480
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- ERROR mSlotIndex:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": bitmap is null!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected submitBitmapTask(Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/gallery/util/FutureListener<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/zui/gallery/util/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1468
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1472
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2200(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;

    invoke-direct {v1, p0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader$AlbumSetCoverJob;-><init>(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;)V

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/util/ThreadPool;->submit(Lcom/zui/gallery/util/ThreadPool$Job;Lcom/zui/gallery/util/FutureListener;)Lcom/zui/gallery/util/Future;

    move-result-object p1

    return-object p1
.end method

.method public updateEntry()V
    .locals 3

    .line 1512
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2100(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)[Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 1517
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    iput-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    .line 1518
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    iput-object v1, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    .line 1520
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mSlotIndex:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1521
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addFgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    .line 1522
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2506(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    .line 1523
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2500(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1524
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2600(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)V

    .line 1525
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2700(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1526
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2700(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;->onContentChanged()V

    goto :goto_0

    .line 1528
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->this$0:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->access$2400(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)Lcom/zui/gallery/glrenderer/TextureUploader;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumCoverLoader;->mTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/glrenderer/TextureUploader;->addBgTexture(Lcom/zui/gallery/glrenderer/UploadedTexture;)V

    :cond_3
    :goto_0
    return-void
.end method
