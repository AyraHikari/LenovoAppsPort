.class public Lcom/zui/gallery/widget/WidgetMangerSingle;
.super Ljava/lang/Object;
.source "WidgetMangerSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/widget/WidgetMangerSingle$SingleThread;
    }
.end annotation


# static fields
.field private static final LONG_PRESS_MODE_X_SCOPE:I = 0x96

.field private static final LONG_PRESS_MODE_Y_SCOPE:I = 0x64


# instance fields
.field private TAG:Ljava/lang/String;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private errorRetX:I

.field private errorRetY:I

.field private fuzzyHeight:I

.field private fuzzyWidth:I

.field private isUpdateOptions:Z

.field private mBmpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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

.field private mCalender:Lcom/zui/gallery/widget/LunarCalender;

.field private mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/WidgetTimeTickReceiver;

.field private mWidgetWallPaperReceiver:Lcom/zui/gallery/widget/WidgetWallPaperReceiver;

.field private orientationReceiver:Lcom/zui/gallery/widget/WidgetOrientationReceive;

.field private widgetHeight:I

.field private widgetId:I

.field private widgetWidth:I

.field private widgetX:I

.field private widgetY:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zlq == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->isUpdateOptions:Z

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCacheMap:Ljava/util/Map;

    .line 149
    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mBmpMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/widget/WidgetMangerSingle$1;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/widget/WidgetMangerSingle;)I
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/widget/WidgetMangerSingle;)I
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/widget/WidgetMangerSingle;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putData(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setLockStatus(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/widget/WidgetMangerSingle;)Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/widget/WidgetMangerSingle;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putKey(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->loadDefaultIcon(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$500(Lcom/zui/gallery/widget/WidgetMangerSingle;)Z
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileChanged()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/widget/WidgetMangerSingle;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->clearCacheMap()V

    return-void
.end method

.method static synthetic access$700(Lcom/zui/gallery/widget/WidgetMangerSingle;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->clearPath()V

    return-void
.end method

.method static synthetic access$800(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getProcessBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->refreshWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private avatarAddWidget(I)V
    .locals 7

    const-string v0, "widgetIdList"

    const-string v1, ""

    .line 717
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "addedWidget"

    .line 718
    invoke-static {v3, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 720
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, ","

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {v3, v3}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 727
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 731
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object p1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    const-string v0, "\u4e0a\u4f20\u6570\u636e "

    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->WIDGET:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->ADD_WIDGET:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private avatarReplace(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1900
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->WIDGET:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->PICTURE_REPLACE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {p1, v0, v2, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private changedContingent(Landroid/widget/RemoteViews;[I)Z
    .locals 3

    .line 216
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileChanged()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileAutomaticChanged()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 217
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 218
    aget v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheBitmap(Landroid/widget/RemoteViews;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private clearCacheMap()V
    .locals 1

    .line 2143
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCacheMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2147
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 2148
    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCacheMap:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method private clearPath()V
    .locals 1

    const-string v0, "albumImage_file"

    .line 2114
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "file_changed_notification"

    .line 2115
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "albumImage_uri"

    .line 2116
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "widgetIdList"

    .line 2117
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "multiple_path_list"

    .line 2118
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "multiple_uri_list"

    .line 2119
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "widgetLock"

    .line 2120
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "nextTime"

    .line 2121
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "oneDayDifference4x3"

    .line 2122
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    const-string v0, "isNavigationShowing4x3"

    .line 2123
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    return-void
.end method

.method private createReverseColor(Landroid/widget/RemoteViews;)V
    .locals 5

    .line 178
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "launcher_wallpaper_color"

    const-string v2, "0"

    .line 179
    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getLauncherSettingValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createReverseColor: 0\u662f\u9ed1\u8272 1\u662f\u767d\u8272  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setTextColor(Landroid/widget/RemoteViews;Z)V

    return-void
.end method

.method private getAppWidgetWH(I)V
    .locals 22

    move-object/from16 v0, p0

    .line 740
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isPhoneLand()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 743
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    move/from16 v2, p1

    .line 744
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v5, 0x9f

    const/16 v6, 0x2a5

    const/16 v7, 0x161

    .line 750
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 753
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v8

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v9

    .line 756
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->reallyPad()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v8, 0x1

    :cond_1
    if-eqz v8, :cond_3

    if-eqz v9, :cond_2

    const v10, 0x3e8a3d71    # 0.27f

    goto :goto_0

    :cond_2
    const v10, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_3
    const v10, 0x3e99999a    # 0.3f

    :goto_0
    const v11, 0x3f0f5c29    # 0.56f

    const v12, 0x3f5c28f6    # 0.86f

    const v13, 0x3f07ae14    # 0.53f

    if-eqz v8, :cond_5

    if-eqz v9, :cond_4

    move v14, v11

    goto :goto_1

    :cond_4
    move v14, v12

    goto :goto_1

    :cond_5
    move v14, v13

    :goto_1
    if-eqz v8, :cond_7

    if-eqz v9, :cond_6

    const v15, 0x3f2b851f    # 0.67f

    goto :goto_2

    :cond_6
    const v15, 0x3eeb851f    # 0.46f

    goto :goto_2

    :cond_7
    const v15, 0x3f333333    # 0.7f

    :goto_2
    if-eqz v8, :cond_9

    if-eqz v9, :cond_8

    goto :goto_3

    :cond_8
    move v11, v12

    goto :goto_3

    :cond_9
    move v11, v13

    .line 765
    :goto_3
    iget-object v12, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "widgetTimeWidth == "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "  widgetIconWidth == "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "  widgetTimeHeight == "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " widgetIconHeight== "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_16

    const-string v2, "appWidgetMinWidth"

    .line 767
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "appWidgetMinHeight"

    .line 768
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v12, "appWidgetMaxWidth"

    .line 769
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "appWidgetMaxHeight"

    .line 770
    invoke-virtual {v1, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_a

    .line 772
    instance-of v13, v2, Ljava/lang/Integer;

    if-eqz v13, :cond_a

    .line 773
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    :cond_a
    const/16 v2, 0x140

    :goto_4
    if-eqz v4, :cond_b

    .line 775
    instance-of v13, v4, Ljava/lang/Integer;

    if-eqz v13, :cond_b

    .line 776
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_b
    if-eqz v12, :cond_c

    .line 778
    instance-of v4, v12, Ljava/lang/Integer;

    if-eqz v4, :cond_c

    .line 779
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_c
    if-eqz v1, :cond_d

    .line 781
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_d

    .line 782
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 785
    :cond_d
    iget-object v1, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "   minWidth \u603b\u5bbd == "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "   \u6a21\u7cca\u5bbd  "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, " = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v2, v2

    mul-float v13, v2, v10

    mul-float/2addr v13, v3

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move/from16 p1, v13

    const-string v13, "   minBitmap\u5bbd "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float/2addr v2, v15

    mul-float/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v1, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "   minHeight \u603b\u9ad8 == "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "   \u6a21\u7cca\u9ad8   = "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v2

    add-int/lit8 v2, v5, -0xf

    int-to-float v2, v2

    mul-float v17, v2, v14

    move/from16 v18, v2

    mul-float v2, v17, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   bitmap\u9ad8  = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v5, v5

    mul-float v17, v5, v11

    move/from16 v19, v5

    mul-float v5, v17, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v1, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    const-string v5, "============================================"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v20

    move/from16 v21, v8

    invoke-static/range {v20 .. v20}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v1, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   maxWidth \u603b\u5bbd == "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "   \u6a21\u7cca\u5bbd "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v6, v6

    mul-float/2addr v10, v6

    mul-float/2addr v10, v3

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "   maxBitmap\u5bbd "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float/2addr v6, v15

    mul-float/2addr v6, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v1, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   maxHeight \u603b\u9ad8 == "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v7, -0xf

    int-to-float v8, v8

    mul-float/2addr v14, v8

    mul-float/2addr v14, v3

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v2, v7

    mul-float v7, v2, v11

    mul-float/2addr v7, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v1, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_e

    move/from16 v13, p1

    goto :goto_5

    :cond_e
    move v13, v10

    :goto_5
    float-to-int v1, v13

    .line 811
    iput v1, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->fuzzyWidth:I

    if-eqz v9, :cond_f

    move/from16 v6, v16

    :cond_f
    float-to-int v1, v6

    .line 812
    iput v1, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->bitmapWidth:I

    const/4 v1, 0x0

    if-eqz v9, :cond_11

    if-eqz v21, :cond_10

    mul-float/2addr v8, v11

    mul-float/2addr v8, v3

    goto :goto_6

    :cond_10
    mul-float/2addr v8, v3

    sub-float/2addr v8, v1

    goto :goto_6

    :cond_11
    if-eqz v21, :cond_12

    mul-float v4, v18, v11

    mul-float v8, v4, v3

    goto :goto_6

    :cond_12
    mul-float v4, v18, v3

    sub-float v8, v4, v1

    :goto_6
    float-to-int v4, v8

    .line 815
    iput v4, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->fuzzyHeight:I

    if-eqz v9, :cond_14

    if-eqz v21, :cond_13

    move v5, v7

    goto :goto_7

    :cond_13
    mul-float/2addr v2, v3

    sub-float v5, v2, v1

    goto :goto_7

    :cond_14
    if-eqz v21, :cond_15

    move/from16 v5, v17

    goto :goto_7

    :cond_15
    mul-float v5, v19, v3

    sub-float/2addr v5, v1

    :goto_7
    float-to-int v1, v5

    .line 819
    iput v1, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->bitmapHeight:I

    .line 820
    iget-object v1, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==========    fuzzyWidth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->fuzzyWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   bitmapWidth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->bitmapWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   fuzzyHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->fuzzyHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   bitmapHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/zui/gallery/widget/WidgetMangerSingle;->bitmapHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 828
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppWidgetWH(I)V

    :goto_8
    return-void
.end method

.method private getCacheBitmap(Landroid/widget/RemoteViews;I)V
    .locals 5

    .line 846
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mBmpMap:Ljava/util/Map;

    const v1, 0x7f0801f3

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 851
    invoke-direct {p0, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 852
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 853
    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    .line 855
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mBmpMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 864
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "pad_port"

    const-string v3, "pad_land"

    .line 866
    new-instance v4, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 867
    invoke-direct {p0, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 869
    invoke-direct {p0, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 871
    invoke-direct {p0, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 872
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 873
    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    .line 875
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 880
    invoke-direct {p0, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 882
    invoke-direct {p0, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 883
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 884
    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    .line 886
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 894
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->createReverseColor(Landroid/widget/RemoteViews;)V

    .line 896
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileChanged()Z

    move-result p2

    .line 897
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileAutomaticChanged()Z

    move-result v0

    .line 898
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileChanged == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isFileAutomaticChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_5

    if-nez v0, :cond_5

    .line 900
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->loadDefaultIcon(Landroid/widget/RemoteViews;)V

    return-void

    .line 904
    :cond_5
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->localFileExists()Z

    move-result v1

    .line 905
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileExists == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_6

    return-void

    .line 913
    :cond_6
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCacheMap:Ljava/util/Map;

    if-eqz v1, :cond_7

    const-string v2, "albumImage_bitmap"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 914
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCacheMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 915
    invoke-direct {p0, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->orientationBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    const v3, 0x7f0801e5

    .line 916
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 917
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ALBUM_IMAGE_BITMAP bitmap == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    const-string v1, "albumImage_file"

    const-string v2, ""

    .line 919
    invoke-static {v1, v2}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 920
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 921
    invoke-direct {p0, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setContentUriThread(Ljava/lang/String;)V

    .line 923
    :cond_8
    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALBUM_IMAGE_BITMAP == null;mCacheMap == null; ALBUM_IMAGE_FILE filePath == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-nez p2, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    const p2, 0x7f0803c5

    const/4 v0, 0x0

    .line 928
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 929
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setLockStatus(Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 932
    iget-object p2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setViewVisibility catch == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    return-void
.end method

.method private getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2079
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2080
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

    const-string v0, "multiple_path_list"

    .line 1855
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1856
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1857
    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    const-string v1, ""

    .line 1860
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1861
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private getDataUri()Ljava/lang/String;
    .locals 3

    const-string v0, "multiple_uri_list"

    .line 1873
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1874
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1875
    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    const-string v1, ""

    .line 1878
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1879
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method private getLunarCalendar()Ljava/lang/String;
    .locals 5

    .line 1044
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1045
    new-instance v1, Lcom/zui/gallery/widget/LunarCalender;

    invoke-direct {v1}, Lcom/zui/gallery/widget/LunarCalender;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCalender:Lcom/zui/gallery/widget/LunarCalender;

    const/4 v1, 0x1

    .line 1046
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 1047
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    const/4 v1, 0x5

    .line 1048
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1049
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCalender:Lcom/zui/gallery/widget/LunarCalender;

    const-string v4, "lunarCalendarDryBranch"

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/zui/gallery/widget/LunarCalender;->getLunarCalendar(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPosition()I
    .locals 6

    const-string v0, "albumImage_file"

    const-string v1, ""

    .line 1797
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1798
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1799
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 1800
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/zui/gallery/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ","

    .line 1803
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1804
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1806
    aget-object v5, v1, v3

    .line 1807
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

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

    .line 1380
    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->resetImageCorp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1382
    sget v0, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->RADIUS_OF_FILLET:I

    const/16 v1, 0xb

    invoke-static {p1, v0, v1}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->fillet(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getStartApplicationComponentName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 4

    .line 1558
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1560
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1562
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, v1

    :goto_0
    if-nez p2, :cond_0

    return-object v1

    .line 1568
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    .line 1569
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1572
    invoke-virtual {p1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1573
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 1574
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_1

    .line 1576
    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    return-object v1
.end method

.method private getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2103
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mBmpMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2104
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getWidgetHeight()I
    .locals 2

    .line 2171
    iget v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->bitmapHeight:I

    if-lez v0, :cond_0

    return v0

    .line 2174
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06039a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static getWidgetInstance()Lcom/zui/gallery/widget/WidgetMangerSingle;
    .locals 1

    .line 142
    invoke-static {}, Lcom/zui/gallery/widget/WidgetMangerSingle$SingleThread;->access$100()Lcom/zui/gallery/widget/WidgetMangerSingle;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetWidth()I
    .locals 3

    .line 2157
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2158
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0603a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2159
    iget v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->bitmapWidth:I

    if-lez v2, :cond_0

    return v2

    :cond_0
    sub-int/2addr v1, v0

    return v1
.end method

.method private isDifferentNavigationBar()Z
    .locals 5

    const-string v0, "isNavigationShowing4x3"

    .line 1155
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1156
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isNavigationBarShowIng()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 1159
    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1160
    check-cast v1, Ljava/lang/Boolean;

    .line 1161
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v2, v0, :cond_1

    goto :goto_0

    .line 1164
    :cond_0
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->getSpBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v2, v0, :cond_1

    :goto_0
    move v3, v4

    :cond_1
    move v4, v3

    :cond_2
    if-eqz v4, :cond_3

    .line 1170
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setNavigationShowing()V

    :cond_3
    return v4
.end method

.method private isFileChanged()Z
    .locals 5

    const-string v0, "file_changed_notification"

    .line 1683
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "file_changed"

    if-eqz v1, :cond_1

    .line 1685
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    const-string v1, ""

    .line 1691
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1692
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private isLoadBanner()V
    .locals 2

    .line 1661
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1667
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileAutomaticChanged()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oneDayDifference4x3"

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->isDayOrMin15(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1668
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetMangerSingle$7;

    invoke-direct {v1, p0}, Lcom/zui/gallery/widget/WidgetMangerSingle$7;-><init>(Lcom/zui/gallery/widget/WidgetMangerSingle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1673
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private isPhoneLand()Z
    .locals 1

    .line 571
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$bannerDataExists$1(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 1761
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1763
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    invoke-static {p2}, Lcom/zui/gallery/widget/WidgetUtils;->getMediaUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1766
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
    .locals 2

    if-nez p1, :cond_0

    .line 1300
    new-instance p1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b002c

    invoke-direct {p1, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :cond_0
    const v0, 0x7f0803c5

    const/4 v1, 0x4

    .line 1303
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1305
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetMangerSingle$5;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle$5;-><init>(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/widget/RemoteViews;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1374
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private localFileExists()Z
    .locals 2

    const-string v0, "albumImage_file"

    const-string v1, ""

    .line 1727
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1728
    invoke-static {v0}, Lcom/zui/gallery/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1730
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->bannerDataExists()V

    :cond_0
    return v0
.end method

.method private newCacheMap()V
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCacheMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2046
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCacheMap:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method private openCurrentPhoto()V
    .locals 4

    const-string v0, "albumImage_uri"

    const-string v1, ""

    .line 1442
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1443
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1444
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x10080000

    .line 1446
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "image/*"

    .line 1447
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isWidget"

    const/4 v2, 0x1

    .line 1448
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1449
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openSettingsBroadcast(Landroid/widget/RemoteViews;)V
    .locals 5

    .line 1503
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zui.action.click"

    .line 1504
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1505
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/widget/AppWidget;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1506
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0801e5

    .line 1507
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.zui.action.click.lock"

    .line 1510
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1511
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/zui/gallery/widget/AppWidget;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1512
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0803c5

    .line 1513
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private orientationBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "screen_land"

    .line 1999
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    const-string v2, "screen_port"

    .line 2000
    invoke-direct {p0, v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 2002
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v4

    .line 2003
    iget-object v5, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUpdateOptions == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->isUpdateOptions:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  isPort -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "  landB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "  portB = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget-boolean v5, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->isUpdateOptions:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isDifferentNavigationBar()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2007
    :cond_0
    invoke-direct {p0, v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->removeCacheMapKey(Ljava/lang/String;)V

    .line 2008
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->removeCacheMapKey(Ljava/lang/String;)V

    .line 2009
    iput-boolean v6, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->isUpdateOptions:Z

    move-object v1, v7

    move-object v3, v1

    :cond_1
    const/16 v5, 0xb

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    .line 2013
    invoke-virtual {p0, p1, v6}, Lcom/zui/gallery/widget/WidgetMangerSingle;->imageCrop(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2015
    sget v0, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->RADIUS_OF_FILLET:I

    invoke-static {p1, v0, v5}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->fillet(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2016
    invoke-direct {p0, v2, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2018
    :cond_2
    invoke-direct {p0, v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 2021
    invoke-virtual {p0, p1, v6}, Lcom/zui/gallery/widget/WidgetMangerSingle;->imageCrop(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2023
    sget v1, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->RADIUS_OF_FILLET:I

    invoke-static {p1, v1, v5}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->fillet(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2024
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2026
    :cond_4
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_0
    if-nez v4, :cond_5

    if-eqz v1, :cond_5

    return-object v1

    :cond_5
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    return-object v3

    :cond_6
    return-object v7
.end method

.method private padSelfChange(ZIIILandroid/appwidget/AppWidgetManager;Landroid/widget/RemoteViews;)V
    .locals 14

    move-object v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 495
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pad_port"

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pad_land"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int v5, v0, p3

    add-int v5, v5, p4

    .line 498
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putKey(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 501
    invoke-direct {p0, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    .line 505
    invoke-direct {p0, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 508
    invoke-direct {p0, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 509
    instance-of v7, v4, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    .line 510
    move-object v6, v4

    check-cast v6, Landroid/graphics/Bitmap;

    .line 515
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->processingBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const v7, 0x7f0801f3

    if-nez v6, :cond_5

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 523
    iget v6, v1, Lcom/zui/gallery/widget/WidgetMangerSingle;->errorRetX:I

    add-int v6, p3, v6

    .line 524
    iget v8, v1, Lcom/zui/gallery/widget/WidgetMangerSingle;->errorRetY:I

    add-int v8, p4, v8

    .line 525
    iget v9, v1, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetHeight:I

    add-int/2addr v9, v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-gt v9, v10, :cond_2

    move v9, v12

    goto :goto_1

    :cond_2
    move v9, v11

    .line 526
    :goto_1
    iget v10, v1, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetWidth:I

    add-int/2addr v10, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-gt v10, v13, :cond_3

    move v11, v12

    :cond_3
    if-eqz v11, :cond_6

    if-eqz v9, :cond_6

    .line 530
    iget v9, v1, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetWidth:I

    iget v10, v1, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetHeight:I

    invoke-static {v4, v6, v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v6, 0x64

    .line 535
    :try_start_0
    invoke-static {v4, v6, v12}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    sget v8, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->RADIUS_OF_FILLET_FUZZY:I

    const/4 v9, 0x5

    invoke-static {v6, v8, v9}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->fillet(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    add-int v9, p4, p3

    .line 548
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putKey(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 550
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5, v8}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putKey(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 553
    invoke-virtual {v3, v7, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    if-eqz p1, :cond_4

    .line 555
    invoke-virtual {v2, v0, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 557
    :cond_4
    invoke-direct {p0, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 558
    invoke-direct {p0, v6}, Lcom/zui/gallery/widget/WidgetMangerSingle;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 537
    iget-object v0, v1, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBlur Exception == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 563
    :cond_5
    invoke-virtual {v3, v7, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    if-eqz p1, :cond_6

    .line 565
    invoke-virtual {v2, v0, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private processingBitmap()Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v7, p0

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v10, "albumImage_blurry"

    .line 592
    invoke-direct {v7, v10}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v11

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    const-string v12, "screen_port"

    const-string v13, "screen_land"

    if-eqz v1, :cond_1

    if-eqz v11, :cond_0

    move-object v0, v12

    goto :goto_0

    :cond_0
    move-object v0, v13

    .line 602
    :goto_0
    invoke-direct {v7, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 604
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 605
    iget-object v3, v7, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processingBitmap: 1  =="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v1, v8

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "ms"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 606
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 609
    :cond_2
    new-instance v15, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v15, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    if-eqz v0, :cond_4

    .line 610
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v16, v12

    goto :goto_2

    .line 611
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v6, Lcom/zui/gallery/widget/WidgetMangerSingle$2;

    move-object v1, v6

    move-object/from16 v2, p0

    move-wide v3, v8

    move v5, v11

    move-object/from16 v16, v12

    move-object v12, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/widget/WidgetMangerSingle$2;-><init>(Lcom/zui/gallery/widget/WidgetMangerSingle;JZLjava/util/concurrent/CountDownLatch;)V

    invoke-direct {v0, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 638
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 641
    :goto_2
    :try_start_0
    invoke-virtual {v15}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 643
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 645
    :goto_3
    invoke-direct {v7, v10}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v11, :cond_5

    move-object/from16 v12, v16

    goto :goto_4

    :cond_5
    move-object v12, v13

    .line 654
    :goto_4
    invoke-direct {v7, v12}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 656
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 657
    iget-object v3, v7, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processingBitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v1, v8

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2066
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2067
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private putData(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1986
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->newCacheMap()V

    const-string v0, "screen_land"

    .line 1987
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->removeCacheMapKey(Ljava/lang/String;)V

    const-string v0, "screen_port"

    .line 1988
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->removeCacheMapKey(Ljava/lang/String;)V

    const-string v0, "albumImage_bitmap"

    .line 1989
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1990
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->orientationBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method private putData(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1977
    invoke-direct {p0, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putData(Landroid/graphics/Bitmap;)V

    .line 1978
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putFilePath(Ljava/lang/String;)V

    return-void
.end method

.method private putFilePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "albumImage_file"

    .line 937
    invoke-static {v0, p1}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private putKey(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 2092
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mBmpMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2093
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1963
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1966
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1967
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshStartView(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1394
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->startDeskClock(Landroid/widget/RemoteViews;)V

    .line 1395
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->startCalendar(Landroid/widget/RemoteViews;)V

    .line 1397
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->openSettingsBroadcast(Landroid/widget/RemoteViews;)V

    .line 1399
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->registerReceiver()V

    return-void
.end method

.method private refreshWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 2502
    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 2504
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/zui/gallery/widget/AppWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2506
    invoke-virtual {v0, v1, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private registerOrientationReceiver()V
    .locals 3

    .line 2332
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->reallyPad()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2335
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->orientationReceiver:Lcom/zui/gallery/widget/WidgetOrientationReceive;

    if-eqz v0, :cond_1

    return-void

    .line 2339
    :cond_1
    new-instance v0, Lcom/zui/gallery/widget/WidgetOrientationReceive;

    invoke-direct {v0}, Lcom/zui/gallery/widget/WidgetOrientationReceive;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->orientationReceiver:Lcom/zui/gallery/widget/WidgetOrientationReceive;

    .line 2341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 2343
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2345
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->orientationReceiver:Lcom/zui/gallery/widget/WidgetOrientationReceive;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerTimeTickReceiver()V
    .locals 3

    .line 2367
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/WidgetTimeTickReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 2371
    :cond_0
    new-instance v0, Lcom/zui/gallery/widget/WidgetTimeTickReceiver;

    invoke-direct {v0}, Lcom/zui/gallery/widget/WidgetTimeTickReceiver;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/WidgetTimeTickReceiver;

    .line 2373
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 2376
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 2378
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2380
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/WidgetTimeTickReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerWallPaperReceiver()V
    .locals 3

    .line 2298
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetWallPaperReceiver:Lcom/zui/gallery/widget/WidgetWallPaperReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 2302
    :cond_0
    new-instance v0, Lcom/zui/gallery/widget/WidgetWallPaperReceiver;

    invoke-direct {v0}, Lcom/zui/gallery/widget/WidgetWallPaperReceiver;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetWallPaperReceiver:Lcom/zui/gallery/widget/WidgetWallPaperReceiver;

    .line 2304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    .line 2306
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2310
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetWallPaperReceiver:Lcom/zui/gallery/widget/WidgetWallPaperReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeCacheMapKey(Ljava/lang/String;)V
    .locals 1

    .line 2054
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCacheMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2055
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private resetFuzzyWH()V
    .locals 2

    .line 484
    iget v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->fuzzyWidth:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->fuzzyHeight:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    iput v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetWidth:I

    .line 490
    iput v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetHeight:I

    return-void

    .line 486
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->updateWidgetAll(Landroid/content/Context;)V

    return-void
.end method

.method private resetLoadDefault(II)V
    .locals 2

    .line 1282
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetMangerSingle$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle$4;-><init>(Lcom/zui/gallery/widget/WidgetMangerSingle;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1295
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendAlarm(I)V
    .locals 6

    .line 247
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 248
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 249
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/zui/gallery/widget/WidgetAlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 251
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x2000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    sub-long/2addr v2, v4

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private setContentUriThread(Ljava/lang/String;)V
    .locals 2

    .line 1917
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetMangerSingle$8;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle$8;-><init>(Lcom/zui/gallery/widget/WidgetMangerSingle;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1955
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setLockStatus(Landroid/widget/RemoteViews;)V
    .locals 3

    const-string v0, "widgetLock"

    const-string v1, ""

    .line 1490
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnLock"

    .line 1491
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f0803c5

    if-eqz v1, :cond_0

    const v0, 0x7f0703bd

    .line 1492
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    :cond_0
    const-string v1, "IsLock"

    .line 1493
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0703b8

    .line 1494
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNavigationShowing()V
    .locals 3

    .line 1141
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->newCacheMap()V

    .line 1142
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isNavigationBarShowIng()Z

    move-result v0

    .line 1144
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isNavigationShowing4x3"

    invoke-direct {p0, v2, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1146
    invoke-static {v2, v0}, Lcom/zui/gallery/widget/WidgetUtils;->putSpBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method private setPosition()V
    .locals 6

    .line 1820
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->bannerDataExists()V

    .line 1821
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getPosition()I

    move-result v0

    .line 1822
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getDataUri()Ljava/lang/String;

    move-result-object v1

    .line 1823
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getDataPath()Ljava/lang/String;

    move-result-object v2

    .line 1824
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    .line 1825
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, ","

    .line 1829
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1830
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1832
    array-length v3, v1

    array-length v5, v2

    if-eq v3, v5, :cond_1

    return-void

    .line 1836
    :cond_1
    array-length v3, v1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    array-length v3, v2

    if-ne v3, v5, :cond_2

    return-void

    :cond_2
    add-int/2addr v0, v5

    .line 1842
    array-length v3, v1

    if-ge v0, v3, :cond_4

    array-length v3, v2

    if-lt v0, v3, :cond_3

    goto :goto_0

    .line 1846
    :cond_3
    aget-object v1, v1, v0

    aget-object v0, v2, v0

    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setContentUri(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1843
    :cond_4
    :goto_0
    aget-object v0, v1, v4

    aget-object v1, v2, v4

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setContentUri(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 1826
    :cond_5
    :goto_2
    invoke-direct {p0, v4, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->resetLoadDefault(II)V

    return-void
.end method

.method private setTextColor(Landroid/widget/RemoteViews;Z)V
    .locals 4

    const v0, 0x7f08035d

    const v1, 0x7f08035f

    const v2, 0x7f08035c

    const v3, 0x7f08035a

    if-eqz p2, :cond_0

    const/high16 p2, -0x1000000

    .line 187
    invoke-virtual {p1, v3, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 188
    invoke-virtual {p1, v2, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 189
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 190
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    .line 192
    invoke-virtual {p1, v3, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 193
    invoke-virtual {p1, v2, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 194
    invoke-virtual {p1, v1, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 195
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :goto_0
    return-void
.end method

.method private startCalendar(Landroid/widget/RemoteViews;)V
    .locals 5

    .line 1522
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.category.ACTIVE_ICON"

    .line 1523
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 1524
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 1525
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1526
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.zui.calendar"

    const-string v3, "com.zui.calendar.LaunchActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "EnterFromWidget"

    const/4 v2, 0x1

    .line 1527
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1528
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v4, 0x7f0803af

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1529
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v4, 0x7f08020d

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1530
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f08035b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private startDeskClock(Landroid/widget/RemoteViews;)V
    .locals 5

    .line 1539
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.zui.deskclock"

    invoke-direct {p0, v0, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getStartApplicationComponentName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1541
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 1542
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    .line 1543
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1544
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v0, 0x7f08020e

    .line 1545
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x2000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f08020f

    .line 1546
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private threadLoadCacheBitmap(Landroid/content/Context;III)V
    .locals 8

    .line 337
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move-object v4, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$2iaxb6EtzTELyqidURqpeiTlLz0;-><init>(Lcom/zui/gallery/widget/WidgetMangerSingle;ILandroid/content/Context;II)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 344
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private unRegisterReceiver()V
    .locals 0

    .line 1058
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->unRegisterTimeTickReceiver()V

    .line 1060
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->unRegisterOrientationReceiver()V

    .line 1062
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->unRegisterWallPaperReceiver()V

    return-void
.end method

.method private unRegisterWallPaperReceiver()V
    .locals 2

    .line 2317
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetWallPaperReceiver:Lcom/zui/gallery/widget/WidgetWallPaperReceiver;

    if-nez v0, :cond_0

    return-void

    .line 2322
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetWallPaperReceiver:Lcom/zui/gallery/widget/WidgetWallPaperReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 2324
    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetWallPaperReceiver:Lcom/zui/gallery/widget/WidgetWallPaperReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2328
    :catch_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    const-string v1, "unRegisterWallPaperReceiver: "

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private upDataText()V
    .locals 3

    .line 2450
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b002c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2452
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isPhoneLand()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08035b

    .line 2453
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getLunarCalendar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2455
    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->refreshStartView(Landroid/widget/RemoteViews;)V

    .line 2457
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->refreshWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public automaticSetData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 694
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->newCacheMap()V

    .line 695
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "file_changed_notification"

    const-string p2, "fileAutomaticChanged"

    .line 696
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 697
    invoke-static {p1, p2}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public banner()V
    .locals 0

    .line 1890
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setPosition()V

    return-void
.end method

.method public bannerDataExists()V
    .locals 10

    const-string v0, "albumImage_file"

    const-string v1, ""

    .line 1740
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1741
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1742
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getDataUri()Ljava/lang/String;

    move-result-object v2

    .line 1743
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1744
    invoke-direct {p0, v4, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->resetLoadDefault(II)V

    return-void

    :cond_0
    const-string v3, ","

    .line 1747
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1750
    array-length v5, v3

    if-lez v5, :cond_5

    .line 1752
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1753
    array-length v6, v3

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    .line 1755
    invoke-static {v8}, Lcom/zui/gallery/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1758
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1759
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1760
    new-instance v7, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$p4qjxB1rzls2airdzoGZ8uiRx0Q;

    invoke-direct {v7, v3, v6}, Lcom/zui/gallery/widget/-$$Lambda$WidgetMangerSingle$p4qjxB1rzls2airdzoGZ8uiRx0Q;-><init>(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1773
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0}, Lcom/zui/gallery/util/FileUtils;->isFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1774
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1775
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1776
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1777
    invoke-direct {p0, v4, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->resetLoadDefault(II)V

    goto :goto_1

    .line 1779
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1780
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1783
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multiple_uri_list"

    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1784
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "multiple_path_list"

    invoke-direct {p0, v2, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1785
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public changedAppWidget(Landroid/content/Context;)V
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetMangerSingle$1;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle$1;-><init>(Lcom/zui/gallery/widget/WidgetMangerSingle;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public changedTimeThread()V
    .locals 2

    .line 1597
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetMangerSingle$6;

    invoke-direct {v1, p0}, Lcom/zui/gallery/widget/WidgetMangerSingle$6;-><init>(Lcom/zui/gallery/widget/WidgetMangerSingle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1603
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public clearBmp()V
    .locals 1

    .line 2130
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mBmpMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2134
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 2135
    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mBmpMap:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method public compressImage(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 4

    .line 2257
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2259
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/16 v1, 0x5a

    .line 2263
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v3, v3

    div-int/lit16 v3, v3, 0x400

    if-le v3, v2, :cond_2

    .line 2265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    if-nez p2, :cond_1

    .line 2267
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 2271
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0xa

    goto :goto_0

    .line 2280
    :cond_2
    :goto_1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p2, 0x0

    .line 2282
    invoke-static {p1, p2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2285
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 2286
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2289
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2292
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method

.method public createAndProcessing()V
    .locals 4

    .line 578
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->clearBmp()V

    .line 579
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mBmpMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    const-string v1, " createAndProcessing mBmpMap== null createBmpMap"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mBmpMap:Ljava/util/Map;

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isPhoneLand()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 586
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->processingBitmap()Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 587
    iget v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetId:I

    iget v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetX:I

    iget v3, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/zui/gallery/widget/WidgetMangerSingle;->selfChange(Landroid/widget/RemoteViews;III)V

    return-void
.end method

.method protected createTimeTask()V
    .locals 0

    .line 2408
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->upDataText()V

    return-void
.end method

.method public deleted()V
    .locals 1

    .line 1098
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->unRegisterReceiver()V

    .line 1102
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->clearPath()V

    const-string v0, "widget4x3Create"

    .line 1104
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->clearBmp()V

    .line 1107
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->clearCacheMap()V

    .line 1108
    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->clearMap()V

    return-void
.end method

.method public deleted(Landroid/content/Intent;)V
    .locals 10

    .line 1071
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p1, :cond_3

    const-string v2, "appWidgetId"

    .line 1072
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1073
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v2, "widgetIdList"

    .line 1074
    invoke-static {v2, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1075
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ","

    .line 1076
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1077
    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1078
    invoke-static {v2}, Lcom/zui/gallery/widget/WidgetUtils;->clearFilePath(Ljava/lang/String;)V

    .line 1081
    :cond_0
    array-length v5, v3

    move v6, v0

    move-object v7, v1

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v8, v3, v6

    .line 1082
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, p1, :cond_1

    .line 1084
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1088
    :cond_2
    invoke-static {v2, v7}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :cond_3
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->WIDGET:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->DELETE_WIDGET:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {p1, v2, v1, v0}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    return-void
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 2467
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2468
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2473
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2475
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2477
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2478
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 2480
    :goto_0
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2482
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 2484
    invoke-virtual {p1, v4, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2486
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2488
    invoke-virtual {p0, v2, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->compressImage(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .line 1908
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLauncherSettingValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    return-object p3

    .line 228
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 229
    sget-object v0, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->WALLPAPER_TEXT_COLOR_URI:Landroid/net/Uri;

    .line 230
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    .line 231
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p2, "getValue"

    const/4 v2, 0x0

    .line 233
    invoke-virtual {p1, v0, p2, v2, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p3

    :cond_1
    const-string p2, "value"

    .line 238
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 241
    iget-object p2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53d1\u751f\u9519\u8bef... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method public getNextTime(Ljava/lang/String;)V
    .locals 4

    const-string v0, "min154x3"

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "oneDayDifference4x3"

    .line 366
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nextTime"

    invoke-static {v1, v0}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

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

.method public imageCrop(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2186
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 2187
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 2189
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 2192
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetWidth()I

    move-result v4

    .line 2193
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetHeight()I

    move-result v5

    .line 2196
    invoke-static {v4, v4}, Lcom/zui/gallery/widget/WidgetUtils;->detectWH(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2197
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->updateWidgetAll(Landroid/content/Context;)V

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    .line 2202
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2203
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_2
    move v0, v4

    move v8, v5

    .line 2205
    iget-object v3, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imageCrop: isPort "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  newW "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  newH  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    int-to-float v5, v2

    int-to-float v6, v8

    div-float/2addr v5, v6

    .line 2210
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v4, v3

    float-to-int v4, v4

    mul-float/2addr v3, v6

    float-to-int v5, v3

    sub-int/2addr v1, v4

    .line 2215
    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v5

    .line 2216
    div-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move v2, v3

    move v3, v6

    move-object v6, v7

    move v7, v9

    .line 2218
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    .line 2220
    invoke-static {v1, v0, v8, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public isFileAutomaticChanged()Z
    .locals 5

    const-string v0, "file_changed_notification"

    .line 1704
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheMapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "fileAutomaticChanged"

    if-eqz v1, :cond_1

    .line 1706
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    const-string v1, ""

    .line 1712
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1713
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method protected isPart(I)Z
    .locals 9

    .line 353
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileChanged()Z

    move-result v0

    .line 354
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileAutomaticChanged()Z

    move-result v1

    const-string v2, "widgetLock"

    const-string v3, ""

    .line 356
    invoke-static {v2, v3}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnLock"

    .line 357
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    .line 358
    :goto_1
    iget-object v6, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lock == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  IS_LOCK \u7981\u6b62\u8f6e\u64ad UN_LOCK \u53ef\u4ee5\u8f6e\u64ad  fileChanged == "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "min154x3"

    .line 359
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->isDayOrMin15(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    if-lt p1, v0, :cond_3

    const/16 v0, 0x18

    if-gt p1, v0, :cond_3

    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    return v4
.end method

.method public isPhonePort()Z
    .locals 1

    .line 574
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$threadLoadCacheBitmap$0$WidgetMangerSingle(ILandroid/content/Context;II)V
    .locals 3

    .line 339
    invoke-direct {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppWidgetWH(I)V

    .line 340
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b002c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 341
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheBitmap(Landroid/widget/RemoteViews;I)V

    .line 342
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->selfChange(Landroid/widget/RemoteViews;III)V

    .line 343
    invoke-direct {p0, p2, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->refreshWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public manualSetData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 706
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->newCacheMap()V

    .line 707
    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "file_changed_notification"

    const-string p2, "file_changed"

    .line 708
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    invoke-static {p1, p2}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAppWidgetUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 3

    .line 667
    invoke-direct {p0, p3}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppWidgetWH(I)V

    .line 669
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b002c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 670
    invoke-static {p1}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    .line 672
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isPhoneLand()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f08035b

    .line 674
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getLunarCalendar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 676
    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getCacheBitmap(Landroid/widget/RemoteViews;I)V

    .line 681
    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->refreshStartView(Landroid/widget/RemoteViews;)V

    .line 682
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 683
    invoke-direct {p0, p3}, Lcom/zui/gallery/widget/WidgetMangerSingle;->avatarAddWidget(I)V

    return-void
.end method

.method public onCreateWidget()V
    .locals 2

    const-string v0, "widget4x3Create"

    const/4 v1, 0x1

    .line 1114
    invoke-static {v0, v1}, Lcom/zui/gallery/widget/WidgetUtils;->putSpBoolean(Ljava/lang/String;Z)V

    .line 1115
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setNavigationShowing()V

    .line 1119
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    const-string v1, "onCreateWidget"

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/widget/WidgetMangerSingle$3;

    invoke-direct {v1, p0}, Lcom/zui/gallery/widget/WidgetMangerSingle$3;-><init>(Lcom/zui/gallery/widget/WidgetMangerSingle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1131
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public openNotify()V
    .locals 2

    .line 1424
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isP12Device()Z

    .line 1425
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileChanged()Z

    move-result v0

    .line 1426
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileAutomaticChanged()Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1430
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->openWidgetActivity()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 1434
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->openCurrentPhoto()V

    :cond_2
    :goto_0
    return-void
.end method

.method public openWidgetActivity()V
    .locals 3

    .line 1457
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1458
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/widget/WidgetActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10080000

    .line 1460
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1461
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public orientationUpdateAll(Landroid/content/Context;)V
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->changedAppWidget(Landroid/content/Context;)V

    return-void
.end method

.method public refreshTheDefaultStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1181
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getDataUri()Ljava/lang/String;

    move-result-object v3

    .line 1182
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getDataPath()Ljava/lang/String;

    move-result-object v4

    .line 1183
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileChanged()Z

    move-result v5

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isFileAutomaticChanged()Z

    move-result v6

    if-nez v5, :cond_0

    if-eqz v6, :cond_14

    .line 1186
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1187
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_9

    .line 1191
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1192
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    .line 1195
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 1198
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ","

    .line 1200
    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1201
    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1202
    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1203
    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1208
    array-length v9, v1

    array-length v10, v2

    if-eq v9, v10, :cond_4

    return-void

    .line 1212
    :cond_4
    array-length v9, v1

    array-length v10, v3

    if-ne v9, v10, :cond_5

    return-void

    .line 1216
    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 1218
    :goto_0
    array-length v12, v3

    if-ge v11, v12, :cond_6

    .line 1219
    aget-object v12, v3, v11

    .line 1220
    aget-object v13, v4, v11

    .line 1221
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1226
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 1228
    :goto_1
    array-length v14, v1

    if-ge v13, v14, :cond_a

    .line 1229
    aget-object v14, v1, v13

    .line 1230
    aget-object v15, v2, v13

    move-object/from16 p1, v1

    const/4 v7, 0x0

    .line 1231
    :goto_2
    array-length v1, v3

    if-ge v7, v1, :cond_9

    .line 1232
    aget-object v1, v3, v7

    move-object/from16 p2, v2

    .line 1233
    aget-object v2, v4, v7

    .line 1234
    invoke-virtual {v1, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_7
    invoke-virtual {v2, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p2

    goto :goto_2

    :cond_9
    move-object/from16 p2, v2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_a
    const/4 v1, 0x0

    .line 1244
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    const/4 v2, 0x0

    .line 1245
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 1246
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1247
    invoke-interface {v9, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    .line 1252
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    const/4 v2, 0x0

    .line 1253
    :goto_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 1254
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1255
    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1261
    :cond_10
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 1262
    invoke-interface {v12}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 1264
    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 1265
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    const/4 v7, 0x0

    .line 1268
    :goto_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_12

    .line 1269
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 1272
    :cond_12
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void

    :cond_14
    :goto_9
    const/4 v1, 0x0

    .line 1188
    invoke-direct {v0, v1, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->resetLoadDefault(II)V

    return-void
.end method

.method public registerReceiver()V
    .locals 0

    .line 1587
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->registerTimeTickReceiver()V

    .line 1588
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->registerOrientationReceiver()V

    .line 1590
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->registerWallPaperReceiver()V

    return-void
.end method

.method public resetImageCorp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2231
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 2232
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 2233
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetWidth()I

    move-result v3

    .line 2234
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getWidgetHeight()I

    move-result v4

    .line 2236
    invoke-static {v3, v3}, Lcom/zui/gallery/widget/WidgetUtils;->detectWH(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2237
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->updateWidgetAll(Landroid/content/Context;)V

    return-object v0

    .line 2240
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imageCrop: isPort "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  newW "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  newH  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v1

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v5, v2

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 2243
    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v3, v0

    float-to-int v8, v3

    mul-float/2addr v0, v4

    float-to-int v9, v0

    sub-int/2addr v1, v8

    .line 2246
    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v2, v9

    .line 2247
    div-int/lit8 v7, v2, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p1

    .line 2248
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public reverseColor(Landroid/content/Intent;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wallpaper_color"

    const/4 v2, 0x0

    .line 204
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 206
    :cond_1
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 207
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/zui/gallery/widget/AppWidget;

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v3

    .line 209
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v5, 0x7f0b002c

    invoke-direct {v4, v0, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 210
    invoke-direct {p0, v4, v2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setTextColor(Landroid/widget/RemoteViews;Z)V

    .line 211
    invoke-virtual {v1, v3, v4}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 213
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " reverseColor: 0\u662f\u9ed1\u8272 1\u662f\u767d\u8272  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  appWidgetIds == "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v3

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public selfChange(Landroid/widget/RemoteViews;III)V
    .locals 15

    move-object v8, p0

    move/from16 v0, p2

    move/from16 v4, p3

    move/from16 v5, p4

    if-ltz v0, :cond_1

    if-lez v4, :cond_0

    if-gtz v5, :cond_1

    :cond_0
    return-void

    .line 386
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_2

    .line 390
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b002c

    invoke-direct {v7, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v9, v7

    move v7, v6

    goto :goto_0

    :cond_2
    move-object/from16 v9, p1

    move v7, v3

    .line 392
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    .line 394
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060395

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->errorRetY:I

    .line 395
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060396

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->errorRetX:I

    .line 396
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0603a3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetWidth:I

    .line 397
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0603a0

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetHeight:I

    .line 398
    iput v0, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetId:I

    .line 399
    iput v4, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetX:I

    .line 400
    iput v5, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetY:I

    .line 403
    invoke-direct {p0, v9}, Lcom/zui/gallery/widget/WidgetMangerSingle;->refreshStartView(Landroid/widget/RemoteViews;)V

    .line 407
    iget-object v11, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->mBmpMap:Ljava/util/Map;

    if-nez v11, :cond_3

    .line 408
    iget-object v11, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    const-string v12, " mBmp == null createBmpMap"

    invoke-static {v11, v12}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-static {v11}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v11

    iput-object v11, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->mBmpMap:Ljava/util/Map;

    .line 411
    :cond_3
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->resetFuzzyWH()V

    .line 414
    iget v11, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetWidth:I

    iget v12, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetHeight:I

    invoke-static {v11, v12}, Lcom/zui/gallery/widget/WidgetUtils;->detectWH(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 415
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->updateWidgetAll(Landroid/content/Context;)V

    return-void

    .line 419
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/zui/gallery/widget/WidgetUtils;->isPad(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v1, p0

    move v2, v7

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v10

    move-object v7, v9

    .line 420
    invoke-direct/range {v1 .. v7}, Lcom/zui/gallery/widget/WidgetMangerSingle;->padSelfChange(ZIIILandroid/appwidget/AppWidgetManager;Landroid/widget/RemoteViews;)V

    return-void

    .line 425
    :cond_5
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v7, v11}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putKey(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 428
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/4 v11, 0x0

    if-eqz v7, :cond_6

    .line 432
    instance-of v12, v7, Landroid/graphics/Bitmap;

    if-eqz v12, :cond_6

    .line 433
    move-object v11, v7

    check-cast v11, Landroid/graphics/Bitmap;

    :cond_6
    const v7, 0x7f0801f3

    if-nez v11, :cond_9

    .line 439
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->processingBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 441
    iget v12, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetHeight:I

    add-int/2addr v12, v5

    iget v13, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->errorRetY:I

    add-int/2addr v12, v13

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-gt v12, v13, :cond_7

    move v12, v6

    goto :goto_1

    :cond_7
    move v12, v3

    .line 442
    :goto_1
    iget v13, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetWidth:I

    add-int/2addr v13, v4

    iget v14, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->errorRetX:I

    add-int/2addr v13, v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-gt v13, v14, :cond_8

    move v3, v6

    :cond_8
    if-eqz v3, :cond_a

    if-eqz v12, :cond_a

    .line 447
    iget v3, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->errorRetY:I

    add-int/2addr v3, v5

    .line 448
    iget v12, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->errorRetX:I

    add-int/2addr v4, v12

    .line 449
    iget-object v12, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "selfChange: == x = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " y = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "  bitmap == w == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "  h == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "  widgetWidth = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " widgetHeight =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget v12, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetWidth:I

    iget v13, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetHeight:I

    invoke-static {v11, v4, v3, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x64

    .line 454
    :try_start_0
    invoke-static {v3, v4, v6}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    sget v6, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->RADIUS_OF_FILLET_FUZZY:I

    const/4 v12, 0x5

    invoke-static {v4, v6, v12}, Lcom/zui/gallery/widget/WidgetBitmapFillet;->fillet(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 464
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putKey(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 466
    invoke-virtual {v9, v7, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 468
    invoke-virtual {v10, v0, v9}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 470
    iget-object v0, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setImageViewBitmap : blurBitmap == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0, v11}, Lcom/zui/gallery/widget/WidgetMangerSingle;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 472
    invoke-direct {p0, v3}, Lcom/zui/gallery/widget/WidgetMangerSingle;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 456
    iget-object v0, v8, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBlur Exception == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 475
    :cond_9
    invoke-virtual {v9, v7, v11}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 477
    invoke-virtual {v10, v0, v9}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public selfChangeBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 264
    invoke-static {p1}, Lcom/zui/gallery/widget/WidgetUtils;->getOrientation(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "com.zui.gallery.widget.AppWidget"

    .line 265
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 266
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "id="

    .line 269
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "x="

    .line 270
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y="

    .line 271
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "isInScreen="

    .line 272
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "className="

    .line 273
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 274
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xb

    .line 275
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 277
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xa

    .line 278
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 279
    iget-object v8, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "selfChangeBroadcast: widget_move_value == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  sub5 == "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  s4 == "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-class v5, Lcom/zui/gallery/widget/AppWidget;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 285
    :cond_1
    invoke-static {v6}, Lcom/zui/gallery/widget/WidgetUtils;->isCurrentScreen(Ljava/lang/String;)Z

    move-result v5

    .line 286
    invoke-static {p1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v6

    if-eqz v5, :cond_8

    if-eqz v6, :cond_2

    goto/16 :goto_0

    .line 291
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isPhoneLand()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/zui/gallery/widget/WidgetUtils;->isMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_3

    return-void

    .line 295
    :cond_3
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    .line 296
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 300
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 304
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 308
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ltz v2, :cond_8

    if-lt v2, v4, :cond_4

    goto :goto_0

    .line 314
    :cond_4
    iget v4, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetY:I

    sub-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x64

    if-gt v4, v5, :cond_6

    iget v4, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetX:I

    sub-int/2addr v4, v2

    .line 315
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x96

    if-gt v4, v5, :cond_6

    .line 316
    iget-object p2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    const-string v0, "selfChangeBroadcast: return 1"

    invoke-static {p2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget p2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetX:I

    if-ne p2, v2, :cond_5

    iget p2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetY:I

    if-ne p2, v3, :cond_5

    .line 318
    iget-object p2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    const-string v0, "selfChangeBroadcast: return 2"

    invoke-static {p2, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/zui/gallery/widget/WidgetMangerSingle;->threadLoadCacheBitmap(Landroid/content/Context;III)V

    return-void

    .line 322
    :cond_5
    iput v2, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetX:I

    .line 323
    iput v3, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->widgetY:I

    return-void

    .line 327
    :cond_6
    invoke-static {v2, v3}, Lcom/zui/gallery/widget/WidgetUtils;->greaterThanValue(II)Z

    move-result v4

    if-eqz v4, :cond_7

    return-void

    .line 330
    :cond_7
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/zui/gallery/widget/WidgetMangerSingle;->threadLoadCacheBitmap(Landroid/content/Context;III)V

    .line 331
    invoke-direct {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->isLoadBanner()V

    .line 332
    iget-object p1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  isPort == "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    return-void
.end method

.method public setContentUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "albumImage_uri"

    .line 1647
    invoke-static {v0, p1}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1650
    invoke-direct {p0, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setContentUriThread(Ljava/lang/String;)V

    const-string v0, "min154x3"

    .line 1651
    invoke-virtual {p0, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getNextTime(Ljava/lang/String;)V

    .line 1653
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

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

    .line 1654
    invoke-direct {p0, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->avatarReplace(Ljava/lang/String;)V

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1615
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 1616
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "multiple_uri_list"

    .line 1621
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "multiple_path_list"

    .line 1622
    invoke-direct {p0, v2, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->putCacheMapKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1623
    invoke-static {v0, p1}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    invoke-static {v2, p2}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    .line 1626
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1627
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1629
    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_1

    return-void

    .line 1632
    :cond_1
    array-length v0, p1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_3

    array-length v0, p2

    if-ge v0, v2, :cond_2

    goto :goto_0

    .line 1636
    :cond_2
    aget-object p1, p1, v1

    aget-object p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/widget/WidgetMangerSingle;->setContentUri(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    .line 1618
    :cond_4
    :goto_1
    invoke-direct {p0, v1, v1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->resetLoadDefault(II)V

    return-void
.end method

.method public startGallery(Landroid/widget/RemoteViews;)V
    .locals 4

    .line 1404
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "image/*"

    .line 1405
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10200000

    .line 1407
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1408
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/GalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "isWidget"

    const/4 v2, 0x1

    .line 1409
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "get-content-mulit"

    .line 1410
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "get-content-max"

    const/16 v2, 0x14

    .line 1411
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1412
    const-class v1, Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "className"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0801f1

    .line 1414
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public unRegisterOrientationReceiver()V
    .locals 2

    .line 2351
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->orientationReceiver:Lcom/zui/gallery/widget/WidgetOrientationReceive;

    if-nez v0, :cond_0

    return-void

    .line 2356
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->orientationReceiver:Lcom/zui/gallery/widget/WidgetOrientationReceive;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 2358
    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->orientationReceiver:Lcom/zui/gallery/widget/WidgetOrientationReceive;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2362
    :catch_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    const-string v1, "unRegisterOrientationReceiver: "

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisterTimeTickReceiver()V
    .locals 2

    .line 2389
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/WidgetTimeTickReceiver;

    if-nez v0, :cond_0

    return-void

    .line 2394
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/WidgetTimeTickReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 2396
    iput-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->mWidgetTimeTickReceiver:Lcom/zui/gallery/widget/WidgetTimeTickReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2401
    :catch_0
    iget-object v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    const-string v1, "unRegisterTimeTickReceiver: "

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateTime()I
    .locals 4

    .line 959
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 960
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 961
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3c

    .line 962
    iget-object v1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateTime: Remaining update time == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public updateWidgetAll(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 949
    iput-boolean v0, p0, Lcom/zui/gallery/widget/WidgetMangerSingle;->isUpdateOptions:Z

    .line 950
    invoke-virtual {p0, p1}, Lcom/zui/gallery/widget/WidgetMangerSingle;->orientationUpdateAll(Landroid/content/Context;)V

    return-void
.end method

.method public widgetLock()V
    .locals 8

    .line 1465
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b002c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "widgetLock"

    const-string v2, ""

    .line 1466
    invoke-static {v1, v2}, Lcom/zui/gallery/widget/WidgetUtils;->getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnLock"

    .line 1468
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f0703b8

    const v6, 0x7f0803c5

    const-string v7, "IsLock"

    if-eqz v4, :cond_0

    .line 1469
    invoke-static {v1, v7}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    invoke-virtual {v0, v6, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 1472
    :cond_0
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1473
    invoke-static {v1, v3}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0703bd

    .line 1474
    invoke-virtual {v0, v6, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1478
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1479
    invoke-static {v1, v7}, Lcom/zui/gallery/widget/WidgetUtils;->putFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-virtual {v0, v6, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1482
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/widget/WidgetMangerSingle;->refreshWidget(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    return-void
.end method
