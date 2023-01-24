.class public Lcom/zui/gallery/filtershow/pipeline/ProcessingService;
.super Landroid/app/Service;
.source "ProcessingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/pipeline/ProcessingService$LocalBinder;
    }
.end annotation


# static fields
.field private static final DESTINATION_FILE:Ljava/lang/String; = "destinationFile"

.field private static final EXIT:Ljava/lang/String; = "exit"

.field private static final FLATTEN:Ljava/lang/String; = "flatten"

.field public static final IS_FROM_PRIVACY:Ljava/lang/String; = "is_from_privacy"

.field private static final LOGTAG:Ljava/lang/String; = "ProcessingService"

.field private static final PRESET:Ljava/lang/String; = "preset"

.field private static final QUALITY:Ljava/lang/String; = "quality"

.field private static final SAVING:Ljava/lang/String; = "saving"

.field private static final SELECTED_URI:Ljava/lang/String; = "selectedUri"

.field private static final SHOW_IMAGE:Z = false

.field private static final SIZE_FACTOR:Ljava/lang/String; = "sizeFactor"

.field private static final SOURCE_URI:Ljava/lang/String; = "sourceUri"


# instance fields
.field private captionBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private captionLicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private captionSrcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private captionStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private channelID:Ljava/lang/String;

.field private isFromPrivacy:Z

.field private isInitRenderCore:Z

.field private mActivity:Landroid/content/Context;

.field private mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

.field private final mBinder:Landroid/os/IBinder;

.field private mBuilder:Landroid/app/Notification$Builder;

.field private mCaptionDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/caption/data/AssetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptionStyleType:I

.field private mDelicacyFilterDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFiltershowActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field private mFullresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;

.field private mHighresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

.field private mImageSavingTask:Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;

.field private mMovieFilterDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNV21ToBitmap:Lcom/zui/gallery/filtershow/meishefilter/NV21ToBitmap;

.field private mNeedsAlive:Z

.field private mNotificationId:I

.field private mNotifyMgr:Landroid/app/NotificationManager;

.field public mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field public mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

.field private mPortraitFilterDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessingTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

.field private mRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;

.field private mSaving:Z

.field private mTargetDelicacyFilterDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetFilterDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetMovieFilterDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetPortraitFilterDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatePreviewTask:Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;

.field private savePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "jni_filtershow_filters"

    .line 897
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLibrary error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessingService"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "gallery_channelId"

    .line 76
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->channelID:Ljava/lang/String;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNotifyMgr:Landroid/app/NotificationManager;

    .line 78
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mBuilder:Landroid/app/Notification$Builder;

    .line 100
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$LocalBinder;-><init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mSaving:Z

    .line 103
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNeedsAlive:Z

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFilterDataList:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mPortraitFilterDataList:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mDelicacyFilterDataList:Ljava/util/ArrayList;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mMovieFilterDataList:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetFilterDataList:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetPortraitFilterDataList:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetDelicacyFilterDataList:Ljava/util/ArrayList;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetMovieFilterDataList:Ljava/util/ArrayList;

    const/4 v0, 0x3

    .line 434
    iput v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mCaptionStyleType:I

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mCaptionDataList:Ljava/util/ArrayList;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionStyleList:Ljava/util/List;

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionSrcList:Ljava/util/List;

    .line 509
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionLicList:Ljava/util/List;

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionBitmapList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mCaptionDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetFilterDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetDelicacyFilterDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetPortraitFilterDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetMovieFilterDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getAssetsDataList(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/meishefilter/NvAsset;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->getUsableAssets(III)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private getBitmapFromAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 532
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 536
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 537
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :goto_0
    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v1

    .line 539
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return-object v1

    .line 541
    :goto_3
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 542
    throw v0
.end method

.method private getBundlePath(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    :pswitch_0
    const-string p1, "moviefilter"

    goto :goto_0

    :pswitch_1
    const-string p1, "delicacyfilter"

    goto :goto_0

    :pswitch_2
    const-string p1, "portraitfilter"

    goto :goto_0

    :pswitch_3
    const-string p1, "filter"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFilterList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 303
    :pswitch_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mMovieFilterDataList:Ljava/util/ArrayList;

    goto :goto_0

    .line 300
    :pswitch_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mDelicacyFilterDataList:Ljava/util/ArrayList;

    goto :goto_0

    .line 297
    :pswitch_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mPortraitFilterDataList:Ljava/util/ArrayList;

    goto :goto_0

    .line 294
    :pswitch_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFilterDataList:Ljava/util/ArrayList;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSaveIntent(Landroid/content/Context;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;ZIFZ)Landroid/content/Intent;
    .locals 2

    .line 659
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 661
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p4, "sourceUri"

    .line 660
    invoke-virtual {v0, p4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "selectedUri"

    .line 662
    invoke-virtual {v0, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "quality"

    .line 664
    invoke-virtual {v0, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p0, "sizeFactor"

    .line 665
    invoke-virtual {v0, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 667
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "destinationFile"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p0, "Saved"

    .line 670
    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "preset"

    .line 669
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "saving"

    const/4 p1, 0x1

    .line 671
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "exit"

    .line 672
    invoke-virtual {v0, p0, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p5, :cond_1

    const-string p0, "flatten"

    .line 674
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method private getTargetFilterList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/zui/gallery/filtershow/meishefilter/FilterItem;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 322
    :pswitch_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetMovieFilterDataList:Ljava/util/ArrayList;

    goto :goto_0

    .line 319
    :pswitch_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetDelicacyFilterDataList:Ljava/util/ArrayList;

    goto :goto_0

    .line 316
    :pswitch_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetPortraitFilterDataList:Ljava/util/ArrayList;

    goto :goto_0

    .line 313
    :pswitch_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetFilterDataList:Ljava/util/ArrayList;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initCaptionInfos(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 513
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "captionstyle"

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionStyleList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "png"

    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 517
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionSrcList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "lic"

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionLicList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionSrcList:Ljava/util/List;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 523
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionSrcList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captionstyle/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getBitmapFromAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 526
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionBitmapList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void
.end method

.method private initCaptions(Landroid/app/Activity;)V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "assets:/captionstyle/"

    .line 438
    iget-object v2, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mCaptionDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 440
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "captionstyle"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->initCaptionInfos(Ljava/util/List;)V

    .line 443
    iget-object v2, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionStyleList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionStyleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 444
    iget-object v2, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionStyleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 445
    iget-object v3, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionStyleList:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionLicList:Ljava/util/List;

    .line 449
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 448
    invoke-virtual {v1, v3, v4, v6, v5}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->installAssetsPackage(Ljava/lang/String;Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    .line 450
    new-instance v5, Lcom/meicam/sdk/NvsRational;

    const/16 v7, 0x10

    const/16 v8, 0x9

    invoke-direct {v5, v7, v8}, Lcom/meicam/sdk/NvsRational;-><init>(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v15, "wangmeicam"

    const v14, 0x7f10006f

    const-string v13, ".png"

    const-string v11, "file:///android_asset/captionstyle/"

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    .line 453
    :try_start_1
    new-instance v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    invoke-direct {v3}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;-><init>()V

    .line 454
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 456
    new-instance v4, Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-direct {v4}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;-><init>()V

    .line 457
    invoke-virtual {v4, v3}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setAsset(Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)V

    .line 458
    iget-object v7, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v4, v7}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setmNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 459
    invoke-virtual {v4, v6}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setAssetMode(I)V

    .line 460
    iget-object v7, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionBitmapList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v2}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 462
    iget-object v7, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-wide/32 v16, 0x7fffffff

    iget-object v2, v3, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    move-object/from16 v18, v11

    move v3, v12

    move-wide/from16 v11, v16

    move-object/from16 v19, v13

    move-object v13, v2

    move v2, v14

    move-object v14, v5

    invoke-virtual/range {v7 .. v14}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createCaption(Ljava/lang/String;JJLjava/lang/String;Lcom/meicam/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v7

    .line 464
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fitst createCaption is called && Thread is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v4, v7}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setCaptionEffect(Lcom/meicam/effect/sdk/NvsVideoEffectCaption;)V

    .line 466
    invoke-static {v1, v3}, Lcom/zui/gallery/util/GroupUtils;->addTotalCaptionSize(Landroid/content/Context;Z)V

    .line 467
    iget-object v7, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mCaptionDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v18, v11

    move v3, v12

    move-object/from16 v19, v13

    move v2, v14

    .line 469
    :goto_0
    iget-object v4, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionStyleList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v14, v3

    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v14, v7, :cond_2

    .line 471
    iget-object v7, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionStyleList:Ljava/util/List;

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 472
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 473
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionLicList:Ljava/util/List;

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v7, v8, v6, v9}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->installAssetsPackage(Ljava/lang/String;Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v17, v19

    move/from16 v19, v14

    goto/16 :goto_2

    .line 478
    :cond_1
    new-instance v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;

    invoke-direct {v7}, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;-><init>()V

    .line 479
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    .line 480
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v18

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v19

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->coverUrl:Ljava/lang/String;

    .line 481
    new-instance v12, Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    invoke-direct {v12}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;-><init>()V

    .line 482
    invoke-virtual {v12, v7}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setAsset(Lcom/zui/gallery/filtershow/meishefilter/NvAsset;)V

    .line 483
    iget-object v8, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v12, v8}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setmNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 484
    invoke-virtual {v12, v6}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setAssetMode(I)V

    .line 485
    iget-object v8, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionBitmapList:Ljava/util/List;

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v12, v8}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 487
    iget-object v8, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v16, 0x0

    const-wide/32 v18, 0x7fffffff

    iget-object v10, v7, Lcom/zui/gallery/filtershow/meishefilter/NvAsset;->uuid:Ljava/lang/String;

    move-object v7, v8

    move-object v8, v9

    move-object/from16 v20, v10

    move-wide/from16 v9, v16

    move-object/from16 v17, v11

    move-object v2, v12

    move-wide/from16 v11, v18

    move-object/from16 v18, v13

    move-object/from16 v13, v20

    move/from16 v19, v14

    move-object v14, v5

    invoke-virtual/range {v7 .. v14}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createCaption(Ljava/lang/String;JJLjava/lang/String;Lcom/meicam/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v7

    .line 489
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xunhuan createCaption is called && Thread is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v2, v7}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->setCaptionEffect(Lcom/meicam/effect/sdk/NvsVideoEffectCaption;)V

    .line 491
    invoke-static {v1, v3}, Lcom/zui/gallery/util/GroupUtils;->addTotalCaptionSize(Landroid/content/Context;Z)V

    .line 492
    iget-object v7, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mCaptionDataList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v19, v17

    const v2, 0x7f10006f

    goto/16 :goto_1

    .line 495
    :cond_2
    iget-object v0, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionStyleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 497
    iget-object v0, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionStyleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 498
    iget-object v0, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionSrcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 499
    iget-object v0, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionLicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 500
    iget-object v0, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 501
    iget-object v0, v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->captionBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 503
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private initEffectEnv(I)V
    .locals 8

    .line 329
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->installEffectVideoFx(I)V

    .line 330
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getFilterList(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 331
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 332
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;

    .line 333
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterMode()I

    move-result v3

    .line 334
    sget v4, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->FILTERMODE_BUILTIN:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 338
    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setNvsEffect(Lcom/meicam/effect/sdk/NvsEffect;)V

    goto :goto_1

    .line 341
    :cond_0
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getPackageId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create fx is called && Thread is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " && name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->getFilterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "wangmeicam"

    invoke-static {v5, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v4, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    new-instance v5, Lcom/meicam/sdk/NvsRational;

    const/16 v6, 0x9

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    invoke-virtual {v4, v3, v5}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createVideoEffect(Ljava/lang/String;Lcom/meicam/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object v3

    .line 345
    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/meishefilter/FilterItem;->setNvsEffect(Lcom/meicam/effect/sdk/NvsEffect;)V

    .line 348
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getTargetFilterList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_2
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getFilterList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private installEffectVideoFx(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets:/filter/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 408
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, v2

    move-object v2, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 414
    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private installEffectVideoFx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 427
    :cond_1
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private installEffectVideoFx(I)V
    .locals 8

    const-string v0, "/"

    const-string v1, "assets:/"

    .line 374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 376
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 378
    :try_start_0
    iget-object v5, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mActivity:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getBundlePath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 381
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "videofx"

    .line 383
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 384
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v7, "png"

    .line 385
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "jpg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const-string v7, "lic"

    .line 387
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 388
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 386
    :cond_3
    :goto_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 392
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 393
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getBundlePath(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getBundlePath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->installEffectVideoFx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    :cond_5
    return-void
.end method

.method private searchAssetData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private setupPipeline()V
    .locals 2

    .line 856
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 857
    invoke-static {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->setResources(Landroid/content/res/Resources;)V

    .line 858
    invoke-static {p0}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->createRenderscriptContext(Landroid/content/Context;)V

    .line 860
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 861
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addLooks(Landroid/content/Context;Ljava/util/List;)V

    .line 862
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetPortraitFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addPortraitLooks(Landroid/content/Context;Ljava/util/List;)V

    .line 863
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetDelicacyFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addDelicacyLooks(Landroid/content/Context;Ljava/util/List;)V

    .line 864
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetMovieFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addMovieLooks(Landroid/content/Context;Ljava/util/List;)V

    .line 865
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mCaptionDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addCaptions(Ljava/util/List;)V

    .line 866
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addBorders(Landroid/content/Context;)V

    .line 867
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addTools(Landroid/content/Context;)V

    .line 868
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addEffects()V

    .line 869
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->createRotationFilter(Landroid/content/Context;)V

    .line 870
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->createCropFilter(Landroid/content/Context;)V

    .line 872
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getHighresManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 873
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addLooks(Landroid/content/Context;Ljava/util/List;)V

    .line 874
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetPortraitFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addPortraitLooks(Landroid/content/Context;Ljava/util/List;)V

    .line 875
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetDelicacyFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addDelicacyLooks(Landroid/content/Context;Ljava/util/List;)V

    .line 876
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mTargetMovieFilterDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addMovieLooks(Landroid/content/Context;Ljava/util/List;)V

    .line 877
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mCaptionDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addCaptions(Ljava/util/List;)V

    .line 878
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addBorders(Landroid/content/Context;)V

    .line 879
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addTools(Landroid/content/Context;)V

    .line 880
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->addEffects()V

    .line 881
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->createRotationFilter(Landroid/content/Context;)V

    .line 882
    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->createCropFilter(Landroid/content/Context;)V

    return-void
.end method

.method private tearDownPipeline()V
    .locals 1

    .line 887
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->resetStatics()V

    .line 888
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getPreviewManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->freeRSFilterScripts()V

    .line 889
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->freeRSFilterScripts()V

    .line 890
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getHighresManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->freeRSFilterScripts()V

    .line 891
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->reset()V

    .line 892
    invoke-static {}, Lcom/zui/gallery/filtershow/pipeline/CachingPipeline;->destroyRenderScriptContext()V

    return-void
.end method


# virtual methods
.method public cannotSaveImage()V
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFiltershowActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    return-void
.end method

.method public clearFilters(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mProcessingTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->getProcessingHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$3;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$3;-><init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearNvsEffectRenderCore()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mProcessingTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->getProcessingHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$1;-><init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearReplacedFilterRepresentation(Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFiltershowActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    const-string v2, "assets:/meishe20.lic"

    invoke-static {v0, v2, v1}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->init(Landroid/app/Activity;Ljava/lang/String;I)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    .line 192
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    .line 195
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearReplacedFilter mNvsEffectRenderCore is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangmeicam"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mProcessingTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->getProcessingHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$2;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService$2;-><init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public completePreviewSaveImage(Landroid/net/Uri;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 790
    iget-boolean p2, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNeedsAlive:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFiltershowActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSimpleEditAction()Z

    move-result p2

    if-nez p2, :cond_0

    .line 791
    iget-object p2, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFiltershowActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->completeSaveImage(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public completeSaveImage(Landroid/net/Uri;ZLjava/lang/String;)V
    .locals 1

    .line 823
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->isSaveFromShar(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 824
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSave is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSave:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "wangcansave"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->savePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearFilters(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 833
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNotifyMgr:Landroid/app/NotificationManager;

    iget v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNotificationId:I

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 p1, 0x1

    if-nez p2, :cond_1

    .line 835
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->stopForeground(Z)V

    .line 836
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->stopSelf()V

    return-void

    .line 839
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->stopForeground(Z)V

    .line 840
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->stopSelf()V

    .line 841
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNeedsAlive:Z

    if-eqz p1, :cond_2

    .line 843
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFiltershowActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateUIAfterServiceStarted()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 844
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFiltershowActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSimpleEditAction()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 846
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFiltershowActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    if-eqz p1, :cond_4

    .line 847
    invoke-virtual {p1, p3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->completeSaveImage(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getNvAssetManager()Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;
    .locals 2

    .line 279
    const-class v0, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    if-nez v1, :cond_0

    .line 281
    invoke-static {}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->sharedInstance()Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mActivity:Landroid/content/Context;

    invoke-static {v1}, Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;->init(Landroid/content/Context;)Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    .line 286
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    return-object v0

    :catchall_0
    move-exception v1

    .line 286
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleSaveRequest(Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Landroid/graphics/Bitmap;ZIFZ)V
    .locals 14

    move-object v0, p0

    const-string v1, "notification"

    .line 754
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNotifyMgr:Landroid/app/NotificationManager;

    .line 755
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 759
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->channelID:Ljava/lang/String;

    const-string v3, "gallery"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 760
    iget-object v2, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNotifyMgr:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 763
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->channelID:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f07015a

    .line 765
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f10013b

    .line 766
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f10013c

    .line 767
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mBuilder:Landroid/app/Notification$Builder;

    .line 769
    iget v2, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNotificationId:I

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->startForeground(ILandroid/app/Notification;)V

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 771
    invoke-virtual {p0, v1, v2}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->updateProgress(II)V

    .line 775
    iget-object v3, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mImageSavingTask:Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;

    iget-boolean v13, v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->isFromPrivacy:Z

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->saveImage(Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Landroid/graphics/Bitmap;ZIFZZ)V

    return-void
.end method

.method public initDelicacyFilters(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x3ea

    .line 263
    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->getFilterData(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mDelicacyFilterDataList:Ljava/util/ArrayList;

    .line 264
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->initEffectEnv(I)V

    return-void
.end method

.method public initMeisheFilters(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x3e8

    .line 251
    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->getFilterData(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFilterDataList:Ljava/util/ArrayList;

    .line 252
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->initEffectEnv(I)V

    return-void
.end method

.method public initMovieFilters(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x3eb

    .line 269
    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->getFilterData(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mMovieFilterDataList:Ljava/util/ArrayList;

    .line 270
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->initEffectEnv(I)V

    return-void
.end method

.method public initPortraitFilters(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x3e9

    .line 257
    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/meishefilter/AssetFxUtil;->getFilterData(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mPortraitFilterDataList:Ljava/util/ArrayList;

    .line 258
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->initEffectEnv(I)V

    return-void
.end method

.method public installAssetsPackage(Ljava/lang/String;Ljava/lang/StringBuilder;ILjava/lang/String;)Z
    .locals 7

    .line 548
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v1

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p4

    move v4, p3

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 742
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 682
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mProcessingTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    .line 683
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;-><init>(Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mImageSavingTask:Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;

    .line 684
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mUpdatePreviewTask:Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;

    .line 685
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mHighresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

    .line 686
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFullresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;

    .line 687
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;

    .line 688
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mProcessingTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mImageSavingTask:Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->add(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;)V

    .line 689
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mProcessingTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mUpdatePreviewTask:Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->add(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;)V

    .line 690
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mProcessingTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mHighresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->add(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;)V

    .line 691
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mProcessingTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFullresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->add(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;)V

    .line 692
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mProcessingTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->add(Lcom/zui/gallery/filtershow/pipeline/ProcessingTask;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 698
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->tearDownPipeline()V

    .line 699
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mProcessingTaskController:Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingTaskController;->quit()V

    const/4 v0, 0x0

    .line 701
    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFiltershowActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 746
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNeedsAlive:Z

    .line 747
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mSaving:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFiltershowActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    .line 748
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateUIAfterServiceStarted()V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14

    move-object v10, p0

    move-object v0, p1

    const/4 v1, 0x1

    .line 707
    iput-boolean v1, v10, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNeedsAlive:Z

    if-eqz v0, :cond_2

    const-string v2, "saving"

    const/4 v3, 0x0

    .line 708
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "preset"

    .line 711
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "sourceUri"

    .line 712
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "selectedUri"

    .line 713
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "destinationFile"

    .line 714
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x64

    const-string v8, "quality"

    .line 715
    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    const-string/jumbo v9, "sizeFactor"

    .line 716
    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v8

    const-string v9, "flatten"

    .line 717
    invoke-virtual {p1, v9, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-string v11, "exit"

    .line 718
    invoke-virtual {p1, v11, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string v12, "is_from_privacy"

    .line 719
    invoke-virtual {p1, v12, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->isFromPrivacy:Z

    .line 720
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v5, :cond_0

    .line 723
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v0

    :goto_0
    if-eqz v6, :cond_1

    .line 727
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    move-object v6, v0

    .line 729
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    iput-object v0, v10, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->savePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 730
    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->readJsonFromString(Ljava/lang/String;)Z

    .line 731
    iput-boolean v3, v10, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNeedsAlive:Z

    .line 732
    iput-boolean v1, v10, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mSaving:Z

    .line 733
    iget-object v12, v10, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->savePreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 734
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getHighresImage()Landroid/graphics/Bitmap;

    move-result-object v13

    move-object v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v12

    move-object v5, v13

    move v6, v9

    move v9, v11

    .line 733
    invoke-virtual/range {v0 .. v9}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->handleSaveRequest(Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Landroid/graphics/Bitmap;ZIFZ)V

    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public postFullresRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;FLandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V
    .locals 2

    .line 623
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;-><init>()V

    .line 624
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 625
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setOriginalImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 626
    invoke-virtual {v0, p2}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setScaleFactor(F)V

    .line 627
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    const/4 p1, 0x4

    .line 628
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setType(I)V

    .line 629
    invoke-virtual {v0, p5}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setCaller(Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V

    .line 630
    invoke-virtual {v0, p3}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setBounds(Landroid/graphics/Rect;)V

    .line 631
    invoke-virtual {v0, p4}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setDestination(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 632
    invoke-virtual {v1, p1, p3}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setPartialRendering(ZLandroid/graphics/Rect;)V

    .line 633
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFullresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->postRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V

    return-void
.end method

.method public postHighresRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;FLcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V
    .locals 2

    .line 609
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;-><init>()V

    .line 611
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 612
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setOriginalImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 613
    invoke-virtual {v0, p2}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setScaleFactor(F)V

    .line 614
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    const/4 p1, 0x5

    .line 615
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setType(I)V

    .line 616
    invoke-virtual {v0, p3}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->setCaller(Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V

    .line 617
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mHighresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->postRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V

    return-void
.end method

.method public postRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->postRenderingRequest(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V

    return-void
.end method

.method public setFiltershowActivity(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 1

    .line 212
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFiltershowActivity:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 213
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mActivity:Landroid/content/Context;

    .line 214
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getNvAssetManager()Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mAssetManager:Lcom/zui/gallery/filtershow/meishefilter/NvAssetManager;

    .line 216
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->initMeisheFilters(Landroid/app/Activity;)V

    .line 218
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->initPortraitFilters(Landroid/app/Activity;)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->initDelicacyFilters(Landroid/app/Activity;)V

    .line 222
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->initMovieFilters(Landroid/app/Activity;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->initCaptions(Landroid/app/Activity;)V

    .line 228
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->setupPipeline()V

    return-void
.end method

.method public setHighresPreviewScaleFactor(F)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mHighresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->setHighresPreviewScaleFactor(F)V

    return-void
.end method

.method public setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V
    .locals 1

    .line 119
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mImageSavingTask:Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 122
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mUpdatePreviewTask:Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 123
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mHighresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 124
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFullresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 125
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    return-void
.end method

.method public setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V
    .locals 1

    .line 109
    iput-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    .line 111
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mImageSavingTask:Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImageSavingTask;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 112
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mUpdatePreviewTask:Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mHighresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFullresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 115
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    return-void
.end method

.method public setOriginalBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 570
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mUpdatePreviewTask:Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 576
    :cond_1
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->setOriginal(Landroid/graphics/Bitmap;)V

    .line 577
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mHighresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->setOriginal(Landroid/graphics/Bitmap;)V

    .line 578
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFullresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->setOriginal(Landroid/graphics/Bitmap;)V

    .line 579
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->setOriginal(Landroid/graphics/Bitmap;)V

    .line 581
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p0, v0}, Lcom/zui/gallery/util/GroupUtils;->setVideoEditResImageWidth(Landroid/content/Context;I)V

    .line 582
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p0, v0}, Lcom/zui/gallery/util/GroupUtils;->setVideoEditResImageHeight(Landroid/content/Context;I)V

    .line 584
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mCaptionDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 585
    new-instance v0, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v0}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    .line 586
    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mCaptionDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    .line 587
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 588
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v0, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    .line 590
    new-instance v3, Lcom/meicam/sdk/NvsRational;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v4}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v3, v0, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    .line 591
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getCaptionEffect()Lcom/meicam/effect/sdk/NvsVideoEffectCaption;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meicam/effect/sdk/NvsVideoEffectCaption;->setVideoResolution(Lcom/meicam/sdk/NvsVideoResolution;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setOriginalBitmapHighres(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mHighresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->setOriginalBitmapHighres(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setPreviewScaleFactor(F)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mHighresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->setPreviewScaleFactor(F)V

    .line 642
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFullresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->setPreviewScaleFactor(F)V

    .line 643
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequestTask;->setPreviewScaleFactor(F)V

    return-void
.end method

.method public updateNotificationWithBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 781
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNotifyMgr:Landroid/app/NotificationManager;

    iget v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNotificationId:I

    iget-object v1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public updatePreviewBuffer()V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mHighresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/HighresRenderingRequestTask;->stop()V

    .line 599
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mFullresRenderingRequestTask:Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/FullresRenderingRequestTask;->stop()V

    .line 600
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mUpdatePreviewTask:Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/UpdatePreviewTask;->updatePreview()V

    return-void
.end method

.method public updateProgress(II)V
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 786
    iget-object p1, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNotifyMgr:Landroid/app/NotificationManager;

    iget p2, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mNotificationId:I

    iget-object v0, p0, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
