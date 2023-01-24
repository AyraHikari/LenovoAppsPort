.class public abstract Lcom/zui/gallery/app/PhotoPage;
.super Lcom/zui/gallery/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/PhotoView$Listener;
.implements Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;,
        Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;,
        Lcom/zui/gallery/app/PhotoPage$PhotoEditorCallback;,
        Lcom/zui/gallery/app/PhotoPage$ContinueSelectedTask;,
        Lcom/zui/gallery/app/PhotoPage$CloudDetailsSource;,
        Lcom/zui/gallery/app/PhotoPage$MyDetailsSource;,
        Lcom/zui/gallery/app/PhotoPage$MyMenuVisibilityListener;,
        Lcom/zui/gallery/app/PhotoPage$Model;
    }
.end annotation


# static fields
.field public static final ACTION_NEXTGEN_EDIT:Ljava/lang/String; = "action_nextgen_edit"

.field public static final ACTION_SIMPLE_EDIT:Ljava/lang/String; = "action_simple_edit"

.field private static final AUTO_ROATE_OFF:I = 0x0

.field private static final AUTO_ROATE_ON:I = 0x1

.field private static DEFALUT_VIDEO_TYPE:Ljava/lang/String; = "video/mp4"

.field private static final DOLPHIN_CLASSNAME:Ljava/lang/String; = "com.zui.camera.dolphin.DolphinResultActivity"

.field private static final DOLPHIN_PACKAGENAME:Ljava/lang/String; = "com.zui.camera.plugin.dolphin"

.field public static final ELEVEN_CLOCK:I = 0xb

.field public static final FIVE_CLOCK:I = 0x5

.field private static final GALLERY_VIDEO_INTENT:Ljava/lang/String; = "com.zui.gallery.intent.action.VIEW"

.field private static final HIDE_BARS_TIMEOUT:I = 0xdac

.field private static final INDIA_LANGUAGE:Ljava/lang/String; = "ta"

.field public static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final KEY_ALBUMPAGE_TRANSITION:Ljava/lang/String; = "albumpage-transition"

.field public static final KEY_APP_BRIDGE:Ljava/lang/String; = "app-bridge"

.field public static final KEY_CALL_FROM_CAMERA:Ljava/lang/String; = "call_from_camera"

.field public static final KEY_CONTINUOUS_HASHCODE:Ljava/lang/String; = "continuous_hashcode"

.field public static final KEY_CONTINUOUS_SHOT_SELECTION:Ljava/lang/String; = "continuous_shot_selection"

.field public static final KEY_INDEX_HINT:Ljava/lang/String; = "index-hint"

.field public static final KEY_IN_CAMERA_ROLL:Ljava/lang/String; = "in_camera_roll"

.field public static final KEY_MEDIA_ITEM_PATH:Ljava/lang/String; = "media-item-path"

.field public static final KEY_MEDIA_SET_PATH:Ljava/lang/String; = "media-set-path"

.field public static final KEY_OPEN_ANIMATION_RECT:Ljava/lang/String; = "open-animation-rect"

.field public static final KEY_READONLY:Ljava/lang/String; = "read-only"

.field public static final KEY_RETURN_INDEX_HINT:Ljava/lang/String; = "return-index-hint"

.field public static final KEY_SHOW_WHEN_LOCKED:Ljava/lang/String; = "show_when_locked"

.field public static final KEY_START_IN_FILMSTRIP:Ljava/lang/String; = "start-in-filmstrip"

.field public static final KEY_TREAT_BACK_AS_UP:Ljava/lang/String; = "treat-back-as-up"

.field public static final KEY_ThirdAppCall:Ljava/lang/String; = "key_thirdappcall"

.field public static final KEY_VIDEO_ROATEDEGRESS:Ljava/lang/String; = "video_roatedegress"

.field public static final MSG_ALBUMPAGE_NONE:I = 0x0

.field public static final MSG_ALBUMPAGE_PICKED:I = 0x4

.field public static final MSG_ALBUMPAGE_RESUMED:I = 0x2

.field public static final MSG_ALBUMPAGE_STARTED:I = 0x1

.field private static final MSG_CONTINUOUS_SHOT_MODE:I = 0x11

.field public static final MSG_FILE_ISEXIST:Ljava/lang/String; = "MSG_FILE_ISEXIST"

.field private static final MSG_HIDE_BARS:I = 0x1

.field private static final MSG_NORMAL_MODE:I = 0x12

.field private static final MSG_ON_CAMERA_CENTER:I = 0x9

.field private static final MSG_ON_FULL_SCREEN_CHANGED:I = 0x4

.field private static final MSG_REFRESH_BOTTOM_CONTROLS:I = 0x8

.field private static final MSG_REFRESH_IMAGE:I = 0xb

.field private static final MSG_SET_VIDEO_WALLPAPER_SUCCESS:I = 0x14

.field private static final MSG_UNFREEZE_GLROOT:I = 0x6

.field private static final MSG_UPDATE_ACTION_BAR:I = 0x5

.field private static final MSG_UPDATE_BAR:I = 0x13

.field private static final MSG_UPDATE_DEFERRED:I = 0xe

.field private static final MSG_UPDATE_PANORAMA_UI:I = 0x10

.field private static final MSG_UPDATE_PHOTO_UI:I = 0xc

.field private static final MSG_UPDATE_SHARE_URI:I = 0xf

.field private static final MSG_WANT_BARS:I = 0x7

.field public static final ONE_CLOCK:I = 0x1

.field public static final ORI_NORMAL:I = 0x1

.field public static final PHOTO_MENU_ADD_TO_PRIVATE:I = 0x1

.field public static final PHOTO_MENU_DETAILS:I = 0x2

.field public static final PHOTO_MENU_RECOGNITION:I = 0x3

.field public static final PHOTO_MENU_SET_IMAGE:I = 0x0

.field private static final REQUEST_CROP:I = 0x2

.field private static final REQUEST_CROP_PICASA:I = 0x3

.field public static final REQUEST_EDIT:I = 0x4

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static SD_CARD_ROOT:Ljava/lang/String; = null

.field public static final SEVEN_CLOCK:I = 0x7

.field private static final TAG:Ljava/lang/String; = "PhotoPage"

.field public static final TWELVE_CLOCK:I = 0xc

.field private static final UNFREEZE_GLROOT_TIMEOUT:I = 0xfa

.field public static mContinuousShotPage:Z = false


# instance fields
.field private final CLICKPLAYVIEDOICONINTERVAL:I

.field private backUpImageView:Landroid/widget/ImageView;

.field private backupRealLastStatus:Z

.field private cloudVideoId:Ljava/lang/String;

.field private continue_done_text:Landroid/widget/TextView;

.field private editView:Landroid/widget/TextView;

.field private editViewContainer:Landroid/widget/LinearLayout;

.field private editorChooserDialog:Landroid/app/Dialog;

.field private encryptThumbnailListner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

.field private hadPaused:Z

.field private initLeftMarginStart:I

.field private isCalledFromCamera:Z

.field private isDetailMsg:Z

.field private isEdit:Z

.field private isFavorite:Z

.field private isImageColect:Z

.field private isMuted:Z

.field private isPanoPhoto:Z

.field private isScreenShotPhoto:Z

.field private isSelfPhoto:Z

.field private isShare:Z

.field private isSupportVideoAsWallpaper:Z

.field private lastClickPlayVideoTime:J

.field private listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

.field private mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

.field private volatile mActionBarAllowed:Z

.field private mAppBridge:Lcom/zui/gallery/app/AppBridge;

.field private mApplication:Lcom/zui/gallery/app/GalleryApp;

.field private mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

.field private mConfirmDialogListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

.field private mContinueSavingDialog:Landroid/app/Dialog;

.field private mCountinueOperationDialog:Lzui/app/ActionDialog;

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

.field private mDayMonthSwitchImageView:Landroid/widget/ImageView;

.field private mDeferUpdateUntil:J

.field private mDeleteIsFocus:Z

.field private mDeletePath:Lcom/zui/gallery/data/Path;

.field private mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

.field private mHandler:Landroid/os/Handler;

.field private mHasCameraScreennailOrPlaceholder:Z

.field private mHaveImageEditor:Z

.field private mIsActive:Z

.field private mIsCanSlidShow:Z

.field private mIsCloudImage:Z

.field mIsContinuousMode:Z

.field private mIsMenuVisible:Z

.field private mIsThridAppCall:Z

.field private mLeftText:Landroid/widget/TextView;

.field private mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

.field private mLivePhotoContainer:Landroid/view/View;

.field private mLoadingVisible:Z

.field private mMediaSet:Lcom/zui/gallery/data/FilterDeleteSet;

.field private mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

.field private mMicroVideoInfo:Landroid/widget/TextView;

.field private mMicroVideoPlayBtn:Lcom/zui/gallery/ui/microvideo/CustomCircleView;

.field private mMircoVideoContainer:Landroid/widget/LinearLayout;

.field private mModel:Lcom/zui/gallery/app/PhotoPage$Model;

.field private mMoreDialog:Lzui/app/ActionDialog;

.field private mOrientationManager:Lcom/zui/gallery/app/OrientationManager;

.field private mOriginalSetPathString:Ljava/lang/String;

.field private mPhotoView:Lcom/zui/gallery/ui/PhotoView;

.field private mPornPicture:Z

.field private mProgressDialog:Lzui/app/ProgressDialogX;

.field private mProgressDialogX:Lzui/app/ProgressDialogX;

.field private mReadOnlyView:Z

.field private mRecenterCameraOnResume:Z

.field private mRightTextView:Landroid/widget/TextView;

.field private final mRootPane:Lcom/zui/gallery/ui/GLView;

.field private mScreenNailItem:Lcom/zui/gallery/data/SnailItem;

.field private mScreenNailSet:Lcom/zui/gallery/data/SnailAlbum;

.field private mSecureAlbum:Lcom/zui/gallery/data/SecureAlbum;

.field private mSelectImageView:Landroid/widget/ImageView;

.field private mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private mSetPathString:Ljava/lang/String;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mSkipUpdateCurrentPhoto:Z

.field private mStartInFilmstrip:Z

.field private mTitleBarLeftContainer:Landroid/widget/LinearLayout;

.field private mTitleBarRightContainer:Landroid/widget/LinearLayout;

.field private mTreatBackAsUp:Z

.field private mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

.field private nfcBeamUriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

.field private noNeedToReload:Z

.field private original_head_bg:Landroid/graphics/drawable/Drawable;

.field private queryMotoralMediaTypeTask:Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;

.field private reverseGeocoder:Lcom/zui/gallery/util/ReverseGeocoder;

.field private settingView:Landroid/widget/ImageView;

.field private startToSetting:Z

.field private status_bar_color:I

.field private time_day:Landroid/widget/TextView;

.field private time_hour:Landroid/widget/TextView;

.field public topMargin:I

.field private videoView:Lcom/zui/gallery/ui/microvideo/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    const/4 v1, 0x0

    .line 283
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mLoadingVisible:Z

    .line 304
    iput v1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    const/4 v2, 0x1

    .line 308
    iput-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    .line 310
    iput-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActionBarAllowed:Z

    .line 316
    iput-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mHaveImageEditor:Z

    .line 322
    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    .line 334
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mReadOnlyView:Z

    .line 350
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    .line 352
    iput-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 355
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    .line 357
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsThridAppCall:Z

    .line 362
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    const-wide v2, 0x7fffffffffffffffL

    .line 364
    iput-wide v2, p0, Lcom/zui/gallery/app/PhotoPage;->mDeferUpdateUntil:J

    const/16 v0, 0x2bc

    .line 387
    iput v0, p0, Lcom/zui/gallery/app/PhotoPage;->CLICKPLAYVIEDOICONINTERVAL:I

    .line 394
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isSelfPhoto:Z

    .line 395
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isScreenShotPhoto:Z

    .line 396
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isPanoPhoto:Z

    .line 397
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isImageColect:Z

    .line 415
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isCalledFromCamera:Z

    .line 433
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isDetailMsg:Z

    .line 436
    new-instance v0, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$hx0MTz3iejegFltPTzaDhjEXDRo;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$hx0MTz3iejegFltPTzaDhjEXDRo;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

    .line 443
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isEdit:Z

    .line 444
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isFavorite:Z

    .line 445
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isShare:Z

    .line 446
    iput v1, p0, Lcom/zui/gallery/app/PhotoPage;->topMargin:I

    .line 475
    new-instance v0, Lcom/zui/gallery/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PhotoPage$1;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    .line 2297
    new-instance v0, Lcom/zui/gallery/app/PhotoPage$6;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PhotoPage$6;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mConfirmDialogListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    .line 2856
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->noNeedToReload:Z

    .line 3414
    iput v1, p0, Lcom/zui/gallery/app/PhotoPage;->initLeftMarginStart:I

    .line 3730
    new-instance v0, Lcom/zui/gallery/app/PhotoPage$10;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PhotoPage$10;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

    .line 3963
    new-instance v0, Lcom/zui/gallery/app/PhotoPage$12;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PhotoPage$12;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->encryptThumbnailListner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

    .line 4105
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isSupportVideoAsWallpaper:Z

    .line 4228
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->startToSetting:Z

    .line 5002
    new-instance v0, Lcom/zui/gallery/app/PhotoPage$24;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PhotoPage$24;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->nfcBeamUriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 5503
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isMuted:Z

    return-void
.end method

.method static synthetic access$002(Lcom/zui/gallery/app/PhotoPage;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/AppBridge;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateBars()V

    return-void
.end method

.method static synthetic access$1200(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->wantBars()V

    return-void
.end method

.method static synthetic access$1300(Lcom/zui/gallery/app/PhotoPage;)J
    .locals 2

    .line 165
    iget-wide v0, p0, Lcom/zui/gallery/app/PhotoPage;->mDeferUpdateUntil:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateUIForCurrentPhoto()V

    return-void
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/zui/gallery/app/PhotoPage;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mSkipUpdateCurrentPhoto:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/FilterDeleteSet;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->mMediaSet:Lcom/zui/gallery/data/FilterDeleteSet;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->launchCamera()V

    return-void
.end method

.method static synthetic access$1800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPage$Model;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/MediaItem;Z)V
    .locals 0

    .line 165
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/PhotoPage;->updateCurrentPhoto(Lcom/zui/gallery/data/MediaItem;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/PhotoView;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    return-object p0
.end method

.method static synthetic access$2000(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 0

    .line 165
    invoke-static {p0}, Lcom/zui/gallery/app/PhotoPage;->createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lcom/zui/gallery/data/MediaObject;)Landroid/content/Intent;
    .locals 0

    .line 165
    invoke-static {p0}, Lcom/zui/gallery/app/PhotoPage;->createShareIntent(Lcom/zui/gallery/data/MediaObject;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/zui/gallery/app/PhotoPage;Z)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->updatePanoramaUI(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/SelectionManager;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/zui/gallery/app/PhotoPage;Z)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->showOrDismissProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/zui/gallery/app/PhotoPage;)I
    .locals 0

    .line 165
    iget p0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    return p0
.end method

.method static synthetic access$2502(Lcom/zui/gallery/app/PhotoPage;I)I
    .locals 0

    .line 165
    iput p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$2600(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/zui/gallery/app/PhotoPage;)Lzui/app/ProgressDialogX;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoPage;->isEdit:Z

    return p0
.end method

.method static synthetic access$2802(Lcom/zui/gallery/app/PhotoPage;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->isEdit:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/zui/gallery/app/PhotoPage;)Ljava/lang/String;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->cloudVideoId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/PhotoPage;)Landroid/os/Handler;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->launchPhotoEditor()V

    return-void
.end method

.method static synthetic access$3100(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoPage;->isFavorite:Z

    return p0
.end method

.method static synthetic access$3102(Lcom/zui/gallery/app/PhotoPage;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->isFavorite:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/Path;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->addFavoriteGroup(Lcom/zui/gallery/data/Path;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoPage;->isShare:Z

    return p0
.end method

.method static synthetic access$3302(Lcom/zui/gallery/app/PhotoPage;Z)Z
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->isShare:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsActive:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    return-void
.end method

.method static synthetic access$3600(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateHeadRoot()V

    return-void
.end method

.method static synthetic access$3700(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->share()V

    return-void
.end method

.method static synthetic access$3800(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->createConfirmDialog()V

    return-void
.end method

.method static synthetic access$3900(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowDetails:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$4300(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoPage;->isDetailMsg:Z

    return p0
.end method

.method static synthetic access$4400(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showDetails()V

    return-void
.end method

.method static synthetic access$4500(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->setAs()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4600(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->downloadCloudImage()V

    return-void
.end method

.method static synthetic access$4700(Lcom/zui/gallery/app/PhotoPage;Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->startAddToPrivacyGroup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->doFavorite()V

    return-void
.end method

.method static synthetic access$4900(Lcom/zui/gallery/app/PhotoPage;Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->addFileInfoToSqlite(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/ui/DetailsHelper;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->encryptThumbnailListner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoPage;->isSupportVideoAsWallpaper:Z

    return p0
.end method

.method static synthetic access$5300(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->setVideoAsWallpaper()V

    return-void
.end method

.method static synthetic access$5500(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/LocalImage;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->autoPlayMicroVideo(Lcom/zui/gallery/data/LocalImage;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->launchMicroVideoEditor()V

    return-void
.end method

.method static synthetic access$5700(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsThridAppCall:Z

    return p0
.end method

.method static synthetic access$5800(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->onUpPressed()V

    return-void
.end method

.method static synthetic access$5900(Lcom/zui/gallery/app/PhotoPage;I)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->showMessageDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideBars()V

    return-void
.end method

.method static synthetic access$6000(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->closeCountinueSavingDialog()V

    return-void
.end method

.method static synthetic access$6100(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/LocalImage;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->playMicroVideoIfNeeded(Lcom/zui/gallery/data/LocalImage;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/zui/gallery/app/PhotoPage;)Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    return p0
.end method

.method static synthetic access$6300(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/util/ReverseGeocoder;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->reverseGeocoder:Lcom/zui/gallery/util/ReverseGeocoder;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/zui/gallery/app/PhotoPage;)Landroid/widget/TextView;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->time_day:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/zui/gallery/app/PhotoPage;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->customizeLayout()V

    return-void
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$702(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/MediaItem;)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/PhotoPage;)Lcom/zui/gallery/app/PhotoPageBottomControls;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/MediaItem;)Z
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->isWeixinWideo(Lcom/zui/gallery/data/MediaItem;)Z

    move-result p0

    return p0
.end method

.method private addFavoriteGroup(Lcom/zui/gallery/data/Path;)V
    .locals 5

    .line 1383
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    .line 1384
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaObject;->isMediaSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1385
    move-object v1, v0

    check-cast v1, Lcom/zui/gallery/data/MediaSet;

    .line 1386
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1387
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->isExistInFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 1390
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1391
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->isExistInFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 1395
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/app/PhotoPageBottomControls;->setImageView(Z)V

    .line 1397
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    if-eqz v2, :cond_1

    const v4, 0x7f10020e

    goto :goto_1

    :cond_1
    const v4, 0x7f100030

    :goto_1
    invoke-virtual {v3, v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 1399
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/zui/gallery/data/GroupBucketHelper;->deleteFromFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_2

    .line 1401
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1402
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaObject;->getMediaType()I

    move-result v0

    .line 1401
    invoke-static {v2, v1, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->addToFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;

    .line 1404
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->avatarVideoOrPic(Lcom/zui/gallery/data/Path;)V

    .line 1406
    :goto_2
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1, v3}, Lcom/zui/gallery/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private addFileInfoToSqlite(Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    .line 3782
    iget-object v1, v0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    iget-boolean v5, v1, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    .line 3783
    iget-object v1, v0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    const-string v1, "/"

    invoke-static {v1}, Lcom/zui/gallery/data/Path;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3784
    array-length v2, v1

    const-string v3, ""

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, -0x2

    .line 3796
    aget-object v1, v1, v2

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v3

    .line 3800
    :goto_0
    iget-object v1, v0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v1

    .line 3803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "title = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "wangcanprovider"

    invoke-static {v7, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    .line 3804
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    const/4 v2, 0x5

    .line 3807
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 3808
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 3810
    :cond_1
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    move v8, v2

    const/4 v2, 0x6

    .line 3812
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 3813
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    .line 3815
    :cond_2
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    move v10, v2

    .line 3818
    iget-object v2, v0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v23

    const/16 v2, 0xa

    .line 3819
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/16 v2, 0x64

    .line 3821
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_3

    move-object/from16 v16, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v2

    :goto_3
    const/16 v2, 0x65

    .line 3822
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    move-object/from16 v17, v3

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    :goto_4
    const/16 v2, 0x66

    .line 3823
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/data/MediaDetails$FlashState;

    const/16 v2, 0x67

    .line 3824
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    :goto_5
    move-wide/from16 v18, v11

    const/16 v2, 0x68

    .line 3825
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_6

    move-object/from16 v20, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v20, v2

    :goto_6
    const/16 v2, 0x69

    .line 3826
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7

    move-object/from16 v21, v3

    goto :goto_7

    :cond_7
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v21, v2

    :goto_7
    const/16 v2, 0x6b

    .line 3827
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_8

    move-object/from16 v25, v3

    goto :goto_8

    :cond_8
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v25, v2

    :goto_8
    const/16 v2, 0x6c

    .line 3828
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_9

    move-object/from16 v26, v3

    goto :goto_9

    :cond_9
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v26, v2

    :goto_9
    const/16 v2, 0xc8

    .line 3829
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    .line 3836
    iget-object v1, v0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/gallery/app/PhotoPage;->getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    move/from16 v24, v1

    .line 3837
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOrientation is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wangmmmm"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3838
    iget-object v1, v0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const/4 v9, 0x0

    const/16 v22, 0x0

    const-string/jumbo v15, "state"

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move v8, v10

    move-wide v10, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    move-object/from16 v16, v21

    move-wide/from16 v17, v18

    move-object/from16 v19, v20

    move-object/from16 v20, v25

    move-object/from16 v21, v26

    invoke-static/range {v2 .. v24}, Lcom/zui/gallery/util/GalleryUtils;->insertPrivacyDB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method private adjustColor()V
    .locals 3

    .line 5221
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->time_day:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 5222
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f05016a

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5224
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateColor()V

    return-void
.end method

.method private autoPlayMicroVideo(Lcom/zui/gallery/data/LocalImage;)V
    .locals 4

    .line 2710
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    if-eqz p1, :cond_2

    .line 2713
    iget-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v1, :cond_0

    .line 2714
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    goto :goto_0

    .line 2716
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideBars()V

    .line 2718
    :goto_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->getMicroVideoInfo()Lcom/zui/gallery/data/MicroVideoInfo;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 2719
    invoke-virtual {v0}, Lcom/zui/gallery/ui/microvideo/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/microvideo/VideoView;->isSameMicroVideo(Lcom/zui/gallery/data/MicroVideoInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "PhotoPage"

    const-string v0, "micoVieo already playing"

    .line 2720
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 2722
    new-instance v1, Lcom/zui/gallery/ui/microvideo/VideoView;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/GLRootView;

    invoke-direct {v1, p1, v2, v3}, Lcom/zui/gallery/ui/microvideo/VideoView;-><init>(Lcom/zui/gallery/data/MicroVideoInfo;Landroid/content/res/Resources;Lcom/zui/gallery/ui/GLRootView;)V

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    .line 2724
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/PhotoView;->startPlayMicroVideo(Lcom/zui/gallery/ui/microvideo/VideoView;)V

    if-eqz v0, :cond_2

    .line 2726
    invoke-virtual {v0}, Lcom/zui/gallery/ui/microvideo/VideoView;->stop()V

    :cond_2
    :goto_1
    return-void
.end method

.method private avatarShare(Landroid/content/Intent;)V
    .locals 4

    .line 1254
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 1255
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v3, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v0, v3, v2, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    .line 1257
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "video/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1258
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_SHARE:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {p1, v0, v2, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private avatarVideoOrPic(Lcom/zui/gallery/data/Path;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1414
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 1415
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v3, Lcom/zui/gallery/util/AvatarUtils$Action;->PHOTO_COLLECT:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v0, v3, v2, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    .line 1417
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1418
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_COLLECT:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {p1, v0, v2, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private canShowBars()Z
    .locals 3

    .line 2149
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    if-nez v0, :cond_0

    return v1

    .line 2153
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActionBarAllowed:Z

    if-nez v0, :cond_1

    return v1

    .line 2156
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2157
    iget v0, v0, Landroid/content/res/Configuration;->touchscreen:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private canVideoEdit(Lcom/zui/gallery/data/MediaItem;)Z
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 4448
    instance-of v1, p1, Lcom/zui/gallery/data/LocalMediaItem;

    const/16 v2, 0x13

    const-string v3, "bugMark"

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    .line 4449
    move-object v1, p1

    check-cast v1, Lcom/zui/gallery/data/LocalMediaItem;

    .line 4452
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v7

    if-ne v7, v4, :cond_2

    invoke-virtual {v1}, Lcom/zui/gallery/data/LocalMediaItem;->getBucketId()I

    move-result v7

    sget v8, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_VIDEO_ID:I

    if-ne v7, v8, :cond_2

    .line 4455
    :try_start_0
    iget-object v7, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/zui/gallery/database/GalleryContract$ShadowVideoShips;->PROJECTIONS:[Ljava/lang/String;

    const-string v11, "_data=? "

    new-array v12, v6, [Ljava/lang/String;

    .line 4456
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v0

    const/4 v13, 0x0

    .line 4455
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 4457
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x2

    .line 4458
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v7, v2, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    if-eqz v5, :cond_3

    .line 4467
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 4469
    :cond_1
    throw p1

    :catch_0
    if-eqz v5, :cond_2

    .line 4467
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    move v7, v0

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-string v5, " canVideoEdit mediaItem=null"

    .line 4474
    invoke-static {v3, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v5, v1

    goto :goto_3

    :cond_5
    move v7, v0

    :goto_3
    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    const-string v1, " canVideoEdit item == null"

    .line 4484
    invoke-static {v3, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-eqz p1, :cond_7

    .line 4488
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_9

    .line 4489
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_9

    .line 4490
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_9

    .line 4491
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    const/16 v3, 0xb

    if-eq v1, v3, :cond_9

    .line 4492
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    if-eq v1, v2, :cond_9

    :cond_7
    if-eqz v5, :cond_8

    .line 4493
    invoke-virtual {v5}, Lcom/zui/gallery/data/LocalMediaItem;->is360ModVideo()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez v7, :cond_9

    .line 4494
    :cond_8
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    if-eq v1, v4, :cond_9

    .line 4495
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result p1

    const/16 v1, 0x12

    if-ne p1, v1, :cond_a

    :cond_9
    move v0, v6

    :cond_a
    return v0
.end method

.method private checkAndGetDescDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4260
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4261
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 4262
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4263
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 4265
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private cleanBestSelectPhoto()V
    .locals 3

    .line 5094
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    instance-of v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/zui/gallery/app/PhotoDataAdapter;

    .line 5095
    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoDataAdapter;->isContinuousShotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5096
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/zui/gallery/app/PhotoPage$Model;->cleanSelectedItem()V

    .line 5098
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSourceMediaSet()Lcom/zui/gallery/data/MediaSet;

    move-result-object v0

    .line 5100
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 5101
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    .line 5102
    iput-boolean v2, v1, Lcom/zui/gallery/data/MediaItem;->isSelected:Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private closeContinuousSelection()V
    .locals 1

    const/4 v0, 0x0

    .line 1755
    sput-boolean v0, Lcom/zui/gallery/app/PhotoPage;->mContinuousShotPage:Z

    return-void
.end method

.method private closeCountinueSavingDialog()V
    .locals 1

    .line 4997
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mContinueSavingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4998
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mContinueSavingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private cloudPhotoOrVideoDownloadAuatar()V
    .locals 5

    .line 1600
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloud/image"

    .line 1601
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 1602
    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v4, Lcom/zui/gallery/util/AvatarUtils$Action;->CLOUD_PHOTO_DOWNLOAD:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v1, v4, v3, v2}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_0
    const-string v1, "cloud/video"

    .line 1604
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1605
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->CLOUD_VIDEO_DOWNLOAD:Lcom/zui/gallery/util/AvatarUtils$Action;

    invoke-static {v0, v1, v3, v2}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private createConfirmDialog()V
    .locals 6

    const-string v0, "PhotoPage"

    const-string v1, "createConfirmDialog"

    .line 4270
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4271
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4272
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 4286
    :cond_0
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10022c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 4288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4290
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f10021e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v5

    aput-object v2, v4, v3

    .line 4296
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->getActionDialogBuilder(Landroid/app/Activity;)Lzui/app/ActionDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/PhotoPage$17;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/PhotoPage$17;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    .line 4297
    invoke-virtual {v1, v4, v2}, Lzui/app/ActionDialog$Builder;->setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/PhotoPage$16;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/PhotoPage$16;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    .line 4328
    invoke-virtual {v1, v0, v2}, Lzui/app/ActionDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/PhotoPage$15;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoPage$15;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    .line 4336
    invoke-virtual {v0, v1}, Lzui/app/ActionDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    .line 4342
    invoke-virtual {v0}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCountinueOperationDialog:Lzui/app/ActionDialog;

    .line 4343
    invoke-virtual {v0}, Lzui/app/ActionDialog;->show()V

    return-void
.end method

.method private static createShareIntent(Lcom/zui/gallery/data/MediaObject;)Landroid/content/Intent;
    .locals 3

    .line 1423
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaObject;->getMediaType()I

    move-result v0

    .line 1424
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/zui/gallery/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1425
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x1

    .line 1426
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static createSharePanoramaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .line 1430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.google.panorama360+jpg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    .line 1431
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x1

    .line 1432
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private customizeLayout()V
    .locals 2

    .line 5289
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->time_hour:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5298
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5299
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    iput v1, p0, Lcom/zui/gallery/app/PhotoPage;->initLeftMarginStart:I

    const/4 v1, 0x0

    .line 5301
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 5302
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private delayUpdateHeadRoot()V
    .locals 4

    .line 5182
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5183
    new-instance v1, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$uq5CLAo2M3nCJT0hUApHYHv17Do;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/-$$Lambda$PhotoPage$uq5CLAo2M3nCJT0hUApHYHv17Do;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private doEditor()V
    .locals 7

    .line 5022
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5024
    :cond_0
    check-cast v0, Lcom/zui/gallery/data/LocalMediaItem;

    .line 5025
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalMediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 5027
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalMediaItem;->is360ModImage()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->enableMod360Editor()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    .line 5029
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalMediaItem;->isLayerImage()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->enableLayerEditer()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    .line 5031
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalMediaItem;->isPortraitImage()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->enablePortraitEditor()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    goto :goto_0

    :cond_3
    move v3, v4

    .line 5034
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moto_media_type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PhotoPage"

    invoke-static {v6, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v3, v4, :cond_4

    .line 5036
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v1, Lcom/zui/gallery/app/PhotoPage$25;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoPage$25;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-static {v0, v3, v2, v1}, Lcom/zui/gallery/util/GalleryUtils;->showImageEditorChooser(Landroid/app/Activity;ILandroid/net/Uri;Lcom/zui/gallery/app/PhotoPage$PhotoEditorCallback;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->editorChooserDialog:Landroid/app/Dialog;

    goto :goto_1

    .line 5042
    :cond_4
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalMediaItem;->is360ModVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->enableMod360Editor()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5043
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0, v2, v1}, Lcom/zui/gallery/util/GalleryUtils;->start360ModeEditor(Landroid/app/Activity;Landroid/net/Uri;Z)V

    goto :goto_1

    .line 5045
    :cond_5
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->launchPhotoEditor()V

    :goto_1
    return-void
.end method

.method private doFavorite()V
    .locals 3

    .line 1326
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    instance-of v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1327
    check-cast v0, Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    goto :goto_0

    .line 1329
    :cond_0
    invoke-interface {v0, v2}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    .line 1332
    :goto_0
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 1336
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->addFavoriteGroup(Lcom/zui/gallery/data/Path;)V

    return-void
.end method

.method private downloadCloudImage()V
    .locals 6

    .line 1538
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudManager;->isDownloadAutoSyncAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f100085

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1540
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isShare:Z

    .line 1541
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isEdit:Z

    .line 1542
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isFavorite:Z

    return-void

    .line 1546
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->cloudPhotoOrVideoDownloadAuatar()V

    .line 1547
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0x3200000

    add-long/2addr v2, v4

    .line 1548
    invoke-static {}, Lcom/zui/gallery/util/FileSizeUtils;->getAvailableExternalMemorySize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 1549
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f100080

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1550
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isShare:Z

    .line 1551
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isEdit:Z

    .line 1552
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isFavorite:Z

    return-void

    .line 1555
    :cond_1
    new-instance v0, Lzui/app/ProgressDialogX;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v0, v2}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    .line 1557
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mIsCloudImage:Z

    if-eqz v2, :cond_2

    .line 1558
    check-cast v0, Lcom/zui/gallery/data/CloudImage;

    .line 1559
    invoke-virtual {v0}, Lcom/zui/gallery/data/CloudImage;->isCloudVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 1563
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f10007a

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1564
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f100079

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1565
    :goto_1
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {v2, v0}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 1566
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 1567
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    .line 1568
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    instance-of v1, v0, Lcom/zui/gallery/data/CloudImage;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/zui/gallery/data/CloudImage;

    invoke-virtual {v0}, Lcom/zui/gallery/data/CloudImage;->isCloudVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1569
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->cloudVideoId:Ljava/lang/String;

    .line 1571
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photoid is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->cloudVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcancloud"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    new-instance v0, Lcom/zui/gallery/app/PhotoPage$5;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PhotoPage$5;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    .line 1594
    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPage$5;->start()V

    return-void
.end method

.method private favoriteEnable()Z
    .locals 5

    .line 1301
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isSoftwareForHW()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1304
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsThridAppCall:Z

    .line 1307
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    instance-of v2, v2, Lcom/zui/gallery/data/LocalMediaItem;

    if-eqz v2, :cond_1

    move v0, v1

    .line 1311
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    .line 1312
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content://mms/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    if-eqz v2, :cond_4

    instance-of v2, v2, Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    if-eqz v2, :cond_4

    :cond_3
    move v0, v3

    .line 1316
    :cond_4
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    return v1

    .line 1319
    :cond_5
    iget-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    move v1, v3

    :cond_6
    return v1
.end method

.method private getBestChoicePath(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1, v0}, Lcom/zui/gallery/util/GalleryUtils;->getBestChoice(Ljava/util/ArrayList;Landroid/app/Activity;)I

    move-result p1

    return p1
.end method

.method private static getMediaTypeString(Lcom/zui/gallery/data/MediaItem;)Ljava/lang/String;
    .locals 2

    .line 3276
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string p0, "Video"

    return-object p0

    .line 3278
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string p0, "Photo"

    return-object p0

    .line 3281
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetadataOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10

    const-string v0, "Failed to close InputStream"

    const-string/jumbo v1, "wangcanoror"

    if-eqz p1, :cond_9

    if-eqz p0, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3864
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "orientation"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_3

    .line 3867
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    .line 3868
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v6, "wangmmmm"

    .line 3869
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ori is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p0, 0x5a

    if-eq v5, p0, :cond_2

    const/16 p0, 0xb4

    if-eq v5, p0, :cond_1

    const/16 p0, 0x10e

    if-eq v5, p0, :cond_0

    .line 3888
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v3

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return p0

    :cond_1
    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    const/4 p0, 0x6

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v2}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 3889
    throw p0

    :catch_0
    move-object v4, v2

    .line 3888
    :catch_1
    :cond_3
    invoke-static {v4}, Lcom/zui/gallery/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 3890
    new-instance v4, Lcom/zui/gallery/exif/ExifInterface;

    invoke-direct {v4}, Lcom/zui/gallery/exif/ExifInterface;-><init>()V

    :try_start_2
    const-string v5, "file"

    .line 3894
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3895
    invoke-static {p1}, Lcom/zui/gallery/app/PhotoPage;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string v5, "image/jpeg"

    .line 3896
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v3

    .line 3899
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 3900
    invoke-virtual {v4, p0}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    goto :goto_2

    .line 3902
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 3903
    invoke-virtual {v4, v2}, Lcom/zui/gallery/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 3905
    :goto_2
    invoke-static {v4}, Lcom/zui/gallery/app/PhotoPage;->parseExif(Lcom/zui/gallery/exif/ExifInterface;)I

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_6

    .line 3911
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 3914
    invoke-static {v1, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return p0

    :catchall_2
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p0

    :try_start_4
    const-string p1, "Failed to read EXIF orientation"

    .line 3907
    invoke-static {v1, p1, p0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_7

    .line 3911
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 3914
    invoke-static {v1, v0, p0}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_4
    return v3

    :goto_5
    if-eqz v2, :cond_8

    .line 3911
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 3914
    invoke-static {v1, v0, p1}, Lcom/zui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3916
    :cond_8
    :goto_6
    throw p0

    .line 3858
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad argument to getOrientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 3942
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3945
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private hideBars()V
    .locals 4

    .line 2091
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2093
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    .line 2097
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/PhotoView;->setFullScreenBrowse(Z)V

    .line 2099
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideBarsModifyBgColors()V

    .line 2104
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2107
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2108
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/zui/gallery/ui/GLRoot;->setLightsOutMode(Z)V

    .line 2111
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x400

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 2116
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_3

    .line 2117
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2118
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2119
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2122
    :cond_3
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->resetNavigationBarMargin()V

    .line 2124
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->hideHeaderWithoutAnimation()V

    .line 2127
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2128
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 2130
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideBarsModifyBgColors()V

    .line 2135
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->updateLivePhotoIconView(Z)V

    return-void
.end method

.method private hideBarsModifyBgColors()V
    .locals 2

    .line 2007
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2008
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 2013
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateColor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private hideDetails()V
    .locals 1

    const/4 v0, 0x0

    .line 2387
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowDetails:Z

    .line 2388
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/DetailsHelper;->hide()V

    return-void
.end method

.method private initTitleBar()V
    .locals 4

    .line 4513
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->original_head_bg:Landroid/graphics/drawable/Drawable;

    .line 4514
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08036f

    .line 4515
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarLeftContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f08036d

    .line 4516
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->time_day:Landroid/widget/TextView;

    .line 4517
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06034b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f08036e

    .line 4518
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->time_hour:Landroid/widget/TextView;

    .line 4519
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->time_day:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4520
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->time_hour:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4521
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->time_hour:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f080370

    .line 4522
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0802ce

    .line 4523
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mRightTextView:Landroid/widget/TextView;

    .line 4524
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarLeftContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f080214

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    .line 4525
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarLeftContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f080215

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mLeftText:Landroid/widget/TextView;

    .line 4526
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0800f4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->continue_done_text:Landroid/widget/TextView;

    .line 4527
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0802cd

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mDayMonthSwitchImageView:Landroid/widget/ImageView;

    .line 4528
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0802ca

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectImageView:Landroid/widget/ImageView;

    .line 4529
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0802cb

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->settingView:Landroid/widget/ImageView;

    const v1, 0x7f080243

    .line 4530
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMircoVideoContainer:Landroid/widget/LinearLayout;

    .line 4531
    new-instance v1, Lcom/zui/gallery/app/PhotoPage$18;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoPage$18;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4542
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getLivePhotoView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mLivePhotoContainer:Landroid/view/View;

    .line 4543
    new-instance v1, Lcom/zui/gallery/app/PhotoPage$19;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoPage$19;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4549
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMircoVideoContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f080241

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/microvideo/CustomCircleView;

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMicroVideoPlayBtn:Lcom/zui/gallery/ui/microvideo/CustomCircleView;

    .line 4550
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMircoVideoContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f080242

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMicroVideoInfo:Landroid/widget/TextView;

    .line 4551
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    if-eqz v0, :cond_0

    .line 4552
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4553
    invoke-virtual {p0, v3}, Lcom/zui/gallery/app/PhotoPage;->setTitleInfo(I)V

    .line 4555
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->updateTitleBarVisibility(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private isDeleteFileHasAddFile()Z
    .locals 7

    const/4 v0, 0x0

    .line 4369
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4370
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4371
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4372
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/Path;

    .line 4373
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v3

    .line 4374
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaObject;->isMediaSet()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "\',"

    const-string v6, "\'"

    if-eqz v4, :cond_1

    .line 4375
    :try_start_1
    check-cast v3, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4377
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/gallery/data/GroupBucketHelper;->sqliteEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4380
    :cond_1
    check-cast v3, Lcom/zui/gallery/data/MediaItem;

    if-eqz v3, :cond_0

    .line 4382
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/gallery/data/GroupBucketHelper;->sqliteEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4386
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 4387
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4389
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4390
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4389
    invoke-static {v1, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->isExistInGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "PhotoPage"

    const-string v3, "isDeleteFileHasAddFile exception "

    .line 4393
    invoke-static {v2, v3, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return v0
.end method

.method private isDeleteFolderHasAddFileForFloatDialog(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 4405
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4407
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4408
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 4409
    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4408
    invoke-static {v2}, Lcom/zui/gallery/data/GroupBucketHelper;->getAllGroupMemberShipFile(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4411
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 4412
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\'"

    .line 4413
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4415
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    .line 4416
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4417
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4418
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4417
    invoke-static {v3, p1, v1}, Lcom/zui/gallery/data/BucketHelper;->isFileExitInMediaStore(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    move v0, p1

    .line 4420
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "PhotoPage"

    const-string v2, "isDeleteFolderHasAddFile exception "

    .line 4423
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v0
.end method

.method private isInstalledPolaroidApp()Z
    .locals 3

    .line 4060
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 4061
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4062
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4064
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4065
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 4066
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.polaroid.printermod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSlowVideo()Z
    .locals 3

    .line 2825
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 2829
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isVideo(Lcom/zui/gallery/data/MediaItem;)Z
    .locals 2

    .line 4430
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 4431
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 4432
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 4433
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 4434
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    .line 4435
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 4436
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    .line 4437
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 4438
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/gif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4439
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isWeixinWideo(Lcom/zui/gallery/data/MediaItem;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 4504
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private launchCamera()V
    .locals 1

    const/4 v0, 0x0

    .line 1441
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 1442
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    return-void
.end method

.method private launchContinuousSelection()V
    .locals 5

    .line 1728
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1729
    instance-of v2, v0, Lcom/zui/gallery/data/LocalImage;

    if-eqz v2, :cond_0

    .line 1730
    check-cast v0, Lcom/zui/gallery/data/LocalImage;

    .line 1736
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalImage;->getBucketId()I

    move-result v2

    .line 1737
    sget-object v3, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v2

    .line 1740
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    .line 1741
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1742
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1743
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    const-string v4, "continuous_shot_selection"

    .line 1744
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1745
    invoke-virtual {v2}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "media-set-path"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v2, "continuous_hashcode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1749
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->hide()V

    .line 1750
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/zui/gallery/app/ContinuousSelectionPage;

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private launchFocusActivity()V
    .locals 8

    .line 1447
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    .line 1452
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 1456
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v4}, Lcom/zui/gallery/app/PhotoPage$Model;->isSelfAlbum()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    move v1, v5

    .line 1461
    :cond_0
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v4, v4, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    if-eqz v4, :cond_1

    .line 1462
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v6, 0x2

    .line 1463
    invoke-virtual {v4, v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 1467
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "action_focus_activity"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1468
    iget-object v6, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class v7, Lcom/zui/gallery/filtershow/FocusActivity;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1469
    sget-object v6, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    iget-object v7, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v7, v7, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1470
    sget-object v6, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    iget-object v7, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNeedHightBright()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1472
    sget-object v6, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SELF:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/zui/gallery/app/PhotoPage;->isSelfPhoto:Z

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1473
    sget-object v6, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREENSHOT:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/zui/gallery/app/PhotoPage;->isScreenShotPhoto:Z

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1474
    sget-object v6, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_PANAPHOTO:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/zui/gallery/app/PhotoPage;->isPanoPhoto:Z

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1476
    sget-object v6, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_PANO:Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1477
    sget-object v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->GROUP_ID:Ljava/lang/String;

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1478
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1481
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v0

    const-string v1, "launch-fullscreen"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1482
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchMicroVideoEditor()V
    .locals 8

    .line 1610
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->isMicoVideoImage(I)Z

    move-result v0

    .line 1611
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v2, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 1614
    move-object v0, v2

    check-cast v0, Lcom/zui/gallery/data/LocalImage;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalImage;->getMicroVideoInfo()Lcom/zui/gallery/data/MicroVideoInfo;

    move-result-object v0

    .line 1615
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class v5, Lcom/zui/gallery/app/MicroVideoTrimActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1616
    sget-object v4, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v5, v5, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1617
    sget-object v4, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNeedHightBright()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1618
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "video_roatedegress"

    .line 1619
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "media-item-path"

    .line 1620
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1621
    iget-wide v4, v0, Lcom/zui/gallery/data/MicroVideoInfo;->microVideoOffset:J

    const-string v1, "item-offset"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1622
    iget-wide v4, v0, Lcom/zui/gallery/data/MicroVideoInfo;->fileSize:J

    iget-wide v6, v0, Lcom/zui/gallery/data/MicroVideoInfo;->microVideoOffset:J

    sub-long/2addr v4, v6

    const-string v1, "item-length"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1623
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemPathString ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " info.microVideoOffset ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/zui/gallery/data/MicroVideoInfo;->microVideoOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoPage"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private launchPhotoEditor()V
    .locals 9

    .line 1630
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    .line 1632
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->canVideoEdit(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    .line 1633
    const-class v2, Lcom/zui/gallery/app/NormalVideoTrimActivity;

    .line 1634
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 1638
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    .line 1660
    :goto_0
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1661
    sget-object v2, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v5, v5, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1662
    sget-object v2, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNeedHightBright()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1663
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "video_roatedegress"

    .line 1664
    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "media-item-path"

    .line 1665
    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1667
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v4, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1669
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->isVideo(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1670
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->VIDEODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v2, Lcom/zui/gallery/util/AvatarUtils$Action;->VIDEO_CLIP:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v3, ""

    invoke-static {v0, v2, v3, v1}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1676
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_4

    :cond_3
    const-string v2, "PhotoPage"

    if-eqz v0, :cond_9

    .line 1678
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/gallery/common/BitmapUtils;->isImageType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1679
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/gallery/common/BitmapUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-nez v2, :cond_5

    .line 1690
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    :cond_5
    const/4 v4, -0x1

    .line 1694
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v5}, Lcom/zui/gallery/app/PhotoPage$Model;->isSelfAlbum()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    const/4 v4, 0x3

    move v1, v6

    .line 1705
    :cond_6
    new-instance v5, Landroid/content/Intent;

    const-string v7, "action_nextgen_edit"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1706
    iget-object v7, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class v8, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1707
    sget-object v7, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    iget-object v8, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v8, v8, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1708
    sget-object v7, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    iget-object v8, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNeedHightBright()Z

    move-result v8

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1710
    sget-object v7, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SELF:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/zui/gallery/app/PhotoPage;->isSelfPhoto:Z

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1711
    sget-object v7, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREENSHOT:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/zui/gallery/app/PhotoPage;->isScreenShotPhoto:Z

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1712
    sget-object v7, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_PANAPHOTO:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/zui/gallery/app/PhotoPage;->isPanoPhoto:Z

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1714
    sget-object v7, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_PANO:Ljava/lang/String;

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1715
    sget-object v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->GROUP_ID:Ljava/lang/String;

    invoke-virtual {v5, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1716
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1718
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 1719
    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.intent.action.EDIT"

    .line 1720
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1722
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isFullscreen()Z

    move-result v0

    const-string v1, "launch-fullscreen"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1723
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v5, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_8
    const-string v0, "can\'t edit photo type is not photo "

    .line 1681
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const-string v0, "can\'t edit photo photo is null "

    .line 1685
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private launchPolaroidCropActivity(Landroid/net/Uri;)V
    .locals 4

    .line 4076
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 4077
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4078
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.polaroid.printermod"

    const-string v3, "com.polaroid.printermod.activities.EffectImageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4080
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    .line 4081
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4083
    :try_start_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4085
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private manulPlayMicroVideo(Lcom/zui/gallery/data/LocalImage;)V
    .locals 4

    .line 2686
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    if-eqz p1, :cond_2

    .line 2688
    iget-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v1, :cond_0

    .line 2689
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    goto :goto_0

    .line 2691
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideBars()V

    .line 2693
    :goto_0
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->getMicroVideoInfo()Lcom/zui/gallery/data/MicroVideoInfo;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 2694
    invoke-virtual {v0}, Lcom/zui/gallery/ui/microvideo/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/microvideo/VideoView;->isSameMicroVideo(Lcom/zui/gallery/data/MicroVideoInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "PhotoPage"

    const-string v0, "micoVieo already playing"

    .line 2695
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PhotoView;->stopPlayMicroVideo()V

    goto :goto_1

    .line 2700
    :cond_1
    new-instance v1, Lcom/zui/gallery/ui/microvideo/VideoView;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/GLRootView;

    invoke-direct {v1, p1, v2, v3}, Lcom/zui/gallery/ui/microvideo/VideoView;-><init>(Lcom/zui/gallery/data/MicroVideoInfo;Landroid/content/res/Resources;Lcom/zui/gallery/ui/GLRootView;)V

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    .line 2701
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/PhotoView;->startPlayMicroVideo(Lcom/zui/gallery/ui/microvideo/VideoView;)V

    if-eqz v0, :cond_2

    .line 2703
    invoke-virtual {v0}, Lcom/zui/gallery/ui/microvideo/VideoView;->stop()V

    :cond_2
    :goto_1
    return-void
.end method

.method private onUpPressed()V
    .locals 3

    .line 2225
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mStartInFilmstrip:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2228
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->cleanBestSelectPhoto()V

    .line 2229
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 2230
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->setResult()V

    .line 2232
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    .line 2234
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    return-void

    .line 2238
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2239
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finish()V

    return-void

    .line 2243
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    if-nez v0, :cond_3

    .line 2245
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2246
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    const/4 v2, 0x7

    .line 2251
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parent-media-path"

    .line 2250
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/zui/gallery/app/StateManager;->switchState(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2255
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private overrideTransitionToEditor()V
    .locals 3

    .line 1436
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->overridePendingTransition(II)V

    return-void
.end method

.method private static parseExif(Lcom/zui/gallery/exif/ExifInterface;)I
    .locals 1

    .line 3921
    sget v0, Lcom/zui/gallery/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p0, v0}, Lcom/zui/gallery/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 3923
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    return p0

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private playMicroVideoIfNeeded(Lcom/zui/gallery/data/LocalImage;)V
    .locals 2

    .line 2671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "image.isMicroVideo():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->isMicroVideo()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoPage"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2672
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->isMicroVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2673
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->showMicroVideoBtn(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2680
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->showMicroVideoBtn(Z)V

    :goto_0
    return-void
.end method

.method private playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ZZZ)V
    .locals 9

    const-string/jumbo v0, "treat-up-as-back"

    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "is_hdr_video"

    const-string/jumbo v3, "video/*"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2743
    :try_start_0
    iget-object v6, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v6, v6, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "android.intent.action.VIEW"

    if-eqz v6, :cond_1

    .line 2744
    :try_start_1
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    if-eqz p5, :cond_0

    .line 2746
    iget-object p5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class v6, Lcom/zui/gallery/app/SingleMovieActivity;

    invoke-virtual {p4, p5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 2748
    :cond_0
    iget-object p5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class v6, Lcom/zui/gallery/app/MovieActivity;

    invoke-virtual {p4, p5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2750
    :goto_0
    invoke-virtual {p4, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2752
    sget-object p5, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    invoke-virtual {p4, p5, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2753
    sget-object p5, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    iget-object v6, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNeedHightBright()Z

    move-result v6

    invoke-virtual {p4, p5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 2755
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2756
    invoke-virtual {v6, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2757
    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "supportMultipleTheme"

    .line 2758
    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2759
    sget-object v7, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    iget-object v8, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNeedHightBright()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2761
    invoke-virtual {v6, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p4, :cond_4

    .line 2765
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->isSlowVideo()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 2773
    iget-object p4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class p5, Lcom/zui/gallery/app/MovieActivity;

    invoke-virtual {v6, p4, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    if-eqz p5, :cond_3

    .line 2776
    iget-object p4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class p5, Lcom/zui/gallery/app/SingleMovieActivity;

    invoke-virtual {v6, p4, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 2778
    :cond_3
    iget-object p4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class p5, Lcom/zui/gallery/app/MovieActivity;

    invoke-virtual {v6, p4, p5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    .line 2783
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iget-wide v7, p0, Lcom/zui/gallery/app/PhotoPage;->lastClickPlayVideoTime:J

    sub-long/2addr p4, v7

    const-wide/16 v7, 0x2bc

    cmp-long p4, p4, v7

    if-gez p4, :cond_5

    return-void

    .line 2786
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/zui/gallery/app/PhotoPage;->lastClickPlayVideoTime:J

    .line 2788
    iget-object p4, p0, Lcom/zui/gallery/app/PhotoPage;->mOrientationManager:Lcom/zui/gallery/app/OrientationManager;

    invoke-virtual {p4}, Lcom/zui/gallery/app/OrientationManager;->pause()V

    :goto_1
    move-object p4, v6

    .line 2798
    :goto_2
    invoke-virtual {p1, p4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    if-nez p6, :cond_6

    const p4, 0x7f010025

    const p5, 0x10a0001

    .line 2801
    invoke-virtual {p1, p4, p5}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_3

    .line 2804
    :cond_6
    invoke-virtual {p1, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2811
    :catch_0
    :try_start_2
    new-instance p4, Landroid/content/Intent;

    const-string p5, "com.zui.gallery.intent.action.VIEW"

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 2812
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 2813
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 2815
    invoke-virtual {p2, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 2816
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    const p2, 0x7f1002ae

    .line 2818
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2819
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_3
    return-void
.end method

.method private refreshHidingMessage()V
    .locals 4

    .line 2139
    sget-boolean v0, Lcom/zui/gallery/app/PhotoPage;->mContinuousShotPage:Z

    if-nez v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2141
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v0, :cond_0

    .line 2142
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private resetNavigationBarMargin()V
    .locals 14

    .line 2019
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f0801bc

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2022
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 2023
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " this.isFullscreen():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNavigationBarHidden()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " DisplayPropertyUtils.isNavigationShowing(this):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " this.isInMultiWindowMode():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 2024
    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " is landscape:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v1, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "yangchunbaixue"

    .line 2023
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2026
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const v3, 0x7f08029a

    .line 2029
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_b

    .line 2031
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isP8Device()Z

    move-result v4

    .line 2032
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v5

    .line 2033
    iget-object v6, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v6

    .line 2034
    iget-object v7, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v7

    .line 2035
    iget-object v8, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v8

    .line 2036
    iget-object v9, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    move v9, v1

    goto :goto_1

    :cond_2
    move v9, v2

    .line 2037
    :goto_1
    iget-object v10, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 2038
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2039
    iget-object v12, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060307

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    .line 2040
    iget-object v13, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v13}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v13

    if-nez v7, :cond_3

    if-eqz v5, :cond_7

    :cond_3
    if-nez v6, :cond_7

    const/high16 v6, 0x42780000    # 62.0f

    if-nez v8, :cond_5

    if-eqz v9, :cond_5

    .line 2043
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isZeldaDevice()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2044
    invoke-static {v1, v6, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v12, v1

    .line 2045
    invoke-virtual {v11, v2, v2, v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 2047
    :cond_4
    invoke-virtual {v11, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2048
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    .line 2051
    :cond_5
    invoke-virtual {v11, v2, v2, v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v7, 0x41200000    # 10.0f

    .line 2053
    invoke-static {v1, v7, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    float-to-int v7, v7

    .line 2054
    invoke-virtual {v3, v2, v2, v2, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2055
    invoke-static {v1, v6, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v12, v1

    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 2057
    invoke-virtual {v11, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_6
    if-nez v5, :cond_a

    if-eqz v4, :cond_a

    .line 2059
    invoke-virtual {v11, v2, v2, v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 2063
    :cond_7
    iget-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isCalledFromCamera:Z

    if-eqz v1, :cond_9

    if-eqz v6, :cond_9

    if-nez v7, :cond_8

    if-eqz v5, :cond_9

    .line 2065
    :cond_8
    invoke-virtual {v11, v2, v2, v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 2069
    :cond_9
    invoke-virtual {v11, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2070
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2073
    :cond_a
    :goto_2
    iput v12, v11, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2074
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2076
    :cond_b
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method private resetTitleBar()V
    .locals 7

    const/4 v0, 0x0

    .line 1906
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1908
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTitleBar ex == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoPage"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    .line 1914
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v2

    .line 1915
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v3

    .line 1916
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v0

    .line 1917
    :goto_1
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isP8Device()Z

    move-result v5

    .line 1918
    iget-object v6, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-nez v5, :cond_5

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    goto :goto_3

    .line 1922
    :cond_2
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v6, 0x7f0801bc

    invoke-virtual {v5, v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v6, 0x7f08029a

    .line 1923
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1925
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v1

    .line 1926
    :goto_2
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1927
    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xb

    .line 1928
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1929
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42300000    # 44.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1931
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1932
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42ca0000    # 101.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1935
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43c30000    # 390.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1936
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private resetTitleBarMarging()V
    .locals 5

    .line 2080
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2081
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/high16 v1, 0x42400000    # 48.0f

    .line 2082
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 2083
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 2085
    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2087
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setAs()Z
    .locals 5

    .line 4191
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->PHOTODETAILPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->SET_PHOTO_TO:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    .line 4192
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4198
    :cond_0
    invoke-interface {v0, v3}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    .line 4202
    instance-of v2, v0, Lcom/zui/gallery/data/SnailItem;

    if-eqz v2, :cond_1

    return v1

    :cond_1
    if-nez v0, :cond_2

    return v1

    .line 4211
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    const/4 v2, 0x0

    .line 4215
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mOrientationManager:Lcom/zui/gallery/app/OrientationManager;

    invoke-virtual {v3}, Lcom/zui/gallery/app/OrientationManager;->pause()V

    const-wide/16 v3, 0x96

    .line 4217
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4221
    :catch_0
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/SelectionManager;->deSelectAll()V

    .line 4222
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v3, v0}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 4223
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->startToSetting:Z

    .line 4224
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    const v3, 0x7f080308

    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mConfirmDialogListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    invoke-virtual {v0, v3, v2, v4}, Lcom/zui/gallery/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    return v1
.end method

.method private setCurrentPhotoByIntent(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2837
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2839
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DataManager;->getDefaultSetOf(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2843
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/Path;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2846
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2847
    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "media-set-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "media-item-path"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class v0, Lcom/zui/gallery/app/SinglePhotoPage;

    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    .line 2852
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    iget v1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v0, p1, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->setCurrentPhoto(Lcom/zui/gallery/data/Path;I)V

    :cond_3
    return-void
.end method

.method private setLeftButtonBackListener()V
    .locals 2

    .line 4702
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarLeftContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/zui/gallery/app/PhotoPage$22;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoPage$22;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setResult()V
    .locals 3

    .line 2261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2262
    iget v1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    const-string v2, "return-index-hint"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 2263
    invoke-virtual {p0, v1, v0}, Lcom/zui/gallery/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private setVideoAsWallpaper()V
    .locals 8

    .line 1341
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    instance-of v1, v0, Lcom/zui/gallery/data/LocalVideo;

    if-eqz v1, :cond_0

    .line 1342
    check-cast v0, Lcom/zui/gallery/data/LocalVideo;

    iget v0, v0, Lcom/zui/gallery/data/LocalVideo;->durationInSec:I

    goto :goto_0

    .line 1344
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getDetails()Lcom/zui/gallery/data/MediaDetails;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    :goto_0
    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    .line 1348
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f1002b6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1352
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVideoAsWallpaper uri ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " path = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " duration ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG_kgq"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-direct {p0, v2}, Lcom/zui/gallery/app/PhotoPage;->showOrDismissProgressDialog(Z)V

    const-wide/16 v2, 0xbb8

    const/16 v0, 0x14

    .line 1355
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v5}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1356
    new-instance v5, Lcom/lenovo/artlock/gallery/load/LockScreenManager;

    iget-object v6, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/lenovo/artlock/gallery/load/LockScreenManager;-><init>(Landroid/content/Context;)V

    .line 1357
    iget-object v6, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v6, v4}, Lcom/lenovo/artlock/gallery/load/LockScreenManager;->setVideoWallpaper_desktop(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/io/File;)V

    const-string/jumbo v4, "setVideoAsWallpaper end "

    .line 1358
    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v4

    .line 1360
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setVideoAsWallpaper error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1362
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :goto_2
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1363
    throw v1
.end method

.method private share()V
    .locals 5

    .line 1488
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->isWeixinWideo(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    new-instance v0, Lcom/zui/gallery/util/ShareMenuUitl;

    invoke-direct {v0}, Lcom/zui/gallery/util/ShareMenuUitl;-><init>()V

    return-void

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1496
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 1497
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 1506
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1508
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://media/external/images"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "image/*"

    if-eqz v2, :cond_1

    .line 1509
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1510
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content://media/external/video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "video/*"

    .line 1511
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1516
    :cond_2
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1521
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    instance-of v3, v2, Lcom/zui/gallery/data/LocalImage;

    if-eqz v3, :cond_3

    .line 1522
    check-cast v2, Lcom/zui/gallery/data/LocalMediaItem;

    invoke-virtual {v2}, Lcom/zui/gallery/data/LocalMediaItem;->is360ModImage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_360_mod_image"

    .line 1523
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1524
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "media_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1528
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start share mCurrentPhoto path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " contentUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "bugMark"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f100254

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1531
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 1533
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/PhotoPage;->avatarShare(Landroid/content/Intent;)V

    return-void
.end method

.method private showBars()V
    .locals 1

    const/4 v0, 0x0

    .line 1860
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->showBars(Z)V

    return-void
.end method

.method private showBars(Z)V
    .locals 4

    .line 1863
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1866
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    const/4 v2, 0x0

    .line 1870
    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/PhotoView;->setFullScreenBrowse(Z)V

    .line 1875
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x400

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1880
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_1

    .line 1881
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1882
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1883
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1885
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->resetNavigationBarMargin()V

    .line 1888
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->resetTitleBar()V

    .line 1890
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/zui/gallery/ui/GLRoot;->setLightsOutMode(Z)V

    if-nez p1, :cond_2

    .line 1892
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showHeaderWithoutAnimation()V

    .line 1894
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->hadPaused:Z

    if-nez p1, :cond_2

    .line 1895
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1898
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBarsModifyBgColors()V

    .line 1900
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/PhotoPage;->updateLivePhotoIconView(Z)V

    return-void
.end method

.method private showBarsModifyBgColors()V
    .locals 2

    .line 1943
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1944
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/zui/gallery/app/PhotoPage;->status_bar_color:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1946
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isDarkTheme()Z

    .line 1948
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateColor()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private showDetails()V
    .locals 5

    const/4 v0, 0x1

    .line 2392
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowDetails:Z

    .line 2393
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    if-nez v0, :cond_0

    .line 2394
    new-instance v0, Lcom/zui/gallery/ui/DetailsHelper;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    new-instance v3, Lcom/zui/gallery/app/PhotoPage$MyDetailsSource;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/zui/gallery/app/PhotoPage$MyDetailsSource;-><init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/ui/DetailsHelper;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/GLView;Lcom/zui/gallery/ui/DetailsHelper$DetailsSource;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    .line 2395
    new-instance v1, Lcom/zui/gallery/app/PhotoPage$7;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoPage$7;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/DetailsHelper;->setCloseListener(Lcom/zui/gallery/ui/DetailsHelper$CloseListener;)V

    .line 2403
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/DetailsHelper;->show()V

    return-void
.end method

.method private showMessageDialog(I)V
    .locals 2

    .line 4978
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mContinueSavingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 4979
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/GalleryUtils;->getProgressDialogX(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mContinueSavingDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 4981
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->closeCountinueSavingDialog()V

    .line 4983
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mContinueSavingDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4984
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mContinueSavingDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/zui/gallery/app/PhotoPage$23;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/PhotoPage$23;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 4993
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mContinueSavingDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showMicroVideoBtn(Z)V
    .locals 1

    .line 4508
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMircoVideoContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 4509
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private showOrDismissProgressDialog(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1368
    new-instance p1, Lzui/app/ProgressDialogX;

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {p1, v0}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const v0, 0x7f10024c

    .line 1369
    invoke-virtual {p1, v0}, Lzui/app/ProgressDialogX;->setMessage(I)V

    .line 1370
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 1371
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->show()V

    goto :goto_0

    .line 1373
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1374
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {p1}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startAddToPrivacyGroup(Ljava/lang/String;)V
    .locals 3

    const-string v0, "privatekey"

    const-string/jumbo v1, "startAddToPrivacyGroup is called"

    .line 3951
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3952
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 3953
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->showLoadingDialog()V

    .line 3954
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/zui/gallery/app/PhotoPage$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/zui/gallery/app/PhotoPage$11;-><init>(Lcom/zui/gallery/app/PhotoPage;Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3960
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private switchToGrid()V
    .locals 4

    .line 2325
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2326
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->onUpPressed()V

    goto :goto_2

    .line 2328
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    if-nez v0, :cond_1

    return-void

    .line 2330
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2331
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    const/4 v2, 0x7

    .line 2336
    invoke-virtual {v1, v2}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parent-media-path"

    .line 2335
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string v3, "app-bridge"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2344
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v1

    .line 2345
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    sub-int/2addr v3, v2

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "return-index-hint"

    .line 2344
    invoke-virtual {v1, v3, v2}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2347
    iget-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    if-eqz v1, :cond_4

    .line 2348
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {v1, v2, v0}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_2

    .line 2350
    :cond_4
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/AlbumPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/zui/gallery/app/StateManager;->switchState(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method private toggleBars()V
    .locals 1

    .line 2167
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 2168
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideBars()V

    goto :goto_0

    .line 2170
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    :cond_1
    :goto_0
    return-void
.end method

.method private transitionFromAlbumPageIfNeeded()V
    .locals 4

    .line 2986
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2988
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "albumpage-transition"

    invoke-virtual {v0, v3, v2}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    .line 2990
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mRecenterCameraOnResume:Z

    if-eqz v2, :cond_0

    .line 2994
    iput v1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    .line 2995
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->resetToFirstPicture()V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 2997
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index-hint"

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    .line 2999
    iget-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 3003
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mMediaSet:Lcom/zui/gallery/data/FilterDeleteSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3004
    iput v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    .line 3005
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v1, v0}, Lcom/zui/gallery/app/PhotoPage$Model;->moveTo(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private unUpdateViewMargin()V
    .locals 7

    .line 5282
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isLandScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5283
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarLeftContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x34

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/util/GalleryUtils;->setViewMargin(Landroid/content/Context;Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method private undoCustomizeLayout()V
    .locals 4

    .line 5309
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0501dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 5310
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5311
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 5313
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isDarkTheme()Z

    .line 5314
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkStatusIcon(Z)V

    .line 5315
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setNavigationBarIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5321
    :catch_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f050165

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5322
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    .line 5323
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 5324
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5325
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5326
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 5327
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5329
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_0

    .line 5331
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f050207

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5332
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->time_day:Landroid/widget/TextView;

    const v1, 0x7f0501e5

    if-eqz v0, :cond_1

    .line 5333
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5334
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->time_hour:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 5335
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5338
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5339
    iget v1, p0, Lcom/zui/gallery/app/PhotoPage;->initLeftMarginStart:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 5340
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5342
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 5343
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 5344
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateBars()V
    .locals 1

    .line 2177
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->isCalledFromCamera:Z

    if-eqz v0, :cond_1

    .line 2178
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideBars()V

    :cond_1
    return-void
.end method

.method private updateCancelChooseButton()V
    .locals 0

    return-void
.end method

.method private updateColor()V
    .locals 5

    .line 1968
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1969
    :goto_0
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1970
    :goto_1
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1972
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkStatusIcon(Z)V

    .line 1973
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkNavigationBarIcon(Z)V

    goto :goto_4

    .line 1975
    :cond_2
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v4

    if-eqz v0, :cond_3

    .line 1978
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkStatusIcon(Z)V

    goto :goto_3

    .line 1980
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkStatusIcon(Z)V

    if-eqz v4, :cond_6

    .line 1982
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_5

    if-nez v3, :cond_4

    .line 1984
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkNavigationBarIcon(Z)V

    goto :goto_2

    .line 1986
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkNavigationBarIcon(Z)V

    .line 1988
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f050209

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1989
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    .line 1992
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setDarkNavigationBarIcon(Z)V

    .line 1993
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1999
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setNationBarVisible(Landroid/app/Activity;Z)Z

    :goto_4
    return-void
.end method

.method private updateCurrentPhoto(Lcom/zui/gallery/data/MediaItem;Z)V
    .locals 1

    .line 1806
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 1809
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    .line 1810
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateTitle()V

    .line 1811
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateUIForCurrentPhoto()V

    .line 1812
    new-instance p1, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;-><init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/app/PhotoPage$1;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1850
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1851
    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->updateLivePhotoIconView(Z)V

    :cond_1
    return-void
.end method

.method private updateFinishButton()V
    .locals 3

    .line 911
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 912
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 913
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mRightTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 914
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->settingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->continue_done_text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 916
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->continue_done_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->continue_done_text:Landroid/widget/TextView;

    new-instance v1, Lcom/zui/gallery/app/PhotoPage$4;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoPage$4;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateHeadRoot()V
    .locals 8

    const/4 v0, 0x0

    .line 5190
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5192
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHeadRoot ex == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoPage"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 5201
    :goto_1
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/zui/gallery/util/DisplayPropertyUtils;->floatTopViewHeight(Landroid/app/Activity;)I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v2, :cond_2

    .line 5202
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v3

    neg-int v3, v3

    goto :goto_2

    :cond_2
    move v3, v0

    .line 5204
    :goto_2
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5205
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v0

    neg-int v0, v0

    goto :goto_3

    :cond_3
    add-int/2addr v0, v3

    .line 5206
    :goto_3
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0603a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 5207
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 5208
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v7, 0x7f050165

    invoke-virtual {v6, v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5209
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    if-eqz v2, :cond_4

    .line 5210
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v1

    :cond_4
    add-int/2addr v3, v1

    add-int/2addr v3, v0

    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5211
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5212
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5213
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5214
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5215
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->adjustColor()V

    .line 5216
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/app/PhotoPage;->topMargin:I

    .line 5217
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/PhotoView;->setTopMargin(I)V

    return-void
.end method

.method private updatePanoramaUI(Z)V
    .locals 0

    return-void
.end method

.method private updateTitileBar()V
    .locals 3

    .line 4645
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarLeftContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 4646
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mLeftText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4647
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mDayMonthSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4648
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4649
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4650
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateViewMargin()V

    .line 4652
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->customizeLayout()V

    .line 4655
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    if-nez v0, :cond_0

    .line 4656
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->continue_done_text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4657
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateTitleBarRightView()V

    .line 4658
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateTitle()V

    goto :goto_0

    .line 4660
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mLeftText:Landroid/widget/TextView;

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4661
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4663
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4664
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    const v1, 0x7f07005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 4666
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4676
    :goto_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->hadPaused:Z

    if-eqz v0, :cond_3

    .line 4677
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->backupRealLastStatus:Z

    if-eqz v0, :cond_2

    .line 4678
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    goto :goto_1

    .line 4680
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideBars()V

    .line 4682
    :goto_1
    iput-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->hadPaused:Z

    goto :goto_2

    .line 4684
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->ismFullScreenBrowse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4685
    iput-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    .line 4686
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideBars()V

    .line 4689
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4690
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->time_day:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4691
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4692
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->time_hour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 4693
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->setLeftButtonBackListener()V

    .line 4695
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mLivePhotoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4696
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060200

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 4697
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060201

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 4698
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mLivePhotoContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTitle()V
    .locals 8

    .line 3294
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 3300
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->time_day:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->time_hour:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 3303
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    if-nez v0, :cond_2

    return-void

    .line 3306
    :cond_2
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3307
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 3308
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getDateInMs()J

    move-result-wide v1

    .line 3311
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isSoftwareForHW()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ta"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3312
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/M/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 3314
    :cond_3
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v3

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_4

    .line 3319
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 3325
    :cond_4
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3327
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "HH:mm"

    goto :goto_1

    :cond_5
    const-string v0, "h:mm a"

    .line 3329
    :goto_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3331
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3332
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->time_hour:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3339
    :cond_6
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 3340
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 3342
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p0, v3}, Lcom/zui/gallery/app/PhotoPage;->is24(Landroid/content/Context;)Z

    move-result v3

    const v4, 0x7f10015e

    const v5, 0x7f100161

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3343
    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3345
    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3347
    :cond_7
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3348
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    const-string v1, ":"

    .line 3351
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    const-string v2, "."

    .line 3354
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 3357
    :cond_9
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v6, ""

    const/4 v7, 0x0

    if-eqz v3, :cond_a

    .line 3359
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3360
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3361
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3362
    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3361
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3363
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-lt v3, v5, :cond_c

    .line 3364
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x5

    if-gt v1, v3, :cond_c

    .line 3365
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3366
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3367
    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10015f

    .line 3368
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3365
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3370
    :cond_a
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3372
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3373
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3374
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3375
    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3374
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3376
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_b

    .line 3377
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3379
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3381
    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100160

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3378
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3383
    :cond_b
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_c

    .line 3384
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0xb

    if-gt v1, v3, :cond_c

    .line 3385
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3387
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3389
    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10015d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3386
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3393
    :cond_c
    :goto_2
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->time_hour:Landroid/widget/TextView;

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_3
    return-void
.end method

.method private updateTitleBarRightView()V
    .locals 7

    .line 4559
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall()Z

    move-result v0

    const v1, 0x7f07008d

    const v2, 0x7f07008b

    const v3, 0x7f07008c

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isInSmallScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4560
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mRightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4561
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mRightTextView:Landroid/widget/TextView;

    const v5, 0x7f10004b

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4562
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mRightTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v6, 0x7f050138

    invoke-virtual {v5, v6}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4563
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->settingView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4564
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4565
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isSoftwareForHW()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4566
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isSecureCameraCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4567
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/zui/gallery/app/PhotoPage$20;

    invoke-direct {v4, p0}, Lcom/zui/gallery/app/PhotoPage$20;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 4583
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4586
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isSecureCameraCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4587
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4589
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/zui/gallery/app/PhotoPage$21;

    invoke-direct {v4, p0}, Lcom/zui/gallery/app/PhotoPage$21;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4612
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMircoVideoContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4613
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060244

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 4616
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v4, v4, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 4617
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4618
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 4620
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4622
    :goto_1
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isP8Device()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4623
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 4626
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 4627
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4629
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4630
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 4632
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4634
    :goto_2
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isP8Device()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4635
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 4637
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->backUpImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateUIForCurrentPhoto()V
    .locals 4

    .line 1760
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    if-nez v0, :cond_0

    return-void

    .line 1766
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1767
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 1769
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 1770
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 1771
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/DetailsHelper;->reloadDetails()V

    .line 1779
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    instance-of v3, v0, Lcom/zui/gallery/data/LocalImage;

    if-eqz v3, :cond_3

    .line 1780
    check-cast v0, Lcom/zui/gallery/data/LocalImage;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->playMicroVideoIfNeeded(Lcom/zui/gallery/data/LocalImage;)V

    goto :goto_0

    .line 1782
    :cond_3
    invoke-direct {p0, v2}, Lcom/zui/gallery/app/PhotoPage;->showMicroVideoBtn(Z)V

    .line 1786
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->queryMotoralMediaTypeTask:Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;

    if-eqz v0, :cond_4

    .line 1787
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->cancel(Z)Z

    .line 1789
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    instance-of v1, v0, Lcom/zui/gallery/data/LocalMediaItem;

    if-eqz v1, :cond_6

    .line 1790
    check-cast v0, Lcom/zui/gallery/data/LocalMediaItem;

    .line 1791
    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalMediaItem;->isMotoralMediaTypeInit()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 1794
    :cond_5
    new-instance v1, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;

    invoke-direct {v1, p0, v0}, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;-><init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/data/MediaItem;)V

    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->queryMotoralMediaTypeTask:Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;

    new-array v0, v2, [Ljava/lang/Void;

    .line 1795
    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/PhotoPage$QueryMotoralMediaTypeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6
    return-void
.end method

.method private updateViewMargin()V
    .locals 7

    .line 5277
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isLandScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isPad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5278
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarLeftContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/zui/gallery/util/GalleryUtils;->setViewMargin(Landroid/content/Context;Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method private wantBars()V
    .locals 1

    .line 2162
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->canShowBars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2163
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canDisplayBottomControl(I)Z
    .locals 10

    .line 950
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    if-nez v0, :cond_1

    return v1

    .line 959
    :cond_1
    iget-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mIsThridAppCall:Z

    .line 962
    instance-of v0, v0, Lcom/zui/gallery/data/LocalMediaItem;

    if-eqz v0, :cond_2

    move v2, v1

    .line 966
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    .line 967
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "content://mms/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    if-eqz v0, :cond_5

    instance-of v0, v0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    if-eqz v0, :cond_5

    :cond_4
    move v2, v3

    .line 971
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    instance-of v4, v0, Lcom/zui/gallery/data/LocalVideo;

    if-eqz v4, :cond_6

    .line 972
    check-cast v0, Lcom/zui/gallery/data/LocalVideo;

    .line 974
    iget v0, v0, Lcom/zui/gallery/data/LocalVideo;->bucketId:I

    sget v4, Lcom/zui/gallery/util/MediaSetUtils;->SCREENRECORDER_BUCKET_ID:I

    if-ne v0, v4, :cond_6

    move v2, v1

    .line 981
    :cond_6
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    move v0, v3

    goto :goto_0

    :cond_7
    move v0, v1

    .line 982
    :goto_0
    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v4, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->isContinuousShot(I)Z

    move-result v4

    .line 984
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->isImageColect:Z

    if-nez v0, :cond_9

    .line 986
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0, v5}, Lcom/zui/gallery/app/PhotoPage;->isVideo(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    move v5, v1

    goto :goto_2

    :cond_9
    :goto_1
    move v5, v3

    .line 989
    :goto_2
    iget-object v6, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0, v6}, Lcom/zui/gallery/app/PhotoPage;->canVideoEdit(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v6

    .line 992
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canEditVideo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "kkkk"

    invoke-static {v8, v7}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v7, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string v8, "."

    .line 997
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_a

    .line 999
    iget-object v9, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v9}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    const-string v8, ".png"

    .line 1000
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, ".PNG"

    .line 1001
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, ".jpg"

    .line 1002
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, ".JPG"

    .line 1003
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, ".jpeg"

    .line 1004
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, ".JPEG"

    .line 1005
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, ".mp4"

    .line 1006
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    .line 1012
    :cond_a
    iget-object v7, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    instance-of v8, v7, Lcom/zui/gallery/data/CloudImage;

    iput-boolean v8, p0, Lcom/zui/gallery/app/PhotoPage;->mIsCloudImage:Z

    const v8, 0x7f0801a0

    if-eq p1, v8, :cond_19

    packed-switch p1, :pswitch_data_0

    return v1

    .line 1049
    :pswitch_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean p1, p1, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    if-eqz p1, :cond_b

    return v1

    .line 1053
    :cond_b
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    .line 1054
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsCloudImage:Z

    if-eqz p1, :cond_c

    return v3

    :cond_c
    return v1

    .line 1059
    :cond_d
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz p1, :cond_e

    if-eqz v5, :cond_e

    if-nez v2, :cond_e

    move v1, v3

    :cond_e
    return v1

    :pswitch_1
    if-eqz v0, :cond_f

    .line 1088
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->isInstalledPolaroidApp()Z

    move-result p1

    if-eqz p1, :cond_f

    move v1, v3

    :cond_f
    return v1

    :pswitch_2
    return v3

    .line 1016
    :pswitch_3
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_10

    return v1

    :cond_10
    if-eqz v4, :cond_11

    return v1

    .line 1026
    :cond_11
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    const-string v4, "gif"

    .line 1027
    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    :cond_12
    return v1

    .line 1034
    :cond_13
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz p1, :cond_15

    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz p1, :cond_15

    if-eqz v5, :cond_15

    if-nez v2, :cond_15

    if-nez v0, :cond_14

    if-eqz v6, :cond_15

    :cond_14
    move v1, v3

    :cond_15
    return v1

    .line 1078
    :pswitch_4
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_16

    return v1

    .line 1080
    :cond_16
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mPornPicture:Z

    if-eqz p1, :cond_17

    return v3

    .line 1083
    :cond_17
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mHaveImageEditor:Z

    if-eqz p1, :cond_18

    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz p1, :cond_18

    if-eqz v5, :cond_18

    if-nez v2, :cond_18

    move v1, v3

    :cond_18
    return v1

    .line 1066
    :cond_19
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_3

    :cond_1a
    return v3

    .line 1067
    :cond_1b
    :goto_3
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsCloudImage:Z

    if-eqz p1, :cond_1c

    return v3

    :cond_1c
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f080290
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public canDisplayBottomControls()Z
    .locals 1

    .line 944
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    return v0
.end method

.method public createMoreDialog(Ljava/lang/String;)V
    .locals 12

    .line 3502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMoreDialog mimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoPage"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100247

    .line 3512
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f100033

    .line 3513
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1000d7

    .line 3514
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f100077

    .line 3515
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3517
    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    iget-boolean v8, p0, Lcom/zui/gallery/app/PhotoPage;->mIsCloudImage:Z

    if-eqz v8, :cond_0

    .line 3518
    check-cast v5, Lcom/zui/gallery/data/CloudImage;

    .line 3519
    invoke-virtual {v5}, Lcom/zui/gallery/data/CloudImage;->isCloudVideo()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    if-eqz v5, :cond_1

    const v4, 0x7f100078

    .line 3524
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const v5, 0x7f1001d5

    .line 3527
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v8, 0x7f040005

    .line 3528
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 3529
    iget-object v8, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v9, "com.zui.camera.plugin.dolphin"

    invoke-static {v8, v9}, Lcom/zui/gallery/util/GalleryUtils;->isClientAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 3532
    iget-object v9, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean v9, v9, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    if-nez v9, :cond_9

    const-string v9, "image/gif"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_4

    .line 3544
    :cond_2
    iget-object v9, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    instance-of v10, v9, Lcom/zui/gallery/data/CloudImage;

    const/4 v11, 0x2

    if-eqz v10, :cond_3

    new-array v0, v11, [Ljava/lang/String;

    aput-object v3, v0, v7

    aput-object v4, v0, v6

    .line 3551
    iput-boolean v7, p0, Lcom/zui/gallery/app/PhotoPage;->isDetailMsg:Z

    goto/16 :goto_5

    :cond_3
    const/4 v4, 0x3

    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    .line 3554
    iget-boolean v0, v9, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    iget v0, v0, Lcom/zui/gallery/data/MediaItem;->continuousCount:I

    if-lez v0, :cond_4

    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v7

    aput-object v3, v0, v6

    aput-object v5, v0, v11

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    aput-object v3, v0, v11

    aput-object v5, v0, v4

    .line 3570
    :goto_1
    iput-boolean v7, p0, Lcom/zui/gallery/app/PhotoPage;->isDetailMsg:Z

    goto :goto_5

    .line 3579
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3580
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    iget-boolean v0, v0, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    iget v0, v0, Lcom/zui/gallery/data/MediaItem;->continuousCount:I

    if-lez v0, :cond_6

    new-array v0, v6, [Ljava/lang/String;

    aput-object v3, v0, v7

    goto :goto_2

    :cond_6
    new-array v0, v11, [Ljava/lang/String;

    aput-object v2, v0, v7

    aput-object v3, v0, v6

    .line 3593
    :goto_2
    iput-boolean v6, p0, Lcom/zui/gallery/app/PhotoPage;->isDetailMsg:Z

    goto :goto_5

    .line 3595
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    iget-boolean v0, v0, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    iget v0, v0, Lcom/zui/gallery/data/MediaItem;->continuousCount:I

    if-lez v0, :cond_8

    new-array v0, v11, [Ljava/lang/String;

    aput-object v1, v0, v7

    aput-object v3, v0, v6

    goto :goto_3

    :cond_8
    new-array v0, v4, [Ljava/lang/String;

    aput-object v1, v0, v7

    aput-object v2, v0, v6

    aput-object v3, v0, v11

    .line 3607
    :goto_3
    iput-boolean v7, p0, Lcom/zui/gallery/app/PhotoPage;->isDetailMsg:Z

    goto :goto_5

    :cond_9
    :goto_4
    new-array v0, v6, [Ljava/lang/String;

    aput-object v3, v0, v7

    .line 3611
    :goto_5
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3612
    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->getActionDialogBuilder(Landroid/app/Activity;)Lzui/app/ActionDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/PhotoPage$9;

    invoke-direct {v2, p0, p1}, Lcom/zui/gallery/app/PhotoPage$9;-><init>(Lcom/zui/gallery/app/PhotoPage;Ljava/lang/String;)V

    .line 3613
    invoke-virtual {v1, v0, v2}, Lzui/app/ActionDialog$Builder;->setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 3715
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/PhotoPage$8;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoPage$8;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-virtual {p1, v0, v1}, Lzui/app/ActionDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    .line 3726
    invoke-virtual {p1}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mMoreDialog:Lzui/app/ActionDialog;

    .line 3727
    invoke-virtual {p1}, Lzui/app/ActionDialog;->show()V

    return-void
.end method

.method public dismissLoadingDialog()V
    .locals 1

    .line 4049
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_0

    .line 4050
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 4053
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mLoadingVisible:Z

    return-void
.end method

.method public getAbstractGalleryActivity()Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 1

    .line 3438
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object v0
.end method

.method protected getBackgroundColorId(Landroid/os/Bundle;)I
    .locals 0

    .line 472
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f050209

    goto :goto_0

    :cond_0
    const p1, 0x7f050049

    :goto_0
    return p1
.end method

.method public getCurrentMediaItem()Lcom/zui/gallery/data/MediaItem;
    .locals 2

    .line 3425
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3429
    invoke-interface {v0, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOrientation()I
    .locals 1

    .line 3417
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mOrientationManager:Lcom/zui/gallery/app/OrientationManager;

    if-eqz v0, :cond_0

    .line 3418
    invoke-virtual {v0}, Lcom/zui/gallery/app/OrientationManager;->getCompensation()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public is24(Landroid/content/Context;)Z
    .locals 1

    .line 3286
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "time_12_24"

    .line 3287
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "24"

    .line 3290
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCanSlidShow()Z
    .locals 1

    .line 3434
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsCanSlidShow:Z

    return v0
.end method

.method public isFavoriteGroup()Z
    .locals 3

    .line 1267
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    instance-of v1, v0, Lcom/zui/gallery/app/PhotoDataAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1269
    check-cast v0, Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/PhotoDataAdapter;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1278
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1280
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->isExistInFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 1286
    :cond_0
    instance-of v1, v0, Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    if-eqz v1, :cond_1

    .line 1287
    invoke-interface {v0, v2}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    .line 1288
    instance-of v1, v0, Lcom/zui/gallery/data/LocalImage;

    if-eqz v1, :cond_1

    .line 1289
    check-cast v0, Lcom/zui/gallery/data/LocalImage;

    invoke-virtual {v0}, Lcom/zui/gallery/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 1290
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/zui/gallery/data/GroupBucketHelper;->isExistInFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2
.end method

.method public synthetic lambda$delayUpdateHeadRoot$1$PhotoPage()V
    .locals 0

    .line 5183
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateHeadRoot()V

    return-void
.end method

.method public synthetic lambda$new$0$PhotoPage()V
    .locals 3

    const-string v0, "PhotoPage"

    const-string v1, "onPatpat"

    .line 437
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->getCurrentMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zui/lenovoone/LenovoOneHelper;->send(Landroid/app/Activity;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/MediaItem;)V

    return-void
.end method

.method public lockScreem()V
    .locals 2

    .line 4094
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4098
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4101
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method public muteVideo(Z)V
    .locals 2

    .line 5505
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 5506
    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 5507
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->isMuted:Z

    .line 5508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "muteVideo isMute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhotoPage"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActionBarAllowed(Z)V
    .locals 1

    .line 2616
    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActionBarAllowed:Z

    .line 2617
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onActionBarWanted()V
    .locals 2

    const-string/jumbo v0, "wugh2"

    const-string v1, "send MSG_WANT_BARS ==========onActionBarWanted"

    .line 2622
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    .line 2195
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->customizeLayout()V

    .line 2196
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->cleanBestSelectPhoto()V

    .line 2198
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->isCalledFromCamera:Z

    if-nez v0, :cond_0

    .line 2199
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    .line 2202
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->deSelectAll()V

    .line 2203
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_1

    .line 2204
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideDetails()V

    goto :goto_0

    .line 2205
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->switchWithCaptureAnimation(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2207
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->setResult()V

    .line 2208
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mStartInFilmstrip:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 2210
    :cond_3
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mTreatBackAsUp:Z

    if-eqz v0, :cond_4

    .line 2211
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    .line 2213
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/zui/gallery/ui/microvideo/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2214
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->stopPlayMicroVideo()V

    return-void

    .line 2217
    :cond_5
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    :cond_6
    :goto_0
    return-void
.end method

.method public onBottomControlClicked(I)V
    .locals 7

    .line 1103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/app/PhotoPage;->lastClickPlayVideoTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2bc

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 1107
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/app/PhotoPage;->lastClickPlayVideoTime:J

    const v0, 0x7f0801a0

    const-string v1, "PhotoPage"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_11

    packed-switch p1, :pswitch_data_0

    return-void

    .line 1111
    :pswitch_0
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsCloudImage:Z

    if-eqz p1, :cond_1

    .line 1112
    iput-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->isShare:Z

    .line 1113
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->downloadCloudImage()V

    goto :goto_0

    .line 1115
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->share()V

    :goto_0
    return-void

    .line 1235
    :pswitch_1
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->launchPolaroidCropActivity(Landroid/net/Uri;)V

    goto/16 :goto_9

    .line 1239
    :pswitch_2
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://media/external/video"

    .line 1240
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    .line 1241
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://mms/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    .line 1242
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 1245
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->createMoreDialog(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1243
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->showVideoMenu()V

    goto/16 :goto_9

    .line 1127
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.intent.filtershowactivity_destory"

    .line 1128
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "is_gallery"

    .line 1129
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1130
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1134
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsCloudImage:Z

    if-eqz p1, :cond_5

    .line 1135
    iput-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->isEdit:Z

    .line 1136
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->downloadCloudImage()V

    goto/16 :goto_9

    .line 1138
    :cond_5
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->launchPhotoEditor()V

    goto/16 :goto_9

    .line 1167
    :pswitch_4
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->deSelectAll()V

    .line 1171
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    instance-of v0, p1, Lcom/zui/gallery/app/PhotoDataAdapter;

    if-eqz v0, :cond_6

    .line 1173
    check-cast p1, Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-virtual {p1, v3}, Lcom/zui/gallery/app/PhotoDataAdapter;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    goto :goto_2

    .line 1176
    :cond_6
    invoke-interface {p1, v3}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    :goto_2
    if-nez p1, :cond_7

    const-string p1, "delete file not exist "

    .line 1180
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1185
    :cond_7
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    .line 1186
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 1188
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1190
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->isCameraAlbum()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p1, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    move v2, v3

    .line 1192
    :goto_3
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->isVirtualAlbum()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1193
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->isDeleteFileHasAddFile()Z

    move-result v1

    goto :goto_4

    :cond_9
    move v1, v3

    .line 1196
    :goto_4
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isSoftwareForHW()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    move v3, v1

    :goto_5
    if-eqz p1, :cond_f

    .line 1199
    instance-of v1, p1, Lcom/zui/gallery/data/LocalVideo;

    if-eqz v1, :cond_c

    if-eqz v3, :cond_b

    .line 1201
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1204
    :cond_b
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    if-eqz v2, :cond_e

    .line 1209
    check-cast p1, Lcom/zui/gallery/data/LocalImage;

    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->getBucketId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->isDeleteFolderHasAddFileForFloatDialog(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1211
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1213
    :cond_d
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_e
    if-eqz v3, :cond_f

    .line 1217
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000d0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_f
    :goto_6
    move-object v3, v0

    .line 1226
    iget-boolean v5, p0, Lcom/zui/gallery/app/PhotoPage;->mPornPicture:Z

    if-eqz v5, :cond_10

    .line 1227
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    const v2, 0x7f0800a7

    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mConfirmDialogListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/ui/MenuExecutor;->onMenuClickedPornPicture(ILjava/lang/String;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;ZLcom/zui/gallery/app/ActivityState;)V

    goto :goto_7

    .line 1229
    :cond_10
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    const v0, 0x7f0800a7

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mConfirmDialogListener:Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;

    .line 1230
    invoke-virtual {p1, v0, v3, v1}, Lcom/zui/gallery/ui/MenuExecutor;->onMenuClicked(ILjava/lang/String;Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    :goto_7
    return-void

    .line 1146
    :cond_11
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    instance-of v0, p1, Lcom/zui/gallery/app/PhotoDataAdapter;

    if-eqz v0, :cond_12

    .line 1147
    check-cast p1, Lcom/zui/gallery/app/PhotoDataAdapter;

    invoke-virtual {p1, v3}, Lcom/zui/gallery/app/PhotoDataAdapter;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    goto :goto_8

    .line 1149
    :cond_12
    invoke-interface {p1, v3}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    :goto_8
    if-nez p1, :cond_13

    const-string p1, "add favorite file not exist "

    .line 1152
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1155
    :cond_13
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    .line 1156
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsCloudImage:Z

    if-eqz v0, :cond_14

    .line 1157
    iput-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->isFavorite:Z

    .line 1158
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->downloadCloudImage()V

    goto :goto_9

    .line 1160
    :cond_14
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->addFavoriteGroup(Lcom/zui/gallery/data/Path;)V

    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x7f080290
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onBottombarClicked(I)V
    .locals 1

    const v0, 0x7f080299

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3452
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    if-eqz p1, :cond_1

    .line 3453
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content://media/"

    .line 3454
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "PhotoPage"

    const-string v0, "onBack press "

    .line 3455
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->onUpPressed()V

    goto :goto_0

    .line 3458
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 3469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoPage"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f080059

    if-ne v0, v2, :cond_1

    .line 3472
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iput-boolean v1, v0, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall:Z

    .line 3474
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3475
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v2

    const/16 v3, 0xa

    .line 3476
    invoke-virtual {v2, v3}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "media-path"

    .line 3475
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v2

    .line 3478
    invoke-virtual {v2}, Lcom/zui/gallery/app/StateManager;->getSecondStatNotEmpty()Lcom/zui/gallery/app/ActivityState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3479
    instance-of v3, v3, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    if-eqz v3, :cond_0

    .line 3480
    invoke-virtual {v2, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto :goto_0

    .line 3482
    :cond_0
    const-class v3, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    invoke-virtual {v2, p0, v3, v0}, Lcom/zui/gallery/app/StateManager;->switchState(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 3492
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f080300

    if-ne v0, v2, :cond_2

    .line 3493
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onBackPressed()V

    goto :goto_1

    .line 3494
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080302

    if-ne p1, v0, :cond_3

    .line 3495
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->continue_done_text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3496
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->createConfirmDialog()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCommitDeleteImage()V
    .locals 2

    const-string v0, ""

    const-string v1, "==========onCommitDeleteImage"

    .line 2664
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    .line 5129
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->isContinuousShot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5130
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f10026c

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "PhotoPage"

    const-string v0, "isInMultiWindowMode"

    .line 5131
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->onBackPressed()V

    return-void

    .line 5136
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->initTitleBar()V

    .line 5137
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateTitileBar()V

    .line 5139
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->delayUpdateHeadRoot()V

    .line 5140
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5141
    invoke-direct {p0, v0, v2}, Lcom/zui/gallery/app/PhotoPage;->updateCurrentPhoto(Lcom/zui/gallery/data/MediaItem;Z)V

    .line 5143
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v3}, Lcom/zui/gallery/ui/PhotoView;->refreshPositionParameter(Landroid/content/Context;)V

    .line 5145
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    if-eqz v0, :cond_3

    .line 5146
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v3

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    invoke-virtual {v0, v3, v4}, Lcom/zui/gallery/ui/PhotoView;->onConfigurationChanged(ZZ)V

    .line 5148
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v3, 0x7f0801bc

    invoke-virtual {v0, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_7

    .line 5150
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mSecureAlbum:Lcom/zui/gallery/data/SecureAlbum;

    if-nez v0, :cond_7

    .line 5151
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    if-eqz v0, :cond_4

    const v0, 0x7f08029a

    .line 5152
    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v3, 0x4

    .line 5154
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5157
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->cleanup()V

    .line 5158
    :cond_5
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->getAbstractGalleryActivity()Lcom/zui/gallery/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/app/ContinuousSelectionPage;

    if-nez v0, :cond_7

    .line 5159
    new-instance v0, Lcom/zui/gallery/app/PhotoPageBottomControls;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->isFavoriteGroup()Z

    move-result v3

    xor-int/lit8 v7, v3, 0x1

    iget-boolean v8, p0, Lcom/zui/gallery/app/PhotoPage;->isCalledFromCamera:Z

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/zui/gallery/app/PhotoPageBottomControls;-><init>(Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;Landroid/content/Context;Landroid/widget/RelativeLayout;ZZ)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    .line 5160
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 5161
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->isContinuousShot()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5162
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_6

    .line 5163
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    .line 5167
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->show()V

    goto :goto_1

    .line 5170
    :cond_6
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideBars()V

    .line 5171
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->hide()V

    .line 5177
    :cond_7
    :goto_1
    new-instance v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;-><init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/app/PhotoPage$1;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5178
    invoke-super {p0, p1}, Lcom/zui/gallery/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 13

    .line 500
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    const-string p2, "PhotoPage"

    const-string v0, "photopage onCreate"

    .line 501
    invoke-static {p2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-static {}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    move-result-object v0

    const-class v1, Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    invoke-interface {v0, v1}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->service(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;

    move-result-object v0

    check-cast v0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    .line 503
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/zui/gallery/app/GalleryActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

    .line 505
    new-instance v0, Lcom/zui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/SelectionManager;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Z)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 507
    new-instance v0, Lcom/zui/gallery/ui/MenuExecutor;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/ui/MenuExecutor;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    .line 509
    new-instance v0, Lcom/zui/gallery/ui/PhotoView;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/ui/PhotoView;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    .line 512
    invoke-virtual {v0, p0}, Lcom/zui/gallery/ui/PhotoView;->setListener(Lcom/zui/gallery/ui/PhotoView$Listener;)V

    .line 513
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/GLView;->addComponent(Lcom/zui/gallery/ui/GLView;)V

    .line 514
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/app/GalleryApp;

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    .line 515
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getOrientationManager()Lcom/zui/gallery/app/OrientationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mOrientationManager:Lcom/zui/gallery/app/OrientationManager;

    .line 516
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mOrientationManager:Lcom/zui/gallery/app/OrientationManager;

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/GLRoot;->setOrientationSource(Lcom/zui/gallery/ui/OrientationSource;)V

    .line 517
    new-instance v0, Lcom/zui/gallery/util/ReverseGeocoder;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/zui/gallery/util/ReverseGeocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->reverseGeocoder:Lcom/zui/gallery/util/ReverseGeocoder;

    .line 518
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/app/PhotoPage;->SD_CARD_ROOT:Ljava/lang/String;

    .line 519
    new-instance v0, Lcom/zui/gallery/app/PhotoPage$2;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/PhotoPage$2;-><init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-string v0, "call_from_camera"

    .line 644
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->isCalledFromCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const-string v0, "media-set-path"

    .line 655
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    const-string v0, "read-only"

    .line 656
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mReadOnlyView:Z

    const-string v0, "key_thirdappcall"

    .line 657
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsThridAppCall:Z

    const-string v0, "PornPicture"

    .line 658
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPornPicture:Z

    .line 660
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mOriginalSetPathString:Ljava/lang/String;

    const-string v0, "media-item-path"

    .line 662
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 664
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v3, "treat-back-as-up"

    .line 665
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zui/gallery/app/PhotoPage;->mTreatBackAsUp:Z

    const-string/jumbo v3, "start-in-filmstrip"

    .line 666
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zui/gallery/app/PhotoPage;->mStartInFilmstrip:Z

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open slow mSetPathString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   itemPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-static {}, Lcom/zui/gallery/util/DeviceTypeUtils;->isOnyx()Z

    move-result v3

    const v5, 0x7f05004c

    if-eqz v3, :cond_3

    .line 671
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v5, 0x7f050165

    :goto_1
    invoke-virtual {v3, v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v3

    .line 672
    invoke-static {v3}, Lcom/zui/gallery/ui/TiledScreenNail;->setPlaceholderColor(I)V

    goto :goto_2

    .line 674
    :cond_3
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Lcom/zui/gallery/ui/TiledScreenNail;->setPlaceholderColor(I)V

    :goto_2
    const-string v3, "index-hint"

    .line 678
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    .line 679
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    if-eqz v3, :cond_11

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open slow getMediaSet mSetPathString:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p2

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mSetPathString:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/zui/gallery/data/MediaSet;

    move-result-object v7

    .line 683
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaSet;->isSelfAlbum()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 684
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isSelfPhoto:Z

    goto :goto_3

    .line 685
    :cond_4
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaSet;->isScreenShotAlbum()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 686
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isScreenShotPhoto:Z

    goto :goto_3

    .line 687
    :cond_5
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaSet;->isPanoAlbum()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 688
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->isPanoPhoto:Z

    .line 690
    :cond_6
    :goto_3
    iget-boolean p2, p0, Lcom/zui/gallery/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz p2, :cond_7

    instance-of p2, v7, Lcom/zui/gallery/data/ComboAlbum;

    if-eqz p2, :cond_7

    .line 693
    move-object p2, v7

    check-cast p2, Lcom/zui/gallery/data/ComboAlbum;

    invoke-virtual {p2, v1}, Lcom/zui/gallery/data/ComboAlbum;->useNameOfChild(I)V

    .line 695
    :cond_7
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p2, v7}, Lcom/zui/gallery/ui/SelectionManager;->setSourceMediaSet(Lcom/zui/gallery/data/MediaSet;)V

    const-string p2, "continuous_shot_selection"

    .line 696
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    if-eqz p1, :cond_8

    .line 698
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result p1

    .line 699
    invoke-virtual {v7, v2, p1}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 700
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->getBestChoicePath(Ljava/util/ArrayList;)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    .line 701
    invoke-virtual {v7, p1, v1}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    :cond_8
    move-object v8, v0

    .line 706
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isWidget()Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_e

    .line 708
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 710
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 711
    invoke-virtual {v7, v2, v0}, Lcom/zui/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/data/MediaItem;

    .line 714
    instance-of v4, v3, Lcom/zui/gallery/data/LocalImage;

    if-eqz v4, :cond_9

    .line 715
    check-cast v3, Lcom/zui/gallery/data/LocalImage;

    .line 716
    iget v3, v3, Lcom/zui/gallery/data/LocalImage;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 717
    :cond_9
    instance-of v4, v3, Lcom/zui/gallery/data/LocalVideo;

    if-eqz v4, :cond_a

    .line 719
    check-cast v3, Lcom/zui/gallery/data/LocalVideo;

    .line 720
    iget v3, v3, Lcom/zui/gallery/data/LocalVideo;->id:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 723
    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 728
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v3, p2

    if-lez v0, :cond_d

    move v0, v2

    .line 729
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_d

    .line 730
    invoke-virtual {v8}, Lcom/zui/gallery/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v4

    .line 731
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v3, v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    if-eq v3, p2, :cond_e

    .line 738
    iput v3, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    .line 743
    :cond_e
    new-instance p1, Lcom/zui/gallery/app/PhotoDataAdapter;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    iget v9, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    .line 744
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    if-nez v0, :cond_f

    move v10, p2

    goto :goto_6

    :cond_f
    move v10, v2

    :goto_6
    iget-boolean v11, p0, Lcom/zui/gallery/app/PhotoPage;->isPanoPhoto:Z

    .line 745
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    if-nez p2, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {p2}, Lcom/zui/gallery/app/AppBridge;->isStaticCamera()Z

    move-result v2

    :goto_7
    move v12, v2

    move-object v4, p1

    invoke-direct/range {v4 .. v12}, Lcom/zui/gallery/app/PhotoDataAdapter;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/data/Path;IIZZ)V

    .line 747
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    .line 748
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/PhotoView;->setModel(Lcom/zui/gallery/ui/PhotoView$Model;)V

    .line 750
    new-instance p2, Lcom/zui/gallery/app/PhotoPage$3;

    invoke-direct {p2, p0}, Lcom/zui/gallery/app/PhotoPage$3;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/PhotoDataAdapter;->setDataListener(Lcom/zui/gallery/app/PhotoDataAdapter$DataListener;)V

    goto :goto_8

    .line 855
    :cond_11
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    .line 856
    new-instance p2, Lcom/zui/gallery/app/SinglePhotoDataAdapter;

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-direct {p2, v0, v3, p1}, Lcom/zui/gallery/app/SinglePhotoDataAdapter;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/data/MediaItem;)V

    iput-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    .line 857
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0, p2}, Lcom/zui/gallery/ui/PhotoView;->setModel(Lcom/zui/gallery/ui/PhotoView$Model;)V

    .line 858
    invoke-direct {p0, p1, v2}, Lcom/zui/gallery/app/PhotoPage;->updateCurrentPhoto(Lcom/zui/gallery/data/MediaItem;Z)V

    .line 860
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->delayUpdateHeadRoot()V

    .line 862
    :goto_8
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->initTitleBar()V

    .line 863
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p2, 0x7f0801bc

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_13

    .line 865
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mSecureAlbum:Lcom/zui/gallery/data/SecureAlbum;

    if-nez p1, :cond_13

    .line 866
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    if-eqz p1, :cond_12

    const p1, 0x7f08029a

    .line 867
    invoke-virtual {v5, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 p2, 0x4

    .line 869
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 874
    :cond_12
    new-instance p1, Lcom/zui/gallery/app/PhotoPageBottomControls;

    iget-object v4, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->isFavoriteGroup()Z

    move-result p2

    xor-int/lit8 v6, p2, 0x1

    iget-boolean v7, p0, Lcom/zui/gallery/app/PhotoPage;->isCalledFromCamera:Z

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/zui/gallery/app/PhotoPageBottomControls;-><init>(Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;Landroid/content/Context;Landroid/widget/RelativeLayout;ZZ)V

    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    .line 895
    :cond_13
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050209

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/PhotoPage;->status_bar_color:I

    .line 898
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBarsModifyBgColors()V

    .line 901
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    if-eqz p1, :cond_14

    .line 902
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 903
    sput-boolean v1, Lcom/zui/gallery/app/PhotoPage;->mContinuousShotPage:Z

    .line 904
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/PhotoView;->setContinuousShotMode(Z)V

    .line 905
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {p1, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->setContinuousShotMode(Z)V

    .line 906
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/app/PhotoPageBottomControls;->setContinuousShotMode(Z)V

    .line 907
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateFinishButton()V

    :cond_14
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCurrentImageUpdated()V
    .locals 2

    const-string v0, ""

    const-string v1, "=============="

    .line 2981
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unfreeze()V

    return-void
.end method

.method public onDeleteImage(Lcom/zui/gallery/data/Path;I)V
    .locals 2

    .line 2641
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->onCommitDeleteImage()V

    .line 2642
    iput-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mDeletePath:Lcom/zui/gallery/data/Path;

    const-string v0, ""

    const-string v1, "==========onDeleteImage"

    .line 2643
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2644
    :goto_0
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mDeleteIsFocus:Z

    .line 2645
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMediaSet:Lcom/zui/gallery/data/FilterDeleteSet;

    iget v1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentIndex:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/data/FilterDeleteSet;->addDeletion(Lcom/zui/gallery/data/Path;I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    const-string/jumbo v0, "wangmeicam"

    const-string v1, "photopage onDestroy"

    .line 3101
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3103
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AppBridge;->setServer(Lcom/zui/gallery/app/AppBridge$Server;)V

    .line 3104
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mScreenNailItem:Lcom/zui/gallery/data/SnailItem;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/SnailItem;->setScreenNail(Lcom/zui/gallery/ui/ScreenNail;)V

    .line 3105
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AppBridge;->detachScreenNail()V

    .line 3106
    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    .line 3107
    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mScreenNailSet:Lcom/zui/gallery/data/SnailAlbum;

    .line 3108
    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mScreenNailItem:Lcom/zui/gallery/data/SnailItem;

    .line 3110
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setRequestedOrientation(I)V

    .line 3111
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->closeContinuousSelection()V

    .line 3112
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/GLRoot;->setOrientationSource(Lcom/zui/gallery/ui/OrientationSource;)V

    .line 3113
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    if-eqz v0, :cond_1

    .line 3114
    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->cleanup()V

    .line 3117
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3118
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/MenuExecutor;->destroy()V

    .line 3119
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMoreDialog:Lzui/app/ActionDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lzui/app/ActionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3120
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMoreDialog:Lzui/app/ActionDialog;

    invoke-virtual {v0}, Lzui/app/ActionDialog;->dismiss()V

    .line 3121
    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mMoreDialog:Lzui/app/ActionDialog;

    .line 3123
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    if-eqz v0, :cond_3

    .line 3124
    invoke-virtual {v0}, Lcom/zui/gallery/ui/DetailsHelper;->close()V

    .line 3127
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCountinueOperationDialog:Lzui/app/ActionDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mContinueSavingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3129
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mContinueSavingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3130
    iput-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mContinueSavingDialog:Landroid/app/Dialog;

    .line 3132
    :cond_4
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->closeCountinueSavingDialog()V

    .line 3133
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->editorChooserDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3134
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->editorChooserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3136
    :cond_5
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->isCalledFromCamera:Z

    if-eqz v0, :cond_6

    .line 3137
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/zui/gallery/ui/TiledScreenNail;->setPlaceholderColor(I)V

    .line 3142
    :cond_6
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->undoCustomizeLayout()V

    const/4 v0, 0x0

    .line 3150
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->showMicroVideoBtn(Z)V

    .line 3151
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->updateLivePhotoIconView(Z)V

    .line 3152
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    if-eqz v1, :cond_7

    .line 3153
    invoke-virtual {v1}, Lcom/zui/gallery/ui/PhotoView;->destory()V

    .line 3156
    :cond_7
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/PhotoView;->setFullScreenBrowse(Z)V

    .line 3157
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 3158
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 3164
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v1, v0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->setNationBarVisible(Landroid/app/Activity;Z)Z

    .line 3166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    .line 3167
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 3168
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3169
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3171
    :cond_8
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->unUpdateViewMargin()V

    .line 3172
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 3

    .line 2629
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2630
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 2357
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2359
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->refreshHidingMessage()V

    .line 2360
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    .line 2364
    instance-of v3, v0, Lcom/zui/gallery/data/SnailItem;

    if-eqz v3, :cond_1

    return v1

    :cond_1
    if-nez v0, :cond_2

    return v1

    .line 2374
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-eq p1, v0, :cond_3

    return v2

    .line 2378
    :cond_3
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->onUpPressed()V

    return v1
.end method

.method public onLongPress(I)V
    .locals 2

    const-string v0, "PhotoPage"

    const-string v1, "onLongPress"

    .line 2572
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->getCurrentMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/zui/lenovoone/LenovoOneHelper;->drag(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaItem;I)Z

    .line 2574
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/zui/gallery/app/PhotoPage$Model;->isMicoVideoImage(I)Z

    move-result p1

    .line 2575
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v1, v0}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 2577
    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/PhotoPage;->muteVideo(Z)V

    .line 2578
    check-cast v1, Lcom/zui/gallery/data/LocalImage;

    invoke-direct {p0, v1}, Lcom/zui/gallery/app/PhotoPage;->manulPlayMicroVideo(Lcom/zui/gallery/data/LocalImage;)V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .line 5110
    invoke-super {p0, p1}, Lcom/zui/gallery/app/ActivityState;->onMultiWindowModeChanged(Z)V

    .line 5111
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 5112
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    and-int/lit16 p1, v1, -0x201

    goto :goto_0

    :cond_0
    or-int/lit16 p1, v1, 0x700

    .line 5118
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 2924
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->startToSetting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2925
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->startToSetting:Z

    return-void

    .line 2928
    :cond_0
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 2929
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    if-eqz v0, :cond_1

    .line 2930
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

    invoke-virtual {v0, v2}, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->removeListener(Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;)V

    .line 2931
    :cond_1
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsActive:Z

    .line 2933
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unfreeze()V

    .line 2934
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2936
    invoke-static {}, Lcom/zui/gallery/ui/DetailsHelper;->pause()V

    .line 2938
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 2939
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideDetails()V

    .line 2940
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    if-eqz v0, :cond_3

    .line 2941
    iget-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mIsFinishing:Z

    invoke-interface {v0, v2}, Lcom/zui/gallery/app/PhotoPage$Model;->pause(Z)V

    .line 2943
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->pause()V

    .line 2944
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2945
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2946
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->onCommitDeleteImage()V

    .line 2947
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMenuExecutor:Lcom/zui/gallery/ui/MenuExecutor;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/MenuExecutor;->pause()V

    .line 2948
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMediaSet:Lcom/zui/gallery/data/FilterDeleteSet;

    if-eqz v0, :cond_4

    .line 2949
    invoke-virtual {v0}, Lcom/zui/gallery/data/FilterDeleteSet;->clearDeletion()V

    .line 2951
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->unreisterNFCBeamUriCallBack()V

    .line 2956
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->backupRealLastStatus:Z

    .line 2957
    iput-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->hadPaused:Z

    .line 2959
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    .line 2962
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->isContinuousShot()Z

    move-result v0

    const-string/jumbo v2, "wugh2"

    if-eqz v0, :cond_5

    const-string v0, "Is continuous selection page"

    .line 2963
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "Is single page"

    .line 2966
    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    if-eqz v0, :cond_6

    .line 2969
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PhotoView;->stopPlayMicroVideo()V

    :cond_6
    const-string v0, "PhotoPage"

    const-string v2, "photopage onPause"

    .line 2971
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2973
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->isMuted:Z

    if-eqz v0, :cond_7

    .line 2974
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/PhotoPage;->muteVideo(Z)V

    :cond_7
    return-void
.end method

.method public onPictureCenter(Z)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 934
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mHasCameraScreennailOrPlaceholder:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 935
    :goto_1
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/PhotoView;->setWantPictureCenterCallbacks(Z)V

    .line 936
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_2

    .line 938
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 9

    .line 3021
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onResume()V

    const-string v0, "PhotoPage"

    const-string v1, "photopage onResume"

    .line 3022
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->noNeedToReload:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3024
    iput-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->noNeedToReload:Z

    return-void

    .line 3027
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v3, 0x7f050165

    invoke-virtual {v2, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3028
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    if-eqz v0, :cond_1

    .line 3029
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

    invoke-virtual {v0, v2}, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->addListener(Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;)V

    .line 3030
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    if-nez v0, :cond_2

    .line 3031
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    return-void

    .line 3034
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->transitionFromAlbumPageIfNeeded()V

    .line 3036
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->freeze()V

    .line 3038
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateTitileBar()V

    const/4 v0, 0x1

    .line 3039
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mIsActive:Z

    .line 3040
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p0, v2}, Lcom/zui/gallery/app/PhotoPage;->setContentPane(Lcom/zui/gallery/ui/GLView;)V

    .line 3041
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/zui/gallery/app/PhotoPage$Model;->resume()V

    .line 3042
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/PhotoView;->resume()V

    .line 3043
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 3044
    iget-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-nez v2, :cond_3

    .line 3045
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActionBar:Lcom/zui/gallery/app/GalleryActionBar;

    invoke-virtual {v2}, Lcom/zui/gallery/app/GalleryActionBar;->hide()V

    .line 3046
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3047
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/zui/gallery/ui/GLRoot;->setLightsOutMode(Z)V

    .line 3051
    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 3059
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mRecenterCameraOnResume:Z

    .line 3060
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3061
    iget-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    if-nez v2, :cond_4

    .line 3062
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->nfcBeamUriCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    invoke-virtual {v2, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->registerNFCBeamUirCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;)V

    .line 3064
    :cond_4
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->hideTip(Z)V

    .line 3066
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v3, 0x7f0801bc

    invoke-virtual {v2, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_7

    .line 3068
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mSecureAlbum:Lcom/zui/gallery/data/SecureAlbum;

    if-nez v2, :cond_7

    .line 3069
    iget-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    if-eqz v2, :cond_5

    const v2, 0x7f08029a

    .line 3070
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v3, 0x4

    .line 3072
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3075
    :cond_5
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/zui/gallery/app/PhotoPageBottomControls;->cleanup()V

    .line 3076
    :cond_6
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/gallery/app/ContinuousSelectionPage;

    if-nez v2, :cond_7

    .line 3077
    new-instance v2, Lcom/zui/gallery/app/PhotoPageBottomControls;

    iget-object v5, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->isFavoriteGroup()Z

    move-result v3

    xor-int/lit8 v7, v3, 0x1

    iget-boolean v8, p0, Lcom/zui/gallery/app/PhotoPage;->isCalledFromCamera:Z

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/zui/gallery/app/PhotoPageBottomControls;-><init>(Lcom/zui/gallery/app/PhotoPageBottomControls$Delegate;Landroid/content/Context;Landroid/widget/RelativeLayout;ZZ)V

    iput-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    .line 3078
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->refreshBottomControlsWhenReady()V

    .line 3083
    :cond_7
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->isContinuousShot()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3084
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->isCalledFromCamera:Z

    if-nez v0, :cond_8

    .line 3085
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    .line 3089
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->show()V

    goto :goto_0

    .line 3092
    :cond_8
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->hideBars()V

    .line 3093
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    invoke-virtual {v0}, Lcom/zui/gallery/app/PhotoPageBottomControls;->hide()V

    .line 3096
    :cond_9
    :goto_0
    new-instance v0, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;-><init>(Lcom/zui/gallery/app/PhotoPage;Lcom/zui/gallery/app/PhotoPage$1;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/PhotoPage$LocationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 13

    .line 2428
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mAppBridge:Lcom/zui/gallery/app/AppBridge;

    if-eqz v0, :cond_0

    .line 2429
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/app/AppBridge;->onSingleTapUp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2432
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2433
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mScreenNailItem:Lcom/zui/gallery/data/SnailItem;

    if-ne v0, v2, :cond_1

    goto/16 :goto_8

    .line 2438
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    and-int/lit16 v5, v2, 0x1000

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_1

    :cond_3
    move v5, v1

    :goto_1
    and-int/lit16 v6, v2, 0x2000

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    const v7, 0x8000

    and-int/2addr v2, v7

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_3

    :cond_5
    move v2, v1

    .line 2443
    :goto_3
    iget-object v7, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v7, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->isContinuousShot(I)Z

    move-result v7

    .line 2444
    iget-object v8, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v8, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->isDepthImage(I)Z

    move-result v8

    .line 2446
    iget-object v9, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v9, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->isPanorama(I)Z

    move-result v9

    .line 2447
    iget-object v10, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v10, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->isPanoVideo(I)Z

    move-result v10

    .line 2448
    iget-object v11, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v11, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->isMicoVideoImage(I)Z

    if-eqz v3, :cond_7

    .line 2453
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->lockScreem()V

    .line 2454
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v3}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result v3

    .line 2455
    iget-object v11, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v11}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    move-result v11

    .line 2456
    div-int/lit8 v12, v3, 0x2

    sub-int v12, p1, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0xc

    if-gt v12, v3, :cond_6

    div-int/lit8 v3, v11, 0x2

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0xc

    if-gt v3, v11, :cond_6

    move v3, v4

    goto :goto_4

    :cond_6
    move v3, v1

    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    .line 2461
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->lockScreem()V

    .line 2462
    iget-object v7, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v7, p1, p2}, Lcom/zui/gallery/ui/PhotoView;->isTouchBottomIcon(II)Z

    move-result v7

    :cond_8
    const/4 v11, 0x4

    .line 2465
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v12

    if-eq v11, v12, :cond_9

    .line 2466
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "image/gif"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2467
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/gallery/app/PhotoPage;->playGif(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_9
    if-eqz v8, :cond_a

    .line 2476
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->lockScreem()V

    .line 2477
    iget-object v8, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v8}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    .line 2478
    iget-object v8, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v8}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    .line 2479
    iget-object v8, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v8, p1, p2}, Lcom/zui/gallery/ui/PhotoView;->isTouchBottomIcon(II)Z

    move-result v8

    :cond_a
    if-eqz v3, :cond_f

    .line 2484
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PhotoView;->isImageScaled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2486
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->toggleBars()V

    return-void

    .line 2491
    :cond_b
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v7

    .line 2492
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result p1

    .line 2493
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    .line 2494
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2496
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object p2

    .line 2497
    sget-object v2, Lcom/zui/gallery/app/PhotoPage;->DEFALUT_VIDEO_TYPE:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/16 v2, 0x12

    if-ne v2, p1, :cond_c

    move v10, v4

    goto :goto_5

    :cond_c
    move v10, v1

    .line 2499
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play video mediaType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isWeixinVideo "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "PhotoPage"

    invoke-static {v2, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xd

    if-ne p2, p1, :cond_d

    move v11, v4

    goto :goto_6

    :cond_d
    move v11, v1

    .line 2509
    :goto_6
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mSecureAlbum:Lcom/zui/gallery/data/SecureAlbum;

    if-nez p1, :cond_e

    .line 2510
    iget-object v6, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/zui/gallery/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ZZZ)V

    goto/16 :goto_8

    .line 2512
    :cond_e
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/gallery/app/StateManager;->finishState(Lcom/zui/gallery/app/ActivityState;)V

    goto/16 :goto_8

    :cond_f
    if-eqz v6, :cond_10

    .line 2515
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->onBackPressed()V

    goto/16 :goto_8

    :cond_10
    if-eqz v5, :cond_11

    .line 2517
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class v0, Lcom/zui/gallery/app/GalleryActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "dismiss-keyguard"

    .line 2518
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2519
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    :cond_11
    if-eqz v2, :cond_12

    .line 2521
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->launchCamera()V

    goto/16 :goto_8

    :cond_12
    const-string p1, "inputFile"

    if-eqz v9, :cond_16

    .line 2523
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/PhotoView;->ismFullScreenBrowse()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 2524
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->toggleBars()V

    return-void

    .line 2527
    :cond_13
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.zui.gallery.PANORAMA_PHOTO_VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2528
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2530
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2531
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getHeight()I

    move-result v0

    const-string v1, "inputType"

    if-ne p1, v0, :cond_14

    const/4 p1, 0x2

    .line 2533
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    .line 2536
    :cond_14
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2538
    :goto_7
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-boolean p1, p1, Lcom/zui/gallery/app/AbstractGalleryActivity;->mIsSecureCameraCall:Z

    if-eqz p1, :cond_15

    .line 2539
    sget-object p1, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2542
    :cond_15
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_16
    if-eqz v10, :cond_17

    .line 2544
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.zui.gallery.PANORAMA_VIDEO_VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2545
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2546
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2547
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    :cond_17
    if-eqz v7, :cond_1a

    .line 2549
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PhotoView;->ismFullScreenBrowse()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 2550
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->toggleBars()V

    return-void

    .line 2553
    :cond_18
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_19

    .line 2554
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->launchContinuousSelection()V

    goto :goto_8

    .line 2556
    :cond_19
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p2, 0x7f10026c

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_8

    :cond_1a
    if-eqz v8, :cond_1b

    .line 2559
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/gallery/util/GalleryUtils;->startDepthEditor(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_8

    .line 2565
    :cond_1b
    sget-boolean p1, Lcom/zui/gallery/app/PhotoPage;->mContinuousShotPage:Z

    if-nez p1, :cond_1c

    .line 2566
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->toggleBars()V

    :cond_1c
    :goto_8
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 5

    .line 2859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateResult....requestCode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " & resuleCode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "privatekey"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const v2, 0x1869f

    if-ne p2, v2, :cond_0

    .line 2861
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->noNeedToReload:Z

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 2868
    iput-boolean v2, p0, Lcom/zui/gallery/app/PhotoPage;->mRecenterCameraOnResume:Z

    const/4 v3, -0x1

    if-eq p1, v0, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_5

    const/4 v4, 0x3

    if-eq p1, v4, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 p3, 0x22b8

    if-eq p1, p3, :cond_8

    goto/16 :goto_0

    .line 2871
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStateResult...photoid is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->cloudVideoId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "wangcancloud"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->cloudVideoId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2874
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2875
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->cloudVideoId:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2876
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p2}, Lcom/zui/gallery/app/GalleryApp;->getCloudManager()Lcom/zui/gallery/cloud/CloudManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/zui/gallery/cloud/CloudManager;->deleteCloudImage(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 2879
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {p1}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 2880
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p3

    .line 2879
    invoke-virtual {p1, p2, p3}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2883
    iget-object p2, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {p2, p1, v2}, Lcom/zui/gallery/app/PhotoPage$Model;->setCurrentPhoto(Lcom/zui/gallery/data/Path;I)V

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_9

    .line 2893
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1000ab

    new-array p3, v0, [Ljava/lang/Object;

    const v0, 0x7f100150

    .line 2895
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v2

    .line 2894
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2896
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    if-ne p2, v3, :cond_9

    .line 2888
    invoke-direct {p0, p3}, Lcom/zui/gallery/app/PhotoPage;->setCurrentPhotoByIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    if-nez p3, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "media-item-path"

    .line 2903
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "photo-index"

    .line 2904
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    if-eqz p1, :cond_8

    .line 2906
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-static {p1}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lcom/zui/gallery/app/PhotoPage$Model;->setCurrentPhoto(Lcom/zui/gallery/data/Path;I)V

    .line 2911
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStateResult , path is "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p3}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v3, :cond_9

    .line 2913
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->startAddToPrivacyGroup(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onUndoBarVisibilityChanged(Z)V
    .locals 0

    .line 3271
    invoke-virtual {p0}, Lcom/zui/gallery/app/PhotoPage;->refreshBottomControlsWhenReady()V

    return-void
.end method

.method public onUndoDeleteImage()V
    .locals 2

    const-string v0, ""

    const-string v1, "==========onUndoDeleteImage"

    .line 2650
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mDeletePath:Lcom/zui/gallery/data/Path;

    if-nez v0, :cond_0

    return-void

    .line 2656
    :cond_0
    iget-boolean v1, p0, Lcom/zui/gallery/app/PhotoPage;->mDeleteIsFocus:Z

    if-eqz v1, :cond_1

    .line 2657
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v1, v0}, Lcom/zui/gallery/app/PhotoPage$Model;->setFocusHintPath(Lcom/zui/gallery/data/Path;)V

    .line 2658
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMediaSet:Lcom/zui/gallery/data/FilterDeleteSet;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mDeletePath:Lcom/zui/gallery/data/Path;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/FilterDeleteSet;->removeDeletion(Lcom/zui/gallery/data/Path;)V

    const/4 v0, 0x0

    .line 2659
    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mDeletePath:Lcom/zui/gallery/data/Path;

    return-void
.end method

.method public playGif(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 2598
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zui/gallery/app/GifPlayerActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.VIEW"

    .line 2599
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/gif"

    .line 2600
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TITLE"

    .line 2601
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "From_Camera"

    .line 2602
    invoke-virtual {v1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2604
    sget-object p2, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    iget-object p3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNeedHightBright()Z

    move-result p3

    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2606
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p2, 0x7f1001c3

    .line 2609
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2610
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public refreshBottomControlsWhenReady()V
    .locals 4

    .line 3219
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    if-nez v0, :cond_0

    return-void

    .line 3226
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    if-eqz v0, :cond_1

    .line 3228
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    .line 3229
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 3228
    invoke-static {v1, v2}, Lcom/zui/gallery/data/GroupBucketHelper;->isExistInFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 3230
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mBottomControls:Lcom/zui/gallery/app/PhotoPageBottomControls;

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/zui/gallery/app/PhotoPageBottomControls;->setImageView(Z)V

    .line 3240
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public resetPhotoBottomActionBarLayout()V
    .locals 1

    .line 3442
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 3443
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->showBars()V

    :cond_0
    return-void
.end method

.method public saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "videovideo"

    .line 4009
    new-instance v1, Ljava/io/File;

    const-string v2, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4010
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".VideoCover"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4011
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 4013
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 4014
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4015
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 4016
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coverPath is exists, coverPath is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4019
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4020
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 4021
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4031
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2

    :catch_0
    move-exception p1

    .line 4027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveBitmapFile is fail, reason is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p2
.end method

.method public saveMicroAsVideo(Lcom/zui/gallery/data/LocalImage;)V
    .locals 6

    const-string v0, "PhotoPage"

    const-string v1, "saveMicroAsVideo"

    .line 4230
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 4232
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->isMicroVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4233
    invoke-virtual {p1}, Lcom/zui/gallery/data/LocalImage;->getMicroVideoInfo()Lcom/zui/gallery/data/MicroVideoInfo;

    move-result-object p1

    .line 4237
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 4238
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/PhotoPage;->checkAndGetDescDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4239
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4240
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4241
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 4244
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4245
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 4246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VID_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveMicroAsVideo  trimResultPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    .line 4250
    :try_start_0
    invoke-static {p1, v1, v2, v2}, Lcom/zui/gallery/common/BitmapUtils;->saveAsVideoUsingMuxer(Lcom/zui/gallery/data/MicroVideoInfo;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveMicroAsVideo error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setCurrentPos(Landroid/content/Intent;)V
    .locals 2

    .line 3012
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mApplication:Lcom/zui/gallery/app/GalleryApp;

    invoke-interface {v0}, Lcom/zui/gallery/app/GalleryApp;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3013
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    .line 3012
    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3015
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->setCurrentPhoto(Lcom/zui/gallery/data/Path;I)V

    :cond_0
    return-void
.end method

.method public setTitleInfo(I)V
    .locals 5

    .line 4348
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f1001db

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4349
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0008

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 4351
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->time_hour:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 4353
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->time_day:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4354
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 4356
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->time_day:Landroid/widget/TextView;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4357
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mTitleBarRightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public showLoadingDialog()V
    .locals 3

    const/4 v0, 0x1

    .line 4036
    iput-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->mLoadingVisible:Z

    .line 4038
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    if-nez v0, :cond_0

    .line 4039
    new-instance v0, Lzui/app/ProgressDialogX;

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    .line 4040
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 4041
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 4043
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mProgressDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    return-void
.end method

.method public showVideoMenu()V
    .locals 7

    .line 4107
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000d7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4108
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1002b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4109
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100033

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4110
    iget-object v3, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    .line 4112
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->favoriteEnable()Z

    .line 4132
    iget-boolean v3, p0, Lcom/zui/gallery/app/PhotoPage;->isSupportVideoAsWallpaper:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_0

    new-array v2, v6, [Ljava/lang/String;

    aput-object v0, v2, v5

    aput-object v1, v2, v4

    goto :goto_0

    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    aput-object v2, v1, v4

    move-object v2, v1

    .line 4143
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 4144
    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->getActionDialogBuilder(Landroid/app/Activity;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/app/PhotoPage$14;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/PhotoPage$14;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    .line 4145
    invoke-virtual {v0, v2, v1}, Lzui/app/ActionDialog$Builder;->setOptionItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 4176
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/PhotoPage$13;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/PhotoPage$13;-><init>(Lcom/zui/gallery/app/PhotoPage;)V

    invoke-virtual {v0, v1, v2}, Lzui/app/ActionDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    .line 4185
    invoke-virtual {v0}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mMoreDialog:Lzui/app/ActionDialog;

    .line 4186
    invoke-virtual {v0}, Lzui/app/ActionDialog;->show()V

    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 1

    .line 2267
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mPhotoView:Lcom/zui/gallery/ui/PhotoView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/PhotoView;->switchWithCaptureAnimation(I)Z

    move-result p1

    return p1
.end method

.method public updateLivePhotoIconView(Z)V
    .locals 3

    .line 2583
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->isMicoVideoImage(I)Z

    move-result v0

    .line 2584
    iget-object v2, p0, Lcom/zui/gallery/app/PhotoPage;->mModel:Lcom/zui/gallery/app/PhotoPage$Model;

    invoke-interface {v2, v1}, Lcom/zui/gallery/app/PhotoPage$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2586
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showLivePhotoIconView()V

    goto :goto_0

    .line 2588
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->hideLivePhotoIconView()V

    :goto_0
    if-nez v0, :cond_1

    .line 2591
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->isMuted:Z

    if-eqz p1, :cond_1

    .line 2592
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/PhotoPage;->muteVideo(Z)V

    :cond_1
    return-void
.end method

.method protected updateTitleBarVisibility(Landroid/content/res/Configuration;)V
    .locals 5

    .line 5231
    iget-object v0, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getRootView()Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f080297

    .line 5232
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 5234
    iget-object v1, p0, Lcom/zui/gallery/app/PhotoPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v1

    .line 5235
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 5236
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string p1, "aoe"

    const-string v4, "photopage updateTitleBarVisibility"

    .line 5244
    invoke-static {p1, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5245
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5259
    :goto_0
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    if-eqz p1, :cond_1

    .line 5260
    sget-boolean p1, Lcom/zui/gallery/app/PhotoPage;->mContinuousShotPage:Z

    if-eqz p1, :cond_2

    .line 5261
    invoke-direct {p0}, Lcom/zui/gallery/app/PhotoPage;->updateFinishButton()V

    .line 5262
    iget-boolean p1, p0, Lcom/zui/gallery/app/PhotoPage;->mIsContinuousMode:Z

    if-eqz p1, :cond_2

    .line 5263
    iget-object p1, p0, Lcom/zui/gallery/app/PhotoPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/gallery/app/PhotoPage;->setTitleInfo(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f080370

    .line 5269
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 5270
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5271
    iget-boolean v0, p0, Lcom/zui/gallery/app/PhotoPage;->isCalledFromCamera:Z

    if-eqz v0, :cond_2

    .line 5272
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_2
    :goto_1
    return-void
.end method
