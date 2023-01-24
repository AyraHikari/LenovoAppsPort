.class public Lcom/zui/gallery/widget/WidgetManger4x2;
.super Ljava/lang/Object;
.source "WidgetManger4x2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/widget/WidgetManger4x2$Single;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private configurationChange:Z

.field private mCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

.field private orientationReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

.field private updateAll:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zlq4x2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->updateAll:Z

    .line 86
    iput-boolean v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->configurationChange:Z

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/widget/WidgetManger4x2;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->registerTimeTickReceiver()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/widget/WidgetManger4x2;)I
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/widget/WidgetManger4x2;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/widget/WidgetManger4x2;->putData(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->setLockStatus(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/zui/gallery/widget/WidgetManger4x2;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->clearPath()V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/widget/WidgetManger4x2;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->registerOrientationReceiver()V

    return-void
.end method

.method static synthetic access$300(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->loadDefaultIcon(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/widget/WidgetManger4x2;)Z
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isFileChanged()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/widget/WidgetManger4x2;)Landroid/content/Context;
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->refreshWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$700(Lcom/zui/gallery/widget/WidgetManger4x2;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->getProcessBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/widget/WidgetManger4x2;)I
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetWidth()I

    move-result p0

    return p0
.end method

.method private banner()V
    .locals 0

    .line 459
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->setPosition()V

    return-void
.end method

.method private clearMap()V
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1253
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 1254
    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private clearPath()V
    .locals 1

    const-string v0, "albumImageFile4x2"

    .line 1260
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "fileChangedNotification4x2"

    .line 1261
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "albumImageUri4x2"

    .line 1262
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "multiplePathList4x2"

    .line 1263
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "multipleUriList4x2"

    .line 1264
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "widgetLock4x2"

    .line 1265
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "nextTime4x2"

    .line 1266
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "oneDayDifference4x2"

    .line 1267
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    return-void
.end method

.method private getAppContext()Landroid/content/Context;
    .locals 1

    .line 1295
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getAppWidgetWH(I)V
    .locals 12

    .line 1050
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->reallyPad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1054
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1055
    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1056
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x140

    const/16 v3, 0x9f

    const/16 v4, 0x2a5

    const/16 v5, 0x161

    .line 1061
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const v7, 0x7f06038f

    .line 1062
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v1, v7

    .line 1063
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v7

    .line 1064
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v8

    .line 1066
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->reallyPad()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v7, 0x1

    :cond_1
    if-eqz v0, :cond_9

    const-string p1, "appWidgetMinWidth"

    .line 1070
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v9, "appWidgetMinHeight"

    .line 1071
    invoke-virtual {v0, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "appWidgetMaxWidth"

    .line 1072
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "appWidgetMaxHeight"

    .line 1073
    invoke-virtual {v0, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 1074
    instance-of v11, p1, Ljava/lang/Integer;

    if-eqz v11, :cond_2

    .line 1075
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    if-eqz v9, :cond_3

    .line 1077
    instance-of p1, v9, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 1078
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_3
    if-eqz v10, :cond_4

    .line 1080
    instance-of p1, v10, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 1081
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_4
    if-eqz v0, :cond_5

    .line 1083
    instance-of p1, v0, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    .line 1084
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_5
    int-to-float p1, v2

    sub-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v2, v4

    sub-float/2addr v2, v1

    float-to-int v2, v2

    int-to-float v3, v5

    sub-float/2addr v3, v1

    float-to-int v1, v3

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    add-int/lit8 v1, v1, -0x48

    :cond_6
    if-eqz v8, :cond_7

    int-to-float p1, p1

    goto :goto_0

    :cond_7
    int-to-float p1, v2

    :goto_0
    mul-float/2addr p1, v6

    float-to-int p1, p1

    .line 1098
    iput p1, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->bitmapWidth:I

    if-eqz v8, :cond_8

    int-to-float p1, v1

    goto :goto_1

    :cond_8
    int-to-float p1, v0

    :goto_1
    mul-float/2addr p1, v6

    float-to-int p1, p1

    .line 1099
    iput p1, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->bitmapHeight:I

    goto :goto_2

    .line 1112
    :cond_9
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppWidgetWH(I)V

    :goto_2
    return-void
.end method

.method private getCacheBitmap(Landroid/widget/RemoteViews;)V
    .locals 6

    .line 792
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 793
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 794
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 795
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "for  mCacheMap value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCacheBitmap  mCacheMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->refreshStartView(Landroid/widget/RemoteViews;)V

    .line 802
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isFileChanged()Z

    move-result v0

    .line 803
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isFileAutomaticChanged()Z

    move-result v1

    .line 804
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileChanged == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isFileAutomaticChanged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 806
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->loadDefaultIcon(Landroid/widget/RemoteViews;)V

    return-void

    .line 810
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->localFileExists()Z

    move-result v2

    .line 811
    iget-object v3, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "localFileExists == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-nez v2, :cond_3

    return-void

    .line 818
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    const-string v3, "albumImageBitmap4x2"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    const-string v3, "albumOriginalImage4x2"

    .line 819
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 820
    :cond_4
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getOriginalImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    const v3, 0x7f0801e6

    .line 822
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 824
    :cond_5
    iget-object v3, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALBUM_IMAGE_BITMAP bitmap == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v2, "albumImageFile4x2"

    const-string v3, ""

    .line 826
    invoke-static {v2, v3}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 827
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 828
    invoke-direct {p0, v2}, Lcom/zui/gallery/widget/WidgetManger4x2;->setContentUriThread(Ljava/lang/String;)V

    .line 830
    :cond_7
    iget-object v3, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALBUM_IMAGE_BITMAP == null;mCacheMap == null; ALBUM_IMAGE_FILE filePath == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    .line 834
    :cond_8
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->setLockStatus(Landroid/widget/RemoteViews;)V

    :cond_9
    return-void
.end method

.method private getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1245
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getDataPath()Ljava/lang/String;
    .locals 3

    const-string v0, "multiplePathList4x2"

    .line 1180
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1181
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1182
    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    const-string v1, ""

    .line 1185
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private getDataUri()Ljava/lang/String;
    .locals 3

    const-string v0, "multipleUriList4x2"

    .line 1198
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1199
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1200
    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    const-string v1, ""

    .line 1203
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private getOriginalImage()Landroid/graphics/Bitmap;
    .locals 4

    .line 843
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->reallyPad()Z

    move-result v0

    const-string v1, "albumImageBitmap4x2"

    .line 844
    invoke-direct {p0, v1}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const-string v3, "albumOriginalImage4x2"

    if-eqz v0, :cond_0

    .line 846
    invoke-direct {p0, v3}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 847
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->orientationBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 849
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->updateAll:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 850
    iput-boolean v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->updateAll:Z

    .line 851
    invoke-direct {p0, v3}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 852
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getProcessBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 853
    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    return-object v2
.end method

.method private getPosition()I
    .locals 7

    const-string v0, "albumImageFile4x2"

    const-string v1, ""

    .line 502
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getDataPath()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 505
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/zui/gallery/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ","

    .line 508
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 509
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    .line 511
    aget-object v5, v1, v3

    .line 512
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 514
    iget-object v4, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPosition path.equals(currentPath) == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_1
    return v3
.end method

.method private getProcessBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1010
    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->imageCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1012
    sget v0, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->RADIUS_OF_FILLET4x2:I

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->fillet(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getWidgetHeight()I
    .locals 1

    .line 1117
    iget v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->bitmapHeight:I

    return v0
.end method

.method public static getWidgetInstance()Lcom/zui/gallery/widget/WidgetManger4x2;
    .locals 1

    .line 95
    invoke-static {}, Lcom/zui/gallery/widget/WidgetManger4x2$Single;->access$000()Lcom/zui/gallery/widget/WidgetManger4x2;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetWidth()I
    .locals 1

    .line 1120
    iget v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->bitmapWidth:I

    return v0
.end method

.method private isFileChanged()Z
    .locals 7

    const-string v0, "fileChangedNotification4x2"

    .line 286
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileChanged file_changed == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "fileChanged4x2"

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    const-string v1, ""

    .line 295
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFileChanged isExit == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private isLoadBanner()V
    .locals 2

    .line 863
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isFileChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 868
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isFileAutomaticChanged()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oneDayDifference4x2"

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->isDayOrMin15(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetManger4x2$6;

    invoke-direct {v1, p0}, Lcom/zui/gallery/widget/WidgetManger4x2$6;-><init>(Lcom/zui/gallery/widget/WidgetManger4x2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 874
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$bannerDataExists$0(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 425
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 427
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-static {p2}, Lcom/zui/gallery/widget/WidgetUtils;->getMediaUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 430
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private loadDefaultIcon(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 219
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_0

    .line 222
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b002d

    invoke-direct {p1, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 227
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zui/gallery/widget/WidgetManger4x2$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/zui/gallery/widget/WidgetManger4x2$3;-><init>(Lcom/zui/gallery/widget/WidgetManger4x2;Landroid/widget/RemoteViews;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 249
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private localFileExists()Z
    .locals 2

    const-string v0, "albumImageFile4x2"

    const-string v1, ""

    .line 392
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/zui/gallery/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->bannerDataExists()V

    :cond_0
    return v0
.end method

.method private newCacheMap()V
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 693
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private openCurrentPhoto()V
    .locals 4

    const-string v0, "albumImageUri4x2"

    const-string v1, ""

    .line 205
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x10080000

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "image/*"

    .line 210
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isWidget"

    const/4 v2, 0x1

    .line 211
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 212
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openSettingsBroadcast(Landroid/widget/RemoteViews;)V
    .locals 5

    .line 896
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zui.action.click.lock4x2"

    .line 897
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/widget/AppWidget4x2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 899
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0803c6

    .line 900
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 901
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isFileChanged()Z

    move-result v0

    .line 902
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isFileAutomaticChanged()Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    .line 909
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zui.action.click4x2"

    .line 910
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/zui/gallery/widget/AppWidget4x2;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 912
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0801e6

    .line 913
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private orientationBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    .line 615
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->reallyPad()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "screenLand4x2"

    .line 618
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    const-string v3, "screenPort4x2"

    .line 619
    invoke-direct {p0, v3}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 621
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v5

    .line 622
    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAll == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->updateAll:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "  isPort -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "  landB = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "  portB = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-boolean v6, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->updateAll:Z

    if-eqz v6, :cond_1

    .line 626
    invoke-direct {p0, v3}, Lcom/zui/gallery/widget/WidgetManger4x2;->removeCacheMapKey(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->removeCacheMapKey(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 628
    iput-boolean v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->updateAll:Z

    move-object v2, v1

    move-object v4, v2

    :cond_1
    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    .line 632
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->getProcessBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    :cond_2
    invoke-direct {p0, v3}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    .line 637
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->getProcessBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 639
    :cond_4
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/graphics/Bitmap;

    .line 641
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientationBmp: portBmp = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " landBmp = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  isPort =  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_5

    if-eqz v2, :cond_5

    return-object v2

    :cond_5
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    return-object v4

    :cond_6
    return-object v1
.end method

.method private putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1229
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1232
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private putData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 702
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->newCacheMap()V

    const-string v0, "screenLand4x2"

    .line 703
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->removeCacheMapKey(Ljava/lang/String;)V

    const-string v0, "screenPort4x2"

    .line 704
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->removeCacheMapKey(Ljava/lang/String;)V

    const-string v0, "albumImageBitmap4x2"

    .line 705
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "albumOriginalImage4x2"

    .line 706
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 707
    invoke-direct {p0, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->orientationBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method private putData(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 660
    invoke-direct {p0, p2, p3}, Lcom/zui/gallery/widget/WidgetManger4x2;->putData(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 661
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->putFilePath(Ljava/lang/String;)V

    return-void
.end method

.method private putFilePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "albumImageFile4x2"

    .line 669
    invoke-static {v0, p1}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private refreshStartView(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 884
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->registerTimeTickReceiver()V

    .line 885
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->registerOrientationReceiver()V

    .line 887
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->openSettingsBroadcast(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private refreshWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1305
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1306
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/zui/gallery/widget/AppWidget4x2;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1307
    invoke-virtual {v0, v1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private registerOrientationReceiver()V
    .locals 3

    .line 956
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->orientationReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

    if-eqz v0, :cond_0

    return-void

    .line 960
    :cond_0
    new-instance v0, Lcom/zui/gallery/widget/AppWidget4x2;

    invoke-direct {v0}, Lcom/zui/gallery/widget/AppWidget4x2;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->orientationReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

    .line 962
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 964
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 966
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->orientationReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerTimeTickReceiver()V
    .locals 3

    .line 939
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

    if-eqz v0, :cond_0

    return-void

    .line 942
    :cond_0
    new-instance v0, Lcom/zui/gallery/widget/AppWidget4x2;

    invoke-direct {v0}, Lcom/zui/gallery/widget/AppWidget4x2;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

    .line 943
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 945
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 947
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 948
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeCacheMapKey(Ljava/lang/String;)V
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private resetLoadDefault(II)V
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetManger4x2$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/gallery/widget/WidgetManger4x2$5;-><init>(Lcom/zui/gallery/widget/WidgetManger4x2;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 593
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setContentUriThread(Ljava/lang/String;)V
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetManger4x2$4;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2$4;-><init>(Lcom/zui/gallery/widget/WidgetManger4x2;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 572
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "multipleUriList4x2"

    .line 366
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/widget/WidgetManger4x2;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "multiplePathList4x2"

    .line 367
    invoke-direct {p0, v2, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    invoke-static {v0, p1}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {v2, p2}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 374
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_1

    return-void

    .line 377
    :cond_1
    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    array-length v0, p2

    if-ge v0, v2, :cond_2

    goto :goto_0

    .line 381
    :cond_2
    aget-object p1, p1, v1

    aget-object p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->setContentUri(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 363
    :cond_4
    :goto_1
    invoke-direct {p0, v1, v1}, Lcom/zui/gallery/widget/WidgetManger4x2;->resetLoadDefault(II)V

    return-void
.end method

.method private setLockStatus(Landroid/widget/RemoteViews;)V
    .locals 3

    const-string v0, "widgetLock4x2"

    const-string v1, ""

    .line 600
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unLock4x2"

    .line 601
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0803c6

    if-eqz v1, :cond_0

    const v0, 0x7f0703bd

    .line 602
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    :cond_0
    const-string v1, "isLock4x2"

    .line 603
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0703b8

    .line 604
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 606
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method private setPosition()V
    .locals 9

    .line 466
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->bannerDataExists()V

    .line 467
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getPosition()I

    move-result v0

    .line 468
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getDataUri()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 470
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 471
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, ","

    .line 475
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 478
    array-length v6, v5

    array-length v7, v3

    if-eq v6, v7, :cond_1

    return-void

    .line 482
    :cond_1
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    array-length v6, v3

    if-ne v6, v7, :cond_2

    return-void

    :cond_2
    add-int/2addr v0, v7

    .line 486
    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPosition index == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " uriList.length == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPosition dataUri == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  \n dataPath = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    array-length v1, v5

    if-ge v0, v1, :cond_4

    array-length v1, v3

    if-lt v0, v1, :cond_3

    goto :goto_0

    .line 492
    :cond_3
    aget-object v1, v5, v0

    aget-object v0, v3, v0

    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->setContentUri(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 489
    :cond_4
    :goto_0
    aget-object v0, v5, v4

    aget-object v1, v3, v4

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/widget/WidgetManger4x2;->setContentUri(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 472
    :cond_5
    :goto_2
    invoke-direct {p0, v4, v4}, Lcom/zui/gallery/widget/WidgetManger4x2;->resetLoadDefault(II)V

    return-void
.end method

.method private updateAll()V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetManger4x2$2;

    invoke-direct {v1, p0}, Lcom/zui/gallery/widget/WidgetManger4x2$2;-><init>(Lcom/zui/gallery/widget/WidgetManger4x2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private writePathUriValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public automaticSetData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "automaticSetData uriBuild == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n pathBuild = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->newCacheMap()V

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->setData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fileChangedNotification4x2"

    const-string p2, "fileAutomaticChanged4x2"

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    invoke-static {p1, p2}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bannerDataExists()V
    .locals 10

    const-string v0, "albumImageFile4x2"

    const-string v1, ""

    .line 404
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getDataPath()Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getDataUri()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 408
    invoke-direct {p0, v4, v4}, Lcom/zui/gallery/widget/WidgetManger4x2;->resetLoadDefault(II)V

    return-void

    :cond_0
    const-string v3, ","

    .line 411
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 414
    array-length v5, v3

    if-lez v5, :cond_5

    .line 416
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 417
    array-length v6, v3

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    .line 419
    invoke-static {v8}, Lcom/zui/gallery/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 422
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    new-instance v7, Lcom/zui/gallery/widget/-$$Lambda$WidgetManger4x2$ThZWlhv7DMQZfdb8QGUzDfOdobo;

    invoke-direct {v7, v3, v6}, Lcom/zui/gallery/widget/-$$Lambda$WidgetManger4x2$ThZWlhv7DMQZfdb8QGUzDfOdobo;-><init>(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 437
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0}, Lcom/zui/gallery/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 438
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/widget/WidgetManger4x2;->setData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 439
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    invoke-direct {p0, v4, v4}, Lcom/zui/gallery/widget/WidgetManger4x2;->resetLoadDefault(II)V

    goto :goto_1

    .line 443
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 447
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipleUriList4x2"

    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "multiplePathList4x2"

    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public configurationChanges()V
    .locals 1

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->configurationChange:Z

    .line 135
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->updateAll()V

    return-void
.end method

.method public configurationSizeChange()V
    .locals 1

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->updateAll:Z

    .line 143
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->updateAll()V

    return-void
.end method

.method public deleted()V
    .locals 1

    .line 1271
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->clearMap()V

    .line 1272
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->clearMap()V

    .line 1273
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->clearPath()V

    const-string v0, "widget4x2Create"

    .line 1275
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->unRegisterTimeTickReceiver()V

    .line 1277
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->unRegisterOrientationReceiver()V

    return-void
.end method

.method public getNextTime(Ljava/lang/String;)V
    .locals 4

    const-string v0, "min154x2"

    .line 677
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "oneDayDifference4x2"

    .line 678
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_0

    .line 680
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextTime4x2"

    invoke-static {v1, v0}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 682
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNextTime oneDayDifference4x2 == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextTime == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public imageCrop(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1023
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1024
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1025
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetWidth()I

    move-result v8

    .line 1026
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getWidgetHeight()I

    move-result v9

    .line 1028
    invoke-static {v8, v9}, Lcom/zui/gallery/widget/WidgetUtils;->detectWH(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1029
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->updateAll()V

    return-object v0

    :cond_1
    int-to-float v0, v1

    int-to-float v3, v8

    div-float/2addr v0, v3

    int-to-float v4, v2

    int-to-float v5, v9

    div-float/2addr v4, v5

    .line 1035
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v3, v0

    float-to-int v4, v3

    mul-float/2addr v0, v5

    float-to-int v5, v0

    sub-int/2addr v1, v4

    .line 1038
    div-int/lit8 v0, v1, 0x2

    sub-int/2addr v2, v5

    .line 1039
    div-int/lit8 v3, v2, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v2, v0

    .line 1040
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    .line 1041
    invoke-static {v0, v8, v9, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isFileAutomaticChanged()Z
    .locals 7

    const-string v0, "fileChangedNotification4x2"

    .line 308
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 309
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFileAutomaticChanged file_changed == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "fileAutomaticChanged4x2"

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    const-string v1, ""

    .line 317
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFileAutomaticChanged isExit == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method protected isPart(I)Z
    .locals 6

    .line 270
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isFileChanged()Z

    move-result v0

    .line 271
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isFileAutomaticChanged()Z

    move-result v1

    const-string v2, "widgetLock4x2"

    const-string v3, ""

    .line 273
    invoke-static {v2, v3}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unLock4x2"

    .line 274
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "min154x2"

    .line 276
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->isDayOrMin15(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    if-lt p1, v0, :cond_3

    const/16 v0, 0x18

    if-gt p1, v0, :cond_3

    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    return v4
.end method

.method public launcherReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "com.zui.gallery.widget.AppWidget"

    .line 716
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 717
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget_move_value == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "id="

    .line 721
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "x="

    .line 722
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "y="

    .line 723
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "isInScreen="

    .line 724
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "className="

    .line 725
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 726
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    .line 727
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 729
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xa

    .line 730
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 731
    iget-object v7, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "selfChangeBroadcast: widget_move_value == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  sub5 == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  s4 == "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-class v4, Lcom/zui/gallery/widget/AppWidget4x2;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 737
    :cond_1
    invoke-static {v5}, Lcom/zui/gallery/widget/WidgetUtils;->isCurrentScreen(Ljava/lang/String;)Z

    move-result v4

    .line 738
    invoke-static {p1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_2

    goto/16 :goto_0

    .line 743
    :cond_2
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 746
    :cond_3
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    .line 747
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 751
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 752
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 753
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 755
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 756
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 757
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 759
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ltz v1, :cond_5

    if-lt v1, p2, :cond_4

    goto :goto_0

    .line 765
    :cond_4
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isLoadBanner()V

    .line 766
    new-instance p2, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b002d

    invoke-direct {p2, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 767
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppWidgetWH(I)V

    .line 768
    invoke-direct {p0, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheBitmap(Landroid/widget/RemoteViews;)V

    .line 769
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->refreshWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public manualSetData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "manualSetData uriBuild == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \n pathBuild = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->newCacheMap()V

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->setData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fileChangedNotification4x2"

    const-string p2, "fileChanged4x2"

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    invoke-static {p1, p2}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAppWidgetUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 2

    .line 780
    invoke-direct {p0, p3}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppWidgetWH(I)V

    .line 782
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0b002d

    invoke-direct {v0, p1, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 783
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getCacheBitmap(Landroid/widget/RemoteViews;)V

    .line 784
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public onCreateWidget()V
    .locals 2

    const-string v0, "widget4x2Create"

    const/4 v1, 0x1

    .line 103
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->putSpBoolean(Ljava/lang/String;Z)V

    .line 104
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    const-string v1, "onCreateWidget"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetManger4x2$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/widget/WidgetManger4x2$1;-><init>(Lcom/zui/gallery/widget/WidgetManger4x2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public openGalleryPhoto()V
    .locals 2

    .line 193
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isFileChanged()Z

    move-result v0

    .line 194
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->isFileAutomaticChanged()Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->openCurrentPhoto()V

    :cond_1
    return-void
.end method

.method public setBanner()V
    .locals 3

    .line 256
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 257
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 258
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 260
    invoke-virtual {p0, v1}, Lcom/zui/gallery/widget/WidgetManger4x2;->isPart(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->banner()V

    :cond_0
    return-void
.end method

.method public setContentUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "albumImageUri4x2"

    .line 527
    invoke-static {v0, p1}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 530
    invoke-direct {p0, p2}, Lcom/zui/gallery/widget/WidgetManger4x2;->setContentUriThread(Ljava/lang/String;)V

    const-string v0, "min154x2"

    .line 531
    invoke-virtual {p0, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getNextTime(Ljava/lang/String;)V

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContentUri == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \n  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startGallery(Landroid/widget/RemoteViews;)V
    .locals 4

    .line 921
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    .line 922
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 924
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 925
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "isWidget"

    const/4 v2, 0x1

    .line 926
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "get-content-mulit"

    .line 927
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "get-content-max"

    const/16 v2, 0x14

    .line 928
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 930
    const-class v1, Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "className"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0801e6

    .line 932
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public timeStamp2Date(J)Ljava/lang/String;
    .locals 2

    .line 1290
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1291
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unRegisterOrientationReceiver()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->orientationReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

    if-nez v0, :cond_0

    return-void

    .line 977
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->orientationReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 979
    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->orientationReceiver:Lcom/zui/gallery/widget/AppWidget4x2;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unRegisterTimeTickReceiver()V
    .locals 2

    .line 988
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

    if-nez v0, :cond_0

    return-void

    .line 993
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/AppWidget4x2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 995
    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/AppWidget4x2;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public widgetLock()V
    .locals 8

    .line 169
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b002d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "widgetLock4x2"

    const-string v2, ""

    .line 170
    invoke-static {v1, v2}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    iget-object v3, p0, Lcom/zui/gallery/widget/WidgetManger4x2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCK == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "unLock4x2"

    .line 172
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f0703b8

    const v6, 0x7f0803c6

    const-string v7, "isLock4x2"

    if-eqz v4, :cond_0

    .line 173
    invoke-static {v1, v7}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, v6, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    invoke-static {v1, v3}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0703bd

    .line 178
    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 182
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-static {v1, v7}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v6, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetManger4x2;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/widget/WidgetManger4x2;->refreshWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-void
.end method
