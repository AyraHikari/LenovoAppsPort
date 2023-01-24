.class public Lcom/zui/gallery/filtershow/FilterShowActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;,
        Lcom/zui/gallery/filtershow/FilterShowActivity$LoadHighresBitmapTask;
    }
.end annotation


# static fields
.field private static final FIRST:Ljava/lang/String; = "first"

.field public static GROUP_ID:Ljava/lang/String; = "group_id"

.field public static IS_PANAPHOTO:Ljava/lang/String; = "is_panaphoto"

.field public static IS_PANO:Ljava/lang/String; = "is_pano"

.field public static IS_SCREENSHOT:Ljava/lang/String; = "is_screenshot"

.field public static IS_SCREENSHOTS_LAUNCHER:Ljava/lang/String; = "is_screenshots_launcher"

.field public static IS_SCREEN_CHANGE:Z = false

.field public static IS_SELF:Ljava/lang/String; = "is_self"

.field public static final LAUNCH_FULLSCREEN:Ljava/lang/String; = "launch-fullscreen"

.field private static final LIMIT_SUPPORTS_HIGHRES:J = 0x8000000L

.field public static final LOGTAG:Ljava/lang/String; = "FilterShowActivity"

.field private static final MaxSize:I = 0x3f3b8

.field public static final RESET_TO_LOADED:Z = false

.field private static final SELECT_PICTURE:I = 0x1

.field public static final TINY_PLANET_ACTION:Ljava/lang/String; = "com.android.camera.action.TINY_PLANET"

.field public static cropSelected:I = -0x1

.field public static cropType:I = 0x0

.field public static cropVertical:Z = false

.field public static curvesIndex:I = 0x0

.field public static isCropSelected:Z = false

.field public static isDrawColor:Z = false

.field public static isEarseaDraw:Z = false

.field public static isEarseaMosaic:Z = false

.field public static isGeometryApplied:Z = false

.field public static isLandscape:Z = false

.field public static isPanoPhoto:Z = false

.field public static isSave:Z = false

.field public static isScreenShot:Z = false

.field public static isScreenShotLaunch:Z = false

.field public static isSelf:Z = false

.field public static isclick:Z = false

.field public static mCurrentPanel:I = -0x1

.field public static mScrollIndex:I = -0x1

.field public static mShareTime:J = -0x1L


# instance fields
.field private REQUEST_ASK_PERMISSIONS:I

.field private controlWidth:F

.field private control_text_leftpadding:I

.field public crop_margin:Landroid/view/View;

.field private delPicPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filterRepresentationOfCopy:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

.field private filters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private filtersAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/filters/FilterRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field public framelayoutMainpanel:Landroid/widget/FrameLayout;

.field private groupId:I

.field private isChangeCaption:Z

.field private isConfigurationChanged:Z

.field private isFinish:Z

.field private isFromPrivacy:Z

.field public isMirrorHor:Z

.field private isModify:Z

.field public isOnCreate:Z

.field private isOnStop:Z

.field private isPano:Z

.field public isReload:Z

.field private isSaving:Z

.field private isShare:Z

.field private mAction:Ljava/lang/String;

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/gallery/filtershow/category/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialog:Lzui/app/ActionDialog;

.field private mApp:Lcom/zui/gallery/app/GalleryApp;

.field private mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

.field public mBoundServiceStart:Z

.field private mCaptionAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mCategoryBordersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mCategoryCropAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mCategoryFiltersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mCategoryGeometryAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mCategoryRotationAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mCategoryVersionsAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mControlFramlayout:Landroid/view/View;

.field private mCrop_top_bar:Landroid/widget/RelativeLayout;

.field private mCurrentDialog:Landroid/content/DialogInterface;

.field private mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

.field private mCurrentLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mCurrentLooksType:I

.field private mCurrentMenu:Landroid/widget/PopupMenu;

.field private mDelicacyLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mDisplay:Landroid/view/Display;

.field private mDrawInit:Z

.field public mEditControl:Landroid/view/View;

.field private mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

.field private final mFilterShowActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

.field private mGlTextureLimit:Z

.field private mHandledSwipeView:Landroid/view/View;

.field private mHandledSwipeViewLastDelta:F

.field private mHandler:Landroid/os/Handler;

.field private mHandlingSwipeButton:Z

.field public mHintTouchPoint:Landroid/graphics/Point;

.field private mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsBound:Z

.field private mIsLandRightOrientation:Z

.field public mIsVertical:Z

.field private mLoadBitmapTask:Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;

.field private mLoadingVisible:Z

.field mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

.field private mMosicInit:Z

.field private mMovieLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mNeedBright:Z

.field private mNoStorageDialog:Lzui/app/ActionDialog;

.field public mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field public mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

.field private mOnPause:Z

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mOriginalImageUri:Landroid/net/Uri;

.field private mOriginalPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

.field private mPortraitLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

.field private mProgressDialog:Lzui/app/ProgressDialogX;

.field private mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field private mRequestScanFileListener2:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field private mSaveProgressDialog:Lzui/app/ProgressDialogX;

.field private mSavingProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBrightnessObserver:Landroid/database/ContentObserver;

.field private final mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSecureCameraCall:Z

.field private mSelectedImageUri:Landroid/net/Uri;

.field public mSelectedPanelId:I

.field private mShareActionProvider:Landroid/widget/ShareActionProvider;

.field private mSharedOutputFile:Ljava/io/File;

.field private mSharingImage:Z

.field private mShowingImageStatePanel:Z

.field private mShowingTinyPlanet:Z

.field private mShowingVersionsPanel:Z

.field private mSwipeStartX:F

.field private mSwipeStartY:F

.field private mTevtViewCancel:Landroid/widget/ImageView;

.field private mTevtViewCancelText:Landroid/widget/TextView;

.field private mTevtViewSave:Landroid/widget/TextView;

.field public mTextArea:Landroid/widget/FrameLayout;

.field private mTitleBar:Landroid/widget/RelativeLayout;

.field private mUserSetBrightnessObserver:Landroid/database/ContentObserver;

.field private mVersions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionsCounter:I

.field protected needRebound:Z

.field private privacyFilePath:Ljava/lang/String;

.field private shareCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 183
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const-string v0, ""

    .line 186
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mAction:Ljava/lang/String;

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    .line 194
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    .line 196
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    .line 197
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCrop_top_bar:Landroid/widget/RelativeLayout;

    .line 198
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewCancel:Landroid/widget/ImageView;

    .line 199
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewCancelText:Landroid/widget/TextView;

    .line 200
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewSave:Landroid/widget/TextView;

    .line 201
    new-instance v1, Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    .line 202
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    const/4 v1, 0x0

    .line 204
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isConfigurationChanged:Z

    .line 209
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShowingTinyPlanet:Z

    .line 210
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 211
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShowingVersionsPanel:Z

    .line 213
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    .line 216
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 218
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSharingImage:Z

    .line 224
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalImageUri:Landroid/net/Uri;

    .line 225
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 227
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedImageUri:Landroid/net/Uri;

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mActions:Ljava/util/ArrayList;

    .line 232
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 234
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mPortraitLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 235
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mDelicacyLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 236
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMovieLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 238
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 239
    iput v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentLooksType:I

    .line 241
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 242
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 243
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 244
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryVersionsAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 245
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryRotationAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 246
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryCropAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 247
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCaptionAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 252
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mVersions:Ljava/util/Vector;

    .line 254
    iput v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mVersionsCounter:I

    .line 256
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandlingSwipeButton:Z

    .line 257
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    const/4 v2, 0x0

    .line 258
    iput v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeViewLastDelta:F

    .line 259
    iput v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSwipeStartX:F

    .line 260
    iput v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSwipeStartY:F

    .line 263
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundServiceStart:Z

    .line 264
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsBound:Z

    .line 266
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentDialog:Landroid/content/DialogInterface;

    .line 267
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentMenu:Landroid/widget/PopupMenu;

    .line 268
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mLoadingVisible:Z

    .line 309
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isShare:Z

    .line 310
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsVertical:Z

    const/16 v3, 0xb

    .line 311
    iput v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->REQUEST_ASK_PERMISSIONS:I

    .line 312
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isModify:Z

    .line 315
    iput v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->controlWidth:F

    const/4 v2, -0x1

    .line 319
    iput v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedPanelId:I

    .line 321
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mDrawInit:Z

    .line 322
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMosicInit:Z

    .line 325
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsLandRightOrientation:Z

    .line 333
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isReload:Z

    .line 334
    iput v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->control_text_leftpadding:I

    .line 339
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFromPrivacy:Z

    .line 351
    new-instance v2, Lcom/zui/gallery/filtershow/FilterShowActivity$1;

    invoke-direct {v2, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$1;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 418
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mContext:Landroid/content/Context;

    .line 425
    new-instance v2, Lcom/zui/gallery/filtershow/FilterShowActivity$2;

    invoke-direct {v2, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$2;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 433
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->needRebound:Z

    .line 435
    new-instance v2, Lcom/zui/gallery/filtershow/FilterShowActivity$3;

    invoke-direct {v2, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$3;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mFilterShowActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    .line 453
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    .line 456
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSaveProgressDialog:Lzui/app/ProgressDialogX;

    .line 460
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isOnCreate:Z

    .line 471
    iput v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->shareCount:I

    .line 472
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFinish:Z

    .line 474
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSaving:Z

    .line 1290
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandler:Landroid/os/Handler;

    .line 1399
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->filterRepresentationOfCopy:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 1719
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isChangeCaption:Z

    .line 2281
    new-instance v0, Lcom/zui/gallery/filtershow/FilterShowActivity$11;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$11;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 2422
    new-instance v0, Lcom/zui/gallery/filtershow/FilterShowActivity$12;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$12;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mRequestScanFileListener2:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .line 3589
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHintTouchPoint:Landroid/graphics/Point;

    .line 3682
    new-instance v0, Lcom/zui/gallery/filtershow/FilterShowActivity$19;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity$19;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mScreenBrightnessObserver:Landroid/database/ContentObserver;

    .line 3692
    new-instance v0, Lcom/zui/gallery/filtershow/FilterShowActivity$20;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity$20;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mUserSetBrightnessObserver:Landroid/database/ContentObserver;

    .line 3908
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isOnStop:Z

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)Lcom/zui/gallery/filtershow/pipeline/ProcessingService;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isOnStop:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isShare:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/zui/gallery/filtershow/FilterShowActivity;Z)Z
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isShare:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showNoStorageDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/widget/TextView;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewSave:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->filtersAdd:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->filters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShowingTinyPlanet:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/zui/gallery/filtershow/FilterShowActivity;Z)Z
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShowingTinyPlanet:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/zui/gallery/filtershow/FilterShowActivity;)I
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getScreenImageSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/view/View;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mControlFramlayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalImageUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalImageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)Lcom/zui/gallery/filtershow/pipeline/ImagePreset;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/net/Uri;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSecureCameraCall:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Lcom/zui/gallery/app/GalleryApp;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFinish:Z

    return p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/filtershow/FilterShowActivity;)F
    .locals 0

    .line 183
    iget p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->controlWidth:F

    return p0
.end method

.method static synthetic access$3000(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->hideSavingProgress()V

    return-void
.end method

.method static synthetic access$302(Lcom/zui/gallery/filtershow/FilterShowActivity;F)F
    .locals 0

    .line 183
    iput p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->controlWidth:F

    return p1
.end method

.method static synthetic access$3100(Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/lang/String;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updatePanoEditComplete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/net/Uri;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->deleteUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setTopMargin(Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/os/Handler;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/content/Context;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/filtershow/FilterShowActivity;)I
    .locals 0

    .line 183
    iget p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->control_text_leftpadding:I

    return p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/filtershow/FilterShowActivity;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showExitEditorDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/zui/gallery/filtershow/FilterShowActivity;)Z
    .locals 0

    .line 183
    iget-boolean p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFromPrivacy:Z

    return p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/filtershow/FilterShowActivity;)Landroid/net/Uri;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedImageUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$802(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedImageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$900(Lcom/zui/gallery/filtershow/FilterShowActivity;)Ljava/lang/String;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->privacyFilePath:Ljava/lang/String;

    return-object p0
.end method

.method private clearGalleryBitmapPool()V
    .locals 2

    .line 2105
    new-instance v0, Lcom/zui/gallery/filtershow/FilterShowActivity$10;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$10;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 2112
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private deletePreset(I)V
    .locals 0

    return-void
.end method

.method private deleteUri(Landroid/net/Uri;)V
    .locals 2

    .line 3773
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3775
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 3777
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3778
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3779
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private extractXMPData(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3517
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    .line 3516
    invoke-static {p1, v0}, Lcom/zui/gallery/filtershow/tools/XmpPresets;->extractXMPData(Landroid/content/Context;Lcom/zui/gallery/filtershow/imageshow/MasterImage;)Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;

    move-result-object p1

    goto :goto_0

    .line 3520
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3519
    invoke-static {p1, v0, v1}, Lcom/zui/gallery/filtershow/tools/XmpPresets;->extractXMPData(Landroid/content/Context;Lcom/zui/gallery/filtershow/imageshow/MasterImage;Landroid/net/Uri;)Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 3525
    :cond_1
    iget-object v0, p1, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;->originalimage:Landroid/net/Uri;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalImageUri:Landroid/net/Uri;

    .line 3526
    iget-object p1, p1, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;->preset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalPreset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    return-void
.end method

.method private fillBorders()V
    .locals 5

    .line 1311
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 1312
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getBorders()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 1314
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1315
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    const v4, 0x7f10005f

    .line 1316
    invoke-virtual {p0, v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    if-nez v2, :cond_0

    const v4, 0x7f1001c5

    .line 1318
    invoke-virtual {p0, v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1322
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v2, :cond_2

    .line 1323
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 1325
    :cond_2
    new-instance v2, Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {v2, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 1326
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 1327
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v3

    if-eqz v3, :cond_3

    .line 1328
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 1330
    :cond_3
    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v4, Lcom/zui/gallery/filtershow/category/Action;

    invoke-direct {v4, p0, v2, v1}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;I)V

    invoke-virtual {v3, v4}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private fillCaptions()V
    .locals 5

    .line 1102
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 1103
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getCaptions()Ljava/util/ArrayList;

    move-result-object v0

    .line 1104
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCaptionAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_0

    .line 1105
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 1107
    :cond_0
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCaptionAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 1109
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 1110
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1111
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 1113
    :cond_1
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCaptionAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v3, Lcom/zui/gallery/filtershow/category/Action;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;I)V

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private fillCropFilter()V
    .locals 3

    .line 1186
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 1187
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getCropFilter()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryCropAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_0

    .line 1189
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 1191
    :cond_0
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryCropAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 1192
    new-instance v2, Lcom/zui/gallery/filtershow/category/Action;

    invoke-direct {v2, p0, v0}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    return-void
.end method

.method private fillDelicacyLooks()V
    .locals 5

    .line 2938
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 2939
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getDelicacyLooks()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2941
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->filters:Ljava/util/ArrayList;

    .line 2943
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mDelicacyLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_1

    .line 2944
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 2946
    :cond_1
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mDelicacyLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 2947
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2948
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mDelicacyLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setItemHeight(I)V

    .line 2949
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 2950
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mDelicacyLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v3, Lcom/zui/gallery/filtershow/category/Action;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;I)V

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    goto :goto_0

    .line 2953
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillLooks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mDelicacyLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cropTEST"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2956
    instance-of v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    if-eqz v1, :cond_3

    .line 2957
    check-cast v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    const/4 v1, 0x1

    .line 2958
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryLookPanel(Z)V

    :cond_3
    return-void
.end method

.method private fillEditors()V
    .locals 2

    .line 1257
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorChanSat;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/EditorChanSat;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1258
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorGrad;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/EditorGrad;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1259
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorDraw;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/EditorDraw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1260
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/EditorColorBorder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1261
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/BasicEditor;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/BasicEditor;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1262
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/ImageOnlyEditor;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/ImageOnlyEditor;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1263
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/EditorTinyPlanet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1264
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorRedEye;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/EditorRedEye;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1265
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/EditorCrop;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1266
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorMirror;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/EditorMirror;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1267
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorRotate;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/EditorRotate;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1268
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    new-instance v1, Lcom/zui/gallery/filtershow/editors/EditorStraighten;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/editors/EditorStraighten;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    .line 1269
    new-instance v0, Lcom/zui/gallery/filtershow/editors/EditorCaption;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/editors/EditorCaption;-><init>()V

    .line 1270
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/editors/EditorCaption;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    .line 1271
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->addEditor(Lcom/zui/gallery/filtershow/editors/Editor;)V

    return-void
.end method

.method private fillEffects()V
    .locals 4

    .line 1084
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 1085
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getEffects()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->filtersAdd:Ljava/util/ArrayList;

    .line 1089
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_1

    .line 1090
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 1092
    :cond_1
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 1093
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 1094
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1095
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getTextId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->setName(Ljava/lang/String;)V

    .line 1097
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v3, Lcom/zui/gallery/filtershow/category/Action;

    invoke-direct {v3, p0, v1}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private fillLooks()V
    .locals 5

    .line 2882
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 2883
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getLooks()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2885
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->filters:Ljava/util/ArrayList;

    .line 2887
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_1

    .line 2888
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 2890
    :cond_1
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 2891
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2892
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setItemHeight(I)V

    .line 2893
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 2894
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v3, Lcom/zui/gallery/filtershow/category/Action;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;I)V

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    goto :goto_0

    .line 2901
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillLooks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cropTEST"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2904
    instance-of v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    if-eqz v1, :cond_3

    .line 2905
    check-cast v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    const/4 v1, 0x1

    .line 2906
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryLookPanel(Z)V

    :cond_3
    return-void
.end method

.method private fillMovieLooks()V
    .locals 5

    .line 2964
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 2965
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getMovieLooks()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2967
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->filters:Ljava/util/ArrayList;

    .line 2969
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMovieLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_1

    .line 2970
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 2972
    :cond_1
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMovieLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 2973
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2974
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMovieLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setItemHeight(I)V

    .line 2975
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 2976
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMovieLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v3, Lcom/zui/gallery/filtershow/category/Action;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;I)V

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    goto :goto_0

    .line 2979
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillLooks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMovieLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cropTEST"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2982
    instance-of v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    if-eqz v1, :cond_3

    .line 2983
    check-cast v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    const/4 v1, 0x1

    .line 2984
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryLookPanel(Z)V

    :cond_3
    return-void
.end method

.method private fillPortraitLooks()V
    .locals 5

    .line 2912
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 2913
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getPortraitLooks()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2915
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->filters:Ljava/util/ArrayList;

    .line 2917
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mPortraitLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_1

    .line 2918
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 2920
    :cond_1
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mPortraitLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 2921
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 2922
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mPortraitLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setItemHeight(I)V

    .line 2923
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 2924
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mPortraitLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v3, Lcom/zui/gallery/filtershow/category/Action;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;I)V

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    goto :goto_0

    .line 2927
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fillLooks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mPortraitLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cropTEST"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2930
    instance-of v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    if-eqz v1, :cond_3

    .line 2931
    check-cast v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    const/4 v1, 0x1

    .line 2932
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryLookPanel(Z)V

    :cond_3
    return-void
.end method

.method private fillRotationFilter()V
    .locals 3

    .line 1141
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 1142
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getRotationFilter()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 1143
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryRotationAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_0

    .line 1144
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 1146
    :cond_0
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryRotationAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 1147
    new-instance v2, Lcom/zui/gallery/filtershow/category/Action;

    invoke-direct {v2, p0, v0}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    return-void
.end method

.method private fillTools()V
    .locals 6

    .line 1119
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getTools()Ljava/util/ArrayList;

    move-result-object v0

    .line 1121
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v1, :cond_0

    .line 1122
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 1124
    :cond_0
    new-instance v1, Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    const/4 v1, 0x0

    .line 1126
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 1127
    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v5, Lcom/zui/gallery/filtershow/category/Action;

    invoke-direct {v5, p0, v2}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    invoke-virtual {v4, v5}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    .line 1128
    instance-of v2, v2, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 1133
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/filters/FilterDrawRepresentation;-><init>()V

    .line 1134
    new-instance v1, Lcom/zui/gallery/filtershow/category/Action;

    invoke-direct {v1, p0, v0}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1135
    invoke-virtual {v1, v3}, Lcom/zui/gallery/filtershow/category/Action;->setIsDoubleAction(Z)V

    .line 1136
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    :cond_3
    return-void
.end method

.method private fillVersions()V
    .locals 2

    .line 1017
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryVersionsAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v0, :cond_0

    .line 1018
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 1020
    :cond_0
    new-instance v0, Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-direct {v0, p0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryVersionsAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    const/4 v1, 0x1

    .line 1021
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->setShowAddButton(Z)V

    return-void
.end method

.method private getDefaultShareIntent()Landroid/content/Intent;
    .locals 3

    .line 2565
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80000

    .line 2566
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 2567
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "image/jpeg"

    .line 2568
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2569
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getNewFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 2570
    sget-object v1, Lcom/zui/gallery/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 2571
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2570
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.extra.STREAM"

    .line 2572
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method private getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 3786
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3789
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "file"

    .line 3790
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3791
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "content"

    .line 3792
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3793
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p1, "_data"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 3795
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3796
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_3

    .line 3798
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 3801
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_0
    return-object v0
.end method

.method private getRightMessageDialogTheme()I
    .locals 1

    .line 3946
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1101d3

    goto :goto_0

    :cond_0
    const v0, 0x7f1101d0

    :goto_0
    return v0
.end method

.method private getScreenImageSize()I
    .locals 2

    .line 2214
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2215
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2216
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private hideSavingProgress()V
    .locals 2

    .line 2240
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2241
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2242
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2243
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initDeleteDialog()V
    .locals 3

    const v0, 0x7f1000cf

    .line 3808
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zui/gallery/util/GalleryUtils;->getActionDialogBuilder(Landroid/app/Activity;Ljava/lang/String;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 3811
    invoke-virtual {v0, v1}, Lzui/app/ActionDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$22;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$22;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    const v2, 0x7f1000b9

    .line 3812
    invoke-virtual {v0, v2, v1}, Lzui/app/ActionDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$21;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$21;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    const v2, 0x7f100068

    .line 3820
    invoke-virtual {v0, v2, v1}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    .line 3826
    invoke-virtual {v0}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mAlertDialog:Lzui/app/ActionDialog;

    return-void
.end method

.method private isValidActivity()Z
    .locals 1

    .line 2116
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$onActivityResult$0(Landroid/app/Activity;Lcom/zui/gallery/banner/MonitorHomeReceiver;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3386
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$onActivityResult$1(Landroid/app/Activity;Lcom/zui/gallery/banner/MonitorHomeReceiver;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 3396
    invoke-virtual {p1, p0}, Lcom/zui/gallery/banner/MonitorHomeReceiver;->setRecentApps(Z)V

    :cond_0
    return-void
.end method

.method private limitTexture(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1243
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1244
    invoke-static {p1}, Lcom/zui/gallery/filtershow/caption/utils/Utils;->getGLESTextureLimit(Landroid/graphics/Bitmap;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mGlTextureLimit:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1246
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private loadActions()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1032
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1033
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/filtershow/category/Action;

    .line 1034
    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, 0x60

    invoke-direct {v3, v0, v0, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3, v0}, Lcom/zui/gallery/filtershow/category/Action;->setImageFrame(Landroid/graphics/Rect;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadXML()V
    .locals 2

    const v0, 0x7f0b0045

    .line 768
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setContentView(I)V

    const v0, 0x7f08023d

    .line 784
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditControl:Landroid/view/View;

    const v0, 0x7f080360

    .line 785
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTextArea:Landroid/widget/FrameLayout;

    const v0, 0x7f080101

    .line 786
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mControlFramlayout:Landroid/view/View;

    .line 787
    sget-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$5;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$5;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const v0, 0x7f08010b

    .line 822
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->crop_margin:Landroid/view/View;

    const v0, 0x7f080118

    .line 823
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewCancel:Landroid/widget/ImageView;

    const v0, 0x7f080119

    .line 824
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewCancelText:Landroid/widget/TextView;

    const v0, 0x7f08011a

    .line 825
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    const v0, 0x7f080117

    .line 826
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCrop_top_bar:Landroid/widget/RelativeLayout;

    .line 827
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTitleBar:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setTitleBarLoation(Landroid/view/View;Landroid/view/View;)V

    const v0, 0x7f08023b

    .line 828
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->framelayoutMainpanel:Landroid/widget/FrameLayout;

    .line 829
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewCancel:Landroid/widget/ImageView;

    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$6;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$6;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewCancelText:Landroid/widget/TextView;

    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$7;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$7;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08011b

    .line 853
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewSave:Landroid/widget/TextView;

    .line 854
    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$8;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$8;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 986
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setSaveOrCancel()V

    const v0, 0x7f0801ea

    .line 987
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    .line 988
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 989
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setupEditors()V

    const-string v0, "hardKill"

    const-string v1, "loadXML: aaa"

    .line 991
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->hide()V

    .line 993
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->attach()V

    .line 995
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setupStatePanel()V

    return-void
.end method

.method private manageUserPresets()V
    .locals 3

    .line 2766
    new-instance v0, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;-><init>()V

    .line 2767
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "NoticeDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private processIntent()V
    .locals 3

    .line 1219
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "launch-fullscreen"

    const/4 v2, 0x0

    .line 1220
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1224
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mAction:Ljava/lang/String;

    .line 1225
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedImageUri:Landroid/net/Uri;

    .line 1227
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->limitTexture(Landroid/net/Uri;)V

    .line 1228
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalImageUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    if-nez v0, :cond_3

    .line 1231
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFromPrivacy:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1234
    :cond_2
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->pickImage()V

    goto :goto_1

    .line 1232
    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method private requestScanFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2266
    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mRequestScanFileListener:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private requestScanFileDestory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2274
    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mRequestScanFileListener2:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private saveCutoutValue(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 3837
    new-instance v0, Lcom/zui/gallery/filtershow/FilterShowActivity$23;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/FilterShowActivity$23;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveHighlight(Z)V
    .locals 1

    .line 2857
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2861
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setSaveOrCancel()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2864
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewCancelText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDarkStatusIcon(Z)V
    .locals 2

    .line 2642
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2644
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v1, -0x2001

    .line 2650
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method private setDefaultValues()V
    .locals 3

    .line 1275
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    .line 1278
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->setTextSize(I)V

    const/high16 v1, 0x40800000    # 4.0f

    .line 1279
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->setTrianglePadding(I)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 1280
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Lcom/zui/gallery/filtershow/ui/FramedTextButton;->setTriangleSize(I)V

    const v1, 0x7f070104

    .line 1282
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f060156

    .line 1283
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 1284
    invoke-static {v1, v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->setCurveHandle(Landroid/graphics/drawable/Drawable;I)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 1285
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/Spline;->setCurveWidth(I)V

    const/4 v0, 0x0

    .line 1287
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalImageUri:Landroid/net/Uri;

    return-void
.end method

.method private setFullScreenBrowse()V
    .locals 2

    .line 2635
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2636
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 2637
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2638
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setSaveOrCancel()V
    .locals 2

    .line 2875
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedPanelId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 2876
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewSave:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2877
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewCancelText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setTitleBarLoation(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 3710
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    if-eqz v0, :cond_0

    return-void

    .line 3713
    :cond_0
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getCutout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3714
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\\|"

    .line 3715
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3716
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 3717
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 3718
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v2, 0x2

    .line 3719
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v2, 0x3

    .line 3720
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 3729
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3730
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3731
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3732
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3734
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->crop_margin:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3735
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result p2

    const/16 v0, 0x26

    invoke-static {p0, v0}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3736
    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->crop_margin:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3740
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3741
    invoke-direct {p0, v0, p1, p2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->saveCutoutValue(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setTopMargin(Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 3884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\\|"

    .line 3885
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3886
    array-length p1, p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3887
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3888
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 3889
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 3890
    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3892
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->crop_margin:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3893
    invoke-static {p0}, Lcom/zui/gallery/util/GalleryUtils;->getStatusHeight(Landroid/content/Context;)I

    move-result p2

    const/16 p3, 0x26

    invoke-static {p0, p3}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3894
    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->crop_margin:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setupEditors()V
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    const v1, 0x7f080172

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->setContainer(Landroid/widget/FrameLayout;)V

    .line 1252
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/editors/EditorManager;->addEditors(Lcom/zui/gallery/filtershow/EditorPlaceHolder;)V

    .line 1253
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->setOldViews(Ljava/util/Vector;)V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 3

    .line 3275
    new-instance v0, Lzui/app/MessageDialog$Builder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getRightMessageDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1000cf

    .line 3276
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    .line 3277
    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$16;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$16;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    const v2, 0x7f1000b9

    invoke-virtual {v0, v2, v1}, Lzui/app/MessageDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 3286
    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$17;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$17;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    const v2, 0x7f100068

    invoke-virtual {v0, v2, v1}, Lzui/app/MessageDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 3292
    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    return-void
.end method

.method private showExitEditorDialog()V
    .locals 3

    const/4 v0, 0x0

    .line 3231
    invoke-static {p0, v0}, Lcom/zui/gallery/util/GroupUtils;->enterDragState(Landroid/content/Context;Z)V

    .line 3232
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3233
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->done()V

    goto :goto_0

    .line 3235
    :cond_0
    new-instance v0, Lzui/app/MessageDialog$Builder;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getRightMessageDialogTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1002a6

    .line 3236
    invoke-virtual {v0, v1}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    const v1, 0x7f100220

    .line 3237
    new-instance v2, Lcom/zui/gallery/filtershow/FilterShowActivity$14;

    invoke-direct {v2, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$14;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    const v1, 0x7f10010e

    .line 3242
    new-instance v2, Lcom/zui/gallery/filtershow/FilterShowActivity$15;

    invoke-direct {v2, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$15;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1, v2}, Lzui/app/MessageDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    .line 3249
    invoke-virtual {v0}, Lzui/app/MessageDialog$Builder;->show()Lzui/app/MessageDialog;

    :goto_0
    return-void
.end method

.method private showExportOptionsDialog()V
    .locals 3

    .line 2771
    new-instance v0, Lcom/zui/gallery/filtershow/ui/ExportDialog;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/ui/ExportDialog;-><init>()V

    .line 2772
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ExportDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showNoStorageDialog()V
    .locals 3

    .line 3643
    new-instance v0, Lzui/app/ActionDialog$Builder;

    invoke-direct {v0, p0}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100272

    invoke-virtual {v0, v1}, Lzui/app/ActionDialog$Builder;->setMessage(I)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$18;

    invoke-direct {v1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity$18;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    const v2, 0x7f1001c7

    invoke-virtual {v0, v2, v1}, Lzui/app/ActionDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    move-result-object v0

    .line 3648
    invoke-virtual {v0}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNoStorageDialog:Lzui/app/ActionDialog;

    const/4 v1, 0x0

    .line 3649
    invoke-virtual {v0, v1}, Lzui/app/ActionDialog;->setCanceledOnTouchOutside(Z)V

    .line 3650
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNoStorageDialog:Lzui/app/ActionDialog;

    invoke-virtual {v0}, Lzui/app/ActionDialog;->show()V

    return-void
.end method

.method private showSavingProgress(Ljava/lang/String;)V
    .locals 0

    .line 2221
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 2222
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 2224
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 2

    const v0, 0x7f0801ea

    .line 1293
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 1294
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity$9;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updatePanoEditComplete(Ljava/lang/String;)V
    .locals 3

    .line 2534
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isPano:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->groupId:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2535
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2537
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2538
    iget v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->groupId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "system_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "path"

    .line 2539
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 2540
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2541
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/zui/gallery/database/GalleryContract$GroupMemberShips;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string p1, "FilterShowActivity"

    const-string v0, "insert pano file successful"

    .line 2542
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updatePreset(Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addCurrentVersion()V
    .locals 4

    .line 1060
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 1061
    iget v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mVersionsCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mVersionsCounter:I

    .line 1062
    new-instance v1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mVersionsCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V

    .line 1064
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mVersions:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1065
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateVersions()V

    return-void
.end method

.method public addNewPreset()V
    .locals 3

    .line 2761
    new-instance v0, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/presets/PresetManagementDialog;-><init>()V

    .line 2762
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "NoticeDialogFragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public backToMain()V
    .locals 2

    .line 3213
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 3215
    instance-of v0, v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    if-eqz v0, :cond_0

    return-void

    .line 3218
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->loadMainPanel()V

    .line 3219
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDefaultImageView()V

    return-void
.end method

.method public cannotLoadImage()V
    .locals 2

    const v0, 0x7f10006c

    const/4 v1, 0x0

    .line 3340
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3341
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 3342
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    return-void
.end method

.method public closeNvsEffectSDK()V
    .locals 3

    .line 2204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context.close is called && currentthread is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangmeicam"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wangcanclear"

    const-string v1, "NvsEffectSdkContext.close is called"

    .line 2205
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->getTotalCaptionSize(Landroid/content/Context;)I

    move-result v0

    .line 2207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ondestroy.size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wangcancsize"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->close()V

    return-void
.end method

.method public completeSaveImage(Landroid/net/Uri;)V
    .locals 4

    .line 2248
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSharingImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2250
    sget-object v0, Lcom/zui/gallery/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 2251
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2250
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2252
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 2253
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "prepare"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2254
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    const/4 v0, -0x1

    .line 2256
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setResult(ILandroid/content/Intent;)V

    .line 2257
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->hideSavingProgress()V

    .line 2258
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    return-void
.end method

.method public completeSaveImage(Ljava/lang/String;)V
    .locals 0

    .line 2262
    invoke-direct {p0, p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->requestScanFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public delPic()V
    .locals 0

    .line 3769
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showDeleteDialog()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 3547
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLoadingVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3550
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandlingSwipeButton:Z

    if-eqz v0, :cond_7

    .line 3552
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    instance-of v2, v0, Lcom/zui/gallery/filtershow/category/CategoryView;

    if-eqz v2, :cond_1

    .line 3553
    check-cast v0, Lcom/zui/gallery/filtershow/category/CategoryView;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryView;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3555
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v2, v3, :cond_3

    .line 3556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSwipeStartY:F

    sub-float/2addr v2, v3

    .line 3557
    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    if-nez v0, :cond_2

    .line 3559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSwipeStartX:F

    sub-float/2addr v2, v3

    .line 3560
    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 3561
    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    .line 3563
    :cond_2
    iget-object v5, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3565
    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v3, v2, v3

    .line 3566
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 3567
    iget-object v5, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    sub-float v3, v4, v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3568
    iput v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeViewLastDelta:F

    .line 3570
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 3571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 3572
    :cond_4
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 3573
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3574
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 3575
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandlingSwipeButton:Z

    .line 3576
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    if-nez v0, :cond_5

    .line 3578
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    .line 3580
    :cond_5
    iget v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeViewLastDelta:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_6

    .line 3581
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    check-cast p1, Lcom/zui/gallery/filtershow/category/SwipableView;

    invoke-interface {p1}, Lcom/zui/gallery/filtershow/category/SwipableView;->delete()V

    :cond_6
    return v1

    .line 3586
    :cond_7
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method doBindService()V
    .locals 3

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 387
    iput-boolean v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsBound:Z

    return-void
.end method

.method doUnbindService()V
    .locals 1

    .line 391
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsBound:Z

    .line 394
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public done()V
    .locals 2

    .line 3501
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->hideSavingProgress()V

    .line 3502
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 3503
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3504
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->cancel(Z)Z

    .line 3506
    :cond_1
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    return-void
.end method

.method public enableSave(Z)V
    .locals 1

    .line 2834
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mTevtViewSave:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2835
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->saveHighlight(Z)V

    return-void
.end method

.method public executeCropAction()V
    .locals 1

    .line 1212
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCropAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    :cond_0
    return-void
.end method

.method public executeMirrorAction(Z)V
    .locals 1

    .line 1173
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isMirrorHor:Z

    .line 1174
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getMirrorAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object v0

    .line 1175
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    return-void
.end method

.method public executeMirrorActionNewFeature(Z)V
    .locals 1

    .line 1179
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isMirrorHor:Z

    .line 1180
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getMirrorAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentationNewFeature(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    return-void
.end method

.method public executeRotationAction(Z)V
    .locals 1

    .line 1155
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getRotationAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    return-void
.end method

.method public executeRotationActionNewFeature(Z)V
    .locals 1

    .line 1160
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getRotationAction()Lcom/zui/gallery/filtershow/category/Action;

    move-result-object v0

    .line 1161
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentationNewFeature(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    return-void
.end method

.method public fillCategories()V
    .locals 0

    .line 998
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillLooks()V

    .line 999
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillPortraitLooks()V

    .line 1000
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillDelicacyLooks()V

    .line 1001
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillMovieLooks()V

    .line 1003
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillBorders()V

    .line 1004
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillTools()V

    .line 1005
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillEffects()V

    .line 1006
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillVersions()V

    .line 1007
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillRotationFilter()V

    .line 1008
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillCropFilter()V

    .line 1009
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillCaptions()V

    return-void
.end method

.method public getCaptionAdapter()Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCaptionAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method public getCategoryBordersAdapter()Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method public getCategoryFiltersAdapter()Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method public getCategoryGeometryAdapter()Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 1

    .line 1373
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method public getCategoryLooksAdapter(I)Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1361
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p1

    .line 1358
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMovieLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p1

    .line 1355
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mDelicacyLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p1

    .line 1352
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mPortraitLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p1

    .line 1349
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object p1
.end method

.method public getCategoryVersionsAdapter()Lcom/zui/gallery/filtershow/category/CategoryAdapter;
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryVersionsAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    return-object v0
.end method

.method public getCropAction()Lcom/zui/gallery/filtershow/category/Action;
    .locals 2

    .line 1196
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryCropAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1199
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/category/Action;

    return-object v0
.end method

.method public getCurrentLooksType()I
    .locals 1

    .line 1343
    iget v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentLooksType:I

    return v0
.end method

.method public getCurrentPanel()I
    .locals 1

    .line 1859
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    return v0
.end method

.method public getDrawAction()Lcom/zui/gallery/filtershow/category/Action;
    .locals 2

    .line 1204
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x4

    .line 1207
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/category/Action;

    return-object v0
.end method

.method public getEditor()Lcom/zui/gallery/filtershow/editors/Editor;
    .locals 2

    .line 3627
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3631
    instance-of v1, v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    if-eqz v1, :cond_0

    .line 3632
    check-cast v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    .line 3633
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/EditorPanel;->getEditorId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getEditor(I)Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditor(I)Lcom/zui/gallery/filtershow/editors/Editor;
    .locals 1

    .line 1851
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->getEditor(I)Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object p1

    return-object p1
.end method

.method public getMainStatePanelContainer(I)Landroid/view/View;
    .locals 0

    .line 1874
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getMirrorAction()Lcom/zui/gallery/filtershow/category/Action;
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryGeometryAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x3

    .line 1169
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/category/Action;

    return-object v0
.end method

.method public getPixelsFromDip(F)F
    .locals 2

    .line 3348
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3350
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 3349
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public getProcessingService()Lcom/zui/gallery/filtershow/pipeline/ProcessingService;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    return-object v0
.end method

.method public getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 1712
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    if-eqz v0, :cond_0

    .line 1713
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotationAction()Lcom/zui/gallery/filtershow/category/Action;
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryRotationAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/category/Action;

    return-object v0
.end method

.method public getSelectedImageUri()Landroid/net/Uri;
    .locals 1

    .line 3530
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hideImageViews()V
    .locals 3

    .line 3017
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    .line 3018
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v0, "hardKill"

    const-string v1, "loadXML: bbb"

    .line 3020
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->hide()V

    return-void
.end method

.method protected highLightScreenBrightness()V
    .locals 4

    .line 3703
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/gallery/util/BrightnessTools;->getScreenBrightness(Landroid/content/ContentResolver;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43800000    # 256.0f

    div-float/2addr v0, v1

    const v2, -0x40d9999a    # -0.65f

    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    const v0, 0x3eb33333    # 0.35f

    add-float/2addr v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 3706
    invoke-static {p0, v0}, Lcom/zui/gallery/util/BrightnessTools;->setBrightness(Landroid/app/Activity;I)V

    return-void
.end method

.method public hintTouchPoint(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3593
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3594
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHintTouchPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    const/4 v1, 0x0

    aget v1, v0, v1

    sub-int/2addr p1, v1

    .line 3595
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHintTouchPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    aget v0, v0, v2

    sub-int/2addr v1, v0

    .line 3596
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public invalidateViews()V
    .locals 2

    .line 3011
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    .line 3012
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->updateImage()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isGlTextureLimit()Z
    .locals 1

    .line 2101
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mGlTextureLimit:Z

    return v0
.end method

.method public isLoadingVisible()Z
    .locals 1

    .line 1941
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mLoadingVisible:Z

    return v0
.end method

.method public isModifyPicture()V
    .locals 1

    .line 3223
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->hasModifications()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isModify:Z

    return-void
.end method

.method public isSecureCameraCall()Z
    .locals 1

    .line 422
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSecureCameraCall:Z

    return v0
.end method

.method public isShowingImageStatePanel()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    return v0
.end method

.method public isSimpleEditAction()Z
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mAction:Ljava/lang/String;

    const-string v1, "action_nextgen_edit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isTransDataTooLarge(Ljava/io/File;)Z
    .locals 11

    .line 3465
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v2

    .line 3466
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSelectedImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 3467
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v3, "wccc"

    if-nez v1, :cond_0

    .line 3470
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalImageUri:Landroid/net/Uri;

    .line 3471
    iget-boolean v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFromPrivacy:Z

    if-eqz v4, :cond_0

    const-string v0, "/storage/emulated/0/DCIM/Camera/ZuiGalleryGroup/.MyPrivacy"

    .line 3472
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3473
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->privacyFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3474
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFromPrivacy,  sourceImageUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    move-object v5, v1

    .line 3480
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " & selectedImageUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " & flatten = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x5a

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p1

    .line 3481
    invoke-static/range {v1 .. v9}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->getSaveIntent(Landroid/content/Context;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;ZIFZ)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "preset"

    .line 3488
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "destinationFile"

    .line 3489
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "selectedUri"

    .line 3490
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "sourceUri"

    .line 3491
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 3492
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "total intent size11:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FilterShowActivity"

    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x3f3b8

    if-le v0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    return v10
.end method

.method public loadEditorPanel(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/editors/Editor;)V
    .locals 3

    .line 622
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result v0

    const-string v1, "fixtest"

    const v2, 0x7f0801e9

    if-ne v0, v2, :cond_0

    const-string p1, "reflectCurrentFilter: CURRENT222"

    .line 623
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/editors/Editor;->reflectCurrentFilter()V

    return-void

    .line 628
    :cond_0
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isCropSelected:Z

    if-eqz v0, :cond_1

    const-string p1, "reflectCurrentFilter: CURRENT111"

    .line 629
    invoke-static {v1, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 630
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isCropSelected:Z

    .line 631
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/editors/Editor;->reflectCurrentFilter()V

    return-void

    .line 635
    :cond_1
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/editors/Editor;->getID()I

    move-result v0

    .line 636
    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$4;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity$4;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;ILcom/zui/gallery/filtershow/editors/Editor;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 738
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public loadMainPanel()V
    .locals 4

    const-string v0, "mCurrentSelected"

    const-string v1, "loadMainPanel: 111"

    .line 597
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f08023b

    .line 598
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "loadMainPanel: 222"

    .line 601
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/category/MainPanel;-><init>()V

    .line 603
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "MainPanel"

    .line 604
    invoke-virtual {v2, v1, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 605
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 3371
    iget v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->REQUEST_ASK_PERMISSIONS:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 3375
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finishAffinity()V

    :cond_1
    const/16 v0, 0x22b8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 3379
    invoke-static {}, Lcom/zui/gallery/banner/ActivityManageUtils;->getInstance()Lcom/zui/gallery/banner/ActivityManageUtils;

    move-result-object v0

    if-eq p2, v1, :cond_2

    .line 3381
    iput-boolean v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOnPause:Z

    .line 3382
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    .line 3383
    invoke-virtual {v0}, Lcom/zui/gallery/banner/ActivityManageUtils;->get()Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 3384
    sget-object p2, Lcom/zui/gallery/filtershow/-$$Lambda$FilterShowActivity$lFi2__ClP3dinXXjoGjE9IDBCEU;->INSTANCE:Lcom/zui/gallery/filtershow/-$$Lambda$FilterShowActivity$lFi2__ClP3dinXXjoGjE9IDBCEU;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :cond_2
    if-ne p2, v1, :cond_3

    .line 3392
    iput-boolean v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOnPause:Z

    .line 3393
    invoke-virtual {v0}, Lcom/zui/gallery/banner/ActivityManageUtils;->get()Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 3394
    sget-object p2, Lcom/zui/gallery/filtershow/-$$Lambda$FilterShowActivity$eWlEXKIAfjbKX8RZVpXB8uGp6CQ;->INSTANCE:Lcom/zui/gallery/filtershow/-$$Lambda$FilterShowActivity$eWlEXKIAfjbKX8RZVpXB8uGp6CQ;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void

    :cond_3
    const/4 v0, 0x1

    const-wide/16 v3, -0x1

    const/16 v5, 0x62

    if-ne p1, v5, :cond_5

    if-nez p2, :cond_5

    .line 3404
    sput-wide v3, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShareTime:J

    .line 3405
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 3406
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    goto :goto_0

    :cond_5
    if-ne p1, v5, :cond_6

    const/16 v5, 0x4e21

    if-ne p2, v5, :cond_6

    .line 3409
    sput-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSave:Z

    .line 3410
    iget p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->shareCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->shareCount:I

    .line 3411
    sput-wide v3, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShareTime:J

    return-void

    :cond_6
    :goto_0
    if-ne p2, v1, :cond_7

    if-ne p1, v0, :cond_7

    .line 3417
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    .line 3418
    invoke-direct {p0, p2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    :cond_7
    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_9

    if-eqz p3, :cond_9

    .line 3423
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 3424
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setResult(ILandroid/content/Intent;)V

    .line 3425
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 3426
    :cond_8
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    :cond_9
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 3309
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showExitEditorDialog()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 3053
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3054
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    .line 3055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentPanel is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wwww_state"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3058
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 3059
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    return-void

    .line 3065
    :cond_1
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundServiceStart:Z

    if-nez v1, :cond_2

    const-string v0, "FilterShow"

    const-string v1, "onConfigurationChanged return"

    .line 3066
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/zui/gallery/filtershow/FilterShowActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity$13;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/content/res/Configuration;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 3076
    invoke-static {p0, v1}, Lcom/zui/gallery/util/GroupUtils;->setConfigurationJustHappend(Landroid/content/Context;Z)V

    .line 3078
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getCaptionFilters()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 3079
    invoke-static {p0, v1}, Lcom/zui/gallery/util/GroupUtils;->setIsFromConfigChange(Landroid/content/Context;Z)V

    goto :goto_0

    .line 3081
    :cond_3
    invoke-static {p0, v3}, Lcom/zui/gallery/util/GroupUtils;->setIsFromConfigChange(Landroid/content/Context;Z)V

    .line 3084
    :goto_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    .line 3085
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    .line 3086
    invoke-virtual {v2, p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setActivity(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    .line 3087
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->processIntent()V

    .line 3090
    :cond_4
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    .line 3091
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isReload:Z

    goto :goto_1

    .line 3093
    :cond_5
    iput-boolean v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isReload:Z

    .line 3095
    :goto_1
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsLandRightOrientation:Z

    .line 3096
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isOnCreate:Z

    .line 3097
    sput-boolean v3, Lcom/zui/gallery/filtershow/FilterShowActivity;->isclick:Z

    .line 3098
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    .line 3099
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 3101
    sput-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    goto :goto_2

    :cond_6
    if-ne p1, v1, :cond_7

    .line 3103
    sput-boolean v3, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    .line 3105
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setDefaultValues()V

    .line 3106
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    if-nez p1, :cond_8

    return-void

    .line 3109
    :cond_8
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->loadXML()V

    .line 3110
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillCategories()V

    .line 3111
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->loadMainPanel()V

    .line 3113
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setCurrentPanel(I)V

    .line 3115
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentMenu:Landroid/widget/PopupMenu;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 3116
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 3117
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentMenu:Landroid/widget/PopupMenu;

    .line 3119
    :cond_9
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentDialog:Landroid/content/DialogInterface;

    if-eqz p1, :cond_a

    .line 3120
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3121
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentDialog:Landroid/content/DialogInterface;

    .line 3124
    :cond_a
    iget-boolean p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShowingTinyPlanet:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;

    if-nez p1, :cond_b

    .line 3125
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryFiltersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->removeTinyPlanet()V

    .line 3133
    :cond_b
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    if-eqz p1, :cond_c

    .line 3134
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    goto :goto_3

    :cond_c
    move-object p1, v0

    .line 3137
    :goto_3
    sget v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_f

    if-eqz p1, :cond_f

    instance-of p1, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz p1, :cond_f

    .line 3138
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->isInCaptionState(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 3140
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isConfigurationChanged:Z

    .line 3141
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    const/16 v1, 0x9

    .line 3147
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getPositionForTypeFromFoot(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 3150
    invoke-virtual {p1, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilterRepresentation(I)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 3152
    :cond_e
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 3154
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "MainPanel"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 3156
    instance-of v0, p1, Lcom/zui/gallery/filtershow/category/MainPanel;

    if-eqz v0, :cond_10

    .line 3157
    check-cast p1, Lcom/zui/gallery/filtershow/category/MainPanel;

    .line 3158
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/MainPanel;->showCategoryView()V

    goto :goto_4

    .line 3163
    :cond_f
    iput-boolean v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isConfigurationChanged:Z

    :cond_10
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 477
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate 123  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FilterShowActivity"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 479
    invoke-static {p0, p1}, Lcom/zui/gallery/util/GroupUtils;->setClearedEffectForShar(Landroid/content/Context;Z)V

    .line 480
    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->clearTotalCaptionSize(Landroid/content/Context;)V

    .line 481
    invoke-static {p0, p1}, Lcom/zui/gallery/util/GroupUtils;->enterDragState(Landroid/content/Context;Z)V

    .line 482
    invoke-static {p0, p1}, Lcom/zui/gallery/util/GroupUtils;->setFilterImageScaled(Landroid/content/Context;Z)V

    .line 483
    invoke-static {p0, p1}, Lcom/zui/gallery/util/GroupUtils;->setEffectsCleared(Landroid/content/Context;Z)V

    .line 485
    invoke-static {p0, p1}, Lcom/zui/gallery/util/GroupUtils;->setSavingTaskState(Landroid/content/Context;Z)V

    .line 486
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    if-nez v0, :cond_0

    const-string v0, "assets:/meishe20.lic"

    .line 489
    invoke-static {p0, v0, p1}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->init(Landroid/app/Activity;Ljava/lang/String;I)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    .line 490
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    .line 496
    invoke-static {p0, p1}, Lcom/zui/gallery/util/GroupUtils;->setIsFromConfigChange(Landroid/content/Context;Z)V

    .line 497
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mIsLandRightOrientation:Z

    .line 498
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isOnCreate:Z

    const/4 v0, -0x1

    .line 499
    sput v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropSelected:I

    .line 500
    sput v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mScrollIndex:I

    .line 501
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->cropVertical:Z

    .line 502
    sput p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->curvesIndex:I

    .line 503
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isDrawColor:Z

    .line 504
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaDraw:Z

    .line 505
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isEarseaMosaic:Z

    .line 506
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isclick:Z

    .line 507
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->control_text_leftpadding:I

    .line 508
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 509
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 511
    sput-boolean v3, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    .line 513
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    .line 515
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/zui/gallery/app/PermissionsManager;->isAllGranted(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 516
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/zui/gallery/app/PermissionsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 517
    iget v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->REQUEST_ASK_PERMISSIONS:I

    invoke-virtual {p0, v1, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 520
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->delPicPath:Ljava/util/ArrayList;

    const-wide/16 v1, -0x1

    .line 521
    sput-wide v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShareTime:J

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filtershowActivity oncreate isInMultiWindowMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isInMultiWindowMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FilterShow"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f10026c

    .line 525
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 526
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 527
    :cond_4
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    return-void

    .line 532
    :cond_5
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSecureCameraCall:Z

    .line 533
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNeedBright:Z

    .line 534
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 535
    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSecureCameraCall:Z

    if-eqz v2, :cond_6

    .line 536
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 537
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 538
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 539
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 540
    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_6
    const/high16 v2, 0x4000000

    .line 542
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v2, -0x80000000

    .line 543
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 544
    iput-object p0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mContext:Landroid/content/Context;

    .line 545
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    .line 550
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->clearGalleryBitmapPool()V

    .line 552
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 555
    sget-object v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SELF:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSelf:Z

    .line 556
    sget-object v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREENSHOT:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShot:Z

    .line 557
    sget-object v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_PANAPHOTO:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isPanoPhoto:Z

    .line 560
    sget-object v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREENSHOTS_LAUNCHER:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    .line 561
    sget-object v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_PANO:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isPano:Z

    .line 562
    sget-object v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->GROUP_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->groupId:I

    const-string v0, "privacy_url_to_filtershow"

    .line 563
    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->privacyFilePath:Ljava/lang/String;

    .line 565
    :cond_7
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->privacyFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 566
    iput-boolean v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFromPrivacy:Z

    .line 570
    :cond_8
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFromPrivacy:Z

    if-nez v0, :cond_a

    const v0, 0x7f1001c3

    .line 571
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 572
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 573
    :cond_9
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    goto :goto_1

    .line 575
    :cond_a
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->doBindService()V

    .line 576
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0x777778

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0b0068

    .line 577
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setContentView(I)V

    .line 581
    :goto_1
    sput-boolean p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isGeometryApplied:Z

    .line 585
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.intent.filtershowactivity_destory"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mFilterShowActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/app/GalleryApp;

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mApp:Lcom/zui/gallery/app/GalleryApp;

    .line 589
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->initDeleteDialog()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 7

    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity.onDestroy is called "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterShowActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2127
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFinish:Z

    .line 2128
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->stopLoadingIndicator()V

    .line 2129
    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->isEffectsCleared(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2130
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    if-eqz v2, :cond_0

    .line 2131
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    :cond_0
    const-wide/16 v2, 0xc8

    .line 2134
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2136
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2139
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isScreenShotLaunch:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 2140
    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSaving:Z

    if-eqz v2, :cond_2

    .line 2141
    iput-boolean v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSaving:Z

    move v2, v3

    .line 2142
    :goto_1
    iget-object v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->delPicPath:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 2143
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->delPicPath:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2144
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 2145
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p0, v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->requestScanFileDestory(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2148
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->delPicPath:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->shareCount:I

    if-lt v2, v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->delPicPath:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_4

    .line 2150
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->delPicPath:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2152
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p0, v5}, Lcom/zui/gallery/filtershow/FilterShowActivity;->requestScanFileDestory(Landroid/content/Context;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2157
    :cond_4
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;

    if-eqz v2, :cond_5

    .line 2158
    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/FilterShowActivity$LoadBitmapTask;->cancel(Z)Z

    .line 2161
    :cond_5
    sput-boolean v3, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSave:Z

    .line 2162
    sput-boolean v0, Lcom/zui/gallery/filtershow/editors/EditorDraw;->isMosaic:Z

    const/4 v0, -0x1

    .line 2163
    sput v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    .line 2168
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->clean()V

    .line 2169
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->doUnbindService()V

    .line 2173
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSecureCameraCall:Z

    if-eqz v0, :cond_6

    .line 2176
    :try_start_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    const-string v0, "onDestroy : Screen Off Receiver not registered"

    .line 2178
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    :cond_6
    :goto_4
    :try_start_2
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mFilterShowActivityDestroyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    const-string v0, "onDestroy : mFilterShowActivityDestroyReceiver Receiver not registered"

    .line 2186
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :goto_5
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNoStorageDialog:Lzui/app/ActionDialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lzui/app/ActionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "mNoStorageDialog dismiss"

    .line 2190
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNoStorageDialog:Lzui/app/ActionDialog;

    invoke-virtual {v0}, Lzui/app/ActionDialog;->dismiss()V

    .line 2193
    :cond_7
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    const-string v0, "Activity.onDestroy end"

    .line 2196
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->close()V

    .line 2198
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isGlTextureLimit()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "first"

    .line 2199
    invoke-static {p0, v0}, Lcom/zui/gallery/util/GalleryUtils;->removeSpKey(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 1898
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    .line 1884
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentMenu:Landroid/widget/PopupMenu;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1887
    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1888
    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentMenu:Landroid/widget/PopupMenu;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string/jumbo p1, "woatxxx"

    const-string p2, "removeFilterRepresentation: jjjjjjj 11111111111111"

    .line 3356
    invoke-static {p1, p2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {p1, p3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->onHistoryItemClick(I)V

    .line 3358
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->invalidateViews()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 3955
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 3956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterShowActivity"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 3958
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOriginalImageUri:Landroid/net/Uri;

    .line 3960
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    if-eqz p1, :cond_0

    .line 3961
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 3963
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->doUnbindService()V

    .line 3964
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->doBindService()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 2705
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 2609
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "FilterShowActivity"

    const-string v1, "onPause"

    .line 2610
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2612
    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 2615
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mUserSetBrightnessObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/zui/gallery/util/BrightnessTools;->unregisterBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 2617
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mScreenBrightnessObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/zui/gallery/util/BrightnessTools;->unregisterBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    .line 2621
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOnPause:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 2656
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x0

    .line 2657
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isOnStop:Z

    .line 2659
    invoke-static {p0, v0}, Lcom/zui/gallery/util/GroupUtils;->setIsFromConfigChange(Landroid/content/Context;Z)V

    .line 2664
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShareActionProvider:Landroid/widget/ShareActionProvider;

    if-eqz v1, :cond_0

    .line 2665
    invoke-virtual {v1, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    .line 2674
    :cond_0
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNoStorageDialog:Lzui/app/ActionDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lzui/app/ActionDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2675
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isEnoughSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2676
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNoStorageDialog:Lzui/app/ActionDialog;

    invoke-virtual {v1}, Lzui/app/ActionDialog;->dismiss()V

    .line 2680
    :cond_1
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNeedBright:Z

    if-eqz v1, :cond_2

    .line 2681
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->highLightScreenBrightness()V

    .line 2682
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mUserSetBrightnessObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v2}, Lcom/zui/gallery/util/BrightnessTools;->registerUserSetBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 2684
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mScreenBrightnessObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v2}, Lcom/zui/gallery/util/BrightnessTools;->registerScreenBrightnessObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 2687
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setFullScreenBrowse()V

    .line 2688
    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setDarkStatusIcon(Z)V

    .line 2689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume  needRebound ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->needRebound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FilterShowActivity"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->needRebound:Z

    if-eqz v1, :cond_3

    .line 2691
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ProcessingService;->clearNvsEffectRenderCore()V

    .line 2692
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->finish()V

    return-void

    .line 2695
    :cond_3
    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFromPrivacy:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOnPause:Z

    if-eqz v1, :cond_4

    .line 2696
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mOnPause:Z

    .line 2697
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.lenovo.privacyspace.verification"

    .line 2698
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x22b8

    .line 2699
    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_4
    return-void
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 3

    .line 2551
    sget-object p1, Lcom/zui/gallery/filtershow/provider/SharedImageProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    .line 2552
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2551
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2553
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x1

    .line 2554
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "prepare"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2555
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2556
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSharingImage:Z

    const/4 p1, 0x0

    .line 2559
    invoke-direct {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showSavingProgress(Ljava/lang/String;)V

    .line 2560
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSharedOutputFile:Ljava/io/File;

    iget-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFromPrivacy:Z

    invoke-virtual {p1, p0, p2, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->saveImage(Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/io/File;Z)V

    return v0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1893
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method public onShowMenu(Landroid/widget/PopupMenu;)V
    .locals 0

    .line 1878
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentMenu:Landroid/widget/PopupMenu;

    .line 1879
    invoke-virtual {p1, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 5

    .line 3911
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    const/4 v0, 0x1

    .line 3914
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isOnStop:Z

    .line 3916
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 3917
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    .line 3918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop isLocked1 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FilterShowActivity"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/zui/gallery/filtershow/FilterShowActivity$24;

    invoke-direct {v2, p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity$24;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Landroid/app/KeyguardManager;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public pickImage()V
    .locals 2

    .line 3362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    .line 3363
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 3364
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f10023b

    .line 3365
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public print()V
    .locals 3

    .line 2755
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getHighresImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2756
    new-instance v1, Landroidx/print/PrintHelper;

    invoke-direct {v1, p0}, Landroidx/print/PrintHelper;-><init>(Landroid/content/Context;)V

    const-string v2, "ImagePrint"

    .line 2757
    invoke-virtual {v1, v2, v0}, Landroidx/print/PrintHelper;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public refreshCaptionSelectState()V
    .locals 2

    .line 1841
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1843
    instance-of v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    if-eqz v1, :cond_0

    .line 1844
    check-cast v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    .line 1845
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->refreshCaptionAdapter()V

    :cond_0
    return-void
.end method

.method public registerAction(Lcom/zui/gallery/filtershow/category/Action;)V
    .locals 1

    .line 1025
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1388
    :cond_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    .line 1389
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 1390
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->removeFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    const-string/jumbo v0, "woatxxx"

    const-string v2, "removeFilterRepresentation: aaaaaaa"

    .line 1391
    invoke-static {v0, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getLastRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    .line 1393
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1394
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getLastRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    .line 1395
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    :cond_1
    return-void
.end method

.method public removeLook(Lcom/zui/gallery/filtershow/category/Action;)V
    .locals 0

    .line 1075
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public removeVersion(Lcom/zui/gallery/filtershow/category/Action;)V
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mVersions:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1070
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updateVersions()V

    return-void
.end method

.method public resetHistory()V
    .locals 4

    .line 3185
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getHistory()Lcom/zui/gallery/filtershow/history/HistoryManager;

    move-result-object v0

    .line 3186
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/history/HistoryManager;->reset()V

    const/4 v1, 0x0

    .line 3187
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/history/HistoryManager;->getItem(I)Lcom/zui/gallery/filtershow/history/HistoryItem;

    move-result-object v0

    .line 3192
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    if-eqz v0, :cond_0

    .line 3196
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/history/HistoryItem;->getFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v2, "woatxxx"

    const-string v3, "removeFilterRepresentation: hhhhhhhhh"

    .line 3198
    invoke-static {v2, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    .line 3200
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->invalidateViews()V

    .line 3201
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->backToMain()V

    return-void
.end method

.method public resetPanlWidth()V
    .locals 3

    const v0, 0x7f08023b

    .line 3900
    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 3901
    sget-boolean v1, Lcom/zui/gallery/filtershow/FilterShowActivity;->isLandscape:Z

    const v2, 0x7f060227

    if-eqz v1, :cond_0

    .line 3902
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 3904
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void
.end method

.method public resetSaveRectfAndCropType(Landroid/graphics/RectF;I)V
    .locals 2

    .line 3830
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    if-eqz v1, :cond_0

    .line 3831
    check-cast v0, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->reSetSaveRectF(Landroid/graphics/RectF;)V

    .line 3832
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    check-cast p1, Lcom/zui/gallery/filtershow/editors/EditorCrop;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/editors/EditorCrop;->setCropType(I)V

    :cond_0
    return-void
.end method

.method public saveCurrentImagePreset(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public saveImage()V
    .locals 3

    .line 3432
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3438
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedImageUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getEditFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    .line 3439
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSaving:Z

    .line 3440
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFromPrivacy:Z

    invoke-virtual {v1, p0, v0, v2}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->saveImage(Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/io/File;Z)V

    goto :goto_0

    .line 3442
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->done()V

    :goto_0
    return-void
.end method

.method public savePrivacyImage()V
    .locals 4

    .line 3450
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3451
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->privacyFilePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getPrivacyEditFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePrivacyImage...editFile is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wccc"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "privacy...editFile.exists is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 3454
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSaving:Z

    .line 3455
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, p0, v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->saveImage(Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/io/File;Z)V

    goto :goto_0

    .line 3457
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->done()V

    :goto_0
    return-void
.end method

.method public setCategoryFragment(Lcom/zui/gallery/filtershow/category/CategoryPanel;)V
    .locals 3

    .line 610
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f08032e

    const-string v2, "CategoryPanel"

    .line 612
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 613
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public setCurrentLooksType(I)V
    .locals 0

    .line 1339
    iput p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentLooksType:I

    return-void
.end method

.method public setCurrentPanel(I)V
    .locals 0

    .line 1855
    sput p1, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    return-void
.end method

.method public setDefaultPreset()V
    .locals 4

    .line 2991
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    const-string/jumbo v1, "woatxxx"

    const-string v2, "removeFilterRepresentation: ggggggg"

    .line 2992
    invoke-static {v1, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getLastRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    return-void
.end method

.method public setHandlesSwipeForView(Landroid/view/View;FF)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3535
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandlingSwipeButton:Z

    goto :goto_0

    .line 3537
    :cond_0
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandlingSwipeButton:Z

    .line 3539
    :goto_0
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mHandledSwipeView:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 3541
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3542
    aget p1, v2, v1

    int-to-float p1, p1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSwipeStartX:F

    .line 3543
    aget p1, v2, v0

    int-to-float p1, p1

    add-float/2addr p1, p3

    iput p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSwipeStartY:F

    return-void
.end method

.method public setNoneFilter()V
    .locals 2

    .line 2999
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3000
    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3001
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryLooksAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/filtershow/category/Action;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    :cond_0
    return-void
.end method

.method public setupMasterImage()V
    .locals 5

    .line 3169
    new-instance v0, Lcom/zui/gallery/filtershow/history/HistoryManager;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/history/HistoryManager;-><init>()V

    .line 3170
    new-instance v1, Lcom/zui/gallery/filtershow/state/StateAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/filtershow/state/StateAdapter;-><init>(Landroid/content/Context;I)V

    .line 3171
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->reset()V

    .line 3172
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    .line 3173
    invoke-virtual {v3, v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setHistoryManager(Lcom/zui/gallery/filtershow/history/HistoryManager;)V

    .line 3174
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setStateAdapter(Lcom/zui/gallery/filtershow/state/StateAdapter;)V

    .line 3175
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {v0, p0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setActivity(Lcom/zui/gallery/filtershow/FilterShowActivity;)V

    .line 3177
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v3, 0x8000000

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 3178
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setSupportsHighRes(Z)V

    goto :goto_0

    .line 3180
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setSupportsHighRes(Z)V

    :goto_0
    return-void
.end method

.method public setupStatePanel()V
    .locals 2

    .line 1013
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getHistory()Lcom/zui/gallery/filtershow/history/HistoryManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setHistoryManager(Lcom/zui/gallery/filtershow/history/HistoryManager;)V

    return-void
.end method

.method public sharePic()V
    .locals 4

    .line 3747
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v0

    const-string v1, "awiudof"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sharePic: aaaaaaaaaaa"

    .line 3748
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3749
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isShare:Z

    .line 3750
    sput-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isSave:Z

    .line 3751
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedImageUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/zui/gallery/filtershow/tools/SaveImage;->getEditFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 3752
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->delPicPath:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3753
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    iget-boolean v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFromPrivacy:Z

    invoke-virtual {v2, p0, v1, v3}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->saveImage(Lcom/zui/gallery/filtershow/FilterShowActivity;Ljava/io/File;Z)V

    .line 3754
    invoke-static {p0, v0}, Lcom/zui/gallery/util/GroupUtils;->setClearedEffectForShar(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "sharePic: bbbbbbbbb"

    .line 3756
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 3758
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 3759
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3760
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedImageUri:Landroid/net/Uri;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0xa

    const-string v2, "extraDataType"

    .line 3761
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extraDataValue"

    const-string v2, "98"

    .line 3762
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3763
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f100254

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x62

    invoke-virtual {p0, v0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public showDefaultImageView()V
    .locals 2

    const-string v0, "fixtest"

    const-string v1, "loadXML: ccc"

    .line 3205
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->hide()V

    .line 3207
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mImageShow:Lcom/zui/gallery/filtershow/imageshow/ImageShow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/ImageShow;->setVisibility(I)V

    .line 3208
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilter(Lcom/zui/gallery/filtershow/filters/ImageFilter;)V

    .line 3209
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1725
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-eqz v0, :cond_1

    .line 1726
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    .line 1728
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->rotateCW()V

    .line 1731
    :cond_1
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v0, :cond_2

    .line 1732
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    .line 1736
    :cond_2
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isBooleanFilter()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1737
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    .line 1738
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1740
    new-instance v3, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v3, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 1741
    invoke-virtual {v3, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->removeFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1742
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    const-string/jumbo v0, "woatxxx"

    const-string v4, "removeFilterRepresentation: fffffffff"

    .line 1743
    invoke-static {v0, v4}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, v3, p1, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    .line 1745
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void

    .line 1751
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    const-string/jumbo v3, "wangcantimes"

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 1752
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 1753
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filtershow caption times is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->getFiltershowCaptionTimes(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->getFiltershowCaptionTimes(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_4

    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->isConfigrationJustHappend(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1756
    iput-boolean v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isChangeCaption:Z

    goto :goto_0

    .line 1758
    :cond_4
    iput-boolean v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isChangeCaption:Z

    goto :goto_0

    .line 1761
    :cond_5
    iput-boolean v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isChangeCaption:Z

    move-object v0, v2

    .line 1764
    :goto_0
    instance-of v1, p1, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    const/4 v4, 0x0

    const v5, 0x7f10006f

    if-eqz v1, :cond_9

    instance-of v6, v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v6, :cond_9

    .line 1765
    invoke-virtual {p0, v5}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1767
    iget-boolean v7, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isChangeCaption:Z

    if-nez v7, :cond_7

    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->getIsFromConfigChange(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isConfigurationChanged:Z

    if-eqz v7, :cond_6

    goto :goto_1

    .line 1778
    :cond_6
    move-object v7, p1

    check-cast v7, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v7, v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setmTimeLinePointF(Landroid/graphics/PointF;)V

    .line 1779
    invoke-virtual {v7, v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setScaleFactor(F)V

    .line 1780
    invoke-virtual {v7, v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setAssetAnchor(Landroid/graphics/PointF;)V

    goto :goto_2

    .line 1768
    :cond_7
    :goto_1
    move-object v2, v0

    check-cast v2, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getCaptionContents()Ljava/lang/String;

    move-result-object v6

    .line 1769
    move-object v4, p1

    check-cast v4, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getmTimeLinePointF()Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setmTimeLinePointF(Landroid/graphics/PointF;)V

    .line 1770
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getScaleFactor()F

    move-result v7

    invoke-virtual {v4, v7}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setScaleFactor(F)V

    .line 1771
    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetAnchor()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setAssetAnchor(Landroid/graphics/PointF;)V

    .line 1773
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->removeEditor(I)V

    .line 1775
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/editors/Editor;->clearCaptionEffect()V

    .line 1776
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/editors/Editor;->detach()V

    .line 1782
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1783
    invoke-virtual {p0, v5}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1785
    :cond_8
    move-object v2, p1

    check-cast v2, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {v2, v6}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setCaptionContent(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    .line 1788
    move-object v6, p1

    check-cast v6, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p0, v5}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setCaptionContent(Ljava/lang/String;)V

    .line 1789
    invoke-virtual {v6, v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setmTimeLinePointF(Landroid/graphics/PointF;)V

    .line 1790
    invoke-virtual {v6, v4}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setScaleFactor(F)V

    .line 1791
    invoke-virtual {v6, v2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->setAssetAnchor(Landroid/graphics/PointF;)V

    .line 1794
    :cond_a
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChangeCaption is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isChangeCaption:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->useFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config changed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->getIsFromConfigChange(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wangcanconfig"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->filterRepresentationOfCopy:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-nez v2, :cond_b

    move-object v2, p1

    :cond_b
    if-eqz v1, :cond_c

    .line 1801
    instance-of v0, v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v0, :cond_c

    const/16 v0, 0xa

    .line 1821
    sput v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    .line 1822
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result p1

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->showEditor(ILcom/meicam/effect/sdk/NvsEffectRenderCore;)Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    .line 1823
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1824
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/filtershow/editors/Editor;->setLocalRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1825
    iget-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p0, v2, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->loadEditorPanel(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/editors/Editor;)V

    return-void

    .line 1830
    :cond_c
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    if-eqz v0, :cond_d

    .line 1831
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/Editor;->detach()V

    .line 1834
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reflectCurrentFilter: getEditorId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fixtest"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result v2

    iget-object v3, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v0, v2, v3}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->showEditor(ILcom/meicam/effect/sdk/NvsEffectRenderCore;)Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    const-string v0, "reflectCurrentFilter: CURRENT111_222"

    .line 1836
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p0, p1, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->loadEditorPanel(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/editors/Editor;)V

    return-void
.end method

.method public showRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1609
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-eqz v0, :cond_2

    .line 1610
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-eqz p2, :cond_1

    .line 1612
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->rotateCW()V

    goto :goto_0

    .line 1614
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->rotateCCW()V

    .line 1617
    :cond_2
    :goto_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v0, :cond_3

    .line 1618
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    .line 1621
    invoke-virtual {v0, p2}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->cycle(Z)V

    .line 1624
    :cond_3
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isBooleanFilter()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1625
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object p2

    .line 1626
    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1628
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v0, p2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 1629
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->removeFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1630
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    const-string/jumbo p2, "woatxxx"

    const-string v1, "removeFilterRepresentation: ddddddddd"

    .line 1631
    invoke-static {p2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    .line 1633
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void

    .line 1637
    :cond_4
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->useFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1640
    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    if-eqz p2, :cond_5

    .line 1641
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/editors/Editor;->detach()V

    .line 1643
    :cond_5
    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mEditorPlaceHolder:Lcom/zui/gallery/filtershow/EditorPlaceHolder;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getEditorId()I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {p2, v0, v1}, Lcom/zui/gallery/filtershow/EditorPlaceHolder;->showEditor(ILcom/meicam/effect/sdk/NvsEffectRenderCore;)Lcom/zui/gallery/filtershow/editors/Editor;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    const-string p2, "fixtest"

    const-string v0, "reflectCurrentFilter: CURRENT111_111"

    .line 1644
    invoke-static {p2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object p2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {p0, p1, p2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->loadEditorPanel(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/editors/Editor;)V

    return-void
.end method

.method public showRepresentationNewFeature(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1653
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-eqz v0, :cond_2

    .line 1654
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-eqz p2, :cond_1

    .line 1656
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->rotateCW()V

    goto :goto_0

    .line 1658
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;->rotateCCW()V

    .line 1661
    :cond_2
    :goto_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v0, :cond_3

    .line 1662
    move-object v0, p1

    check-cast v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    .line 1665
    invoke-virtual {v0, p2}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;->cycle(Z)V

    .line 1668
    :cond_3
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->isBooleanFilter()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1669
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object p2

    .line 1670
    invoke-virtual {p2, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1672
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v0, p2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 1673
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->removeFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1674
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    const-string/jumbo p2, "woatxxx"

    const-string v1, "removeFilterRepresentation: eeeeeee"

    .line 1675
    invoke-static {p2, v1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    .line 1677
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void

    .line 1681
    :cond_4
    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->useFilterRepresentationNewFeature(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public startLoadingIndicator()V
    .locals 3

    const/4 v0, 0x1

    .line 1946
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mLoadingVisible:Z

    .line 1948
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    if-nez v0, :cond_0

    .line 1949
    new-instance v0, Lzui/app/ProgressDialogX;

    invoke-direct {v0, p0}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    .line 1950
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 1951
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 1953
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    return-void
.end method

.method public startSaveIndicator()V
    .locals 2

    .line 1972
    new-instance v0, Lzui/app/ProgressDialogX;

    invoke-direct {v0, p0}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSaveProgressDialog:Lzui/app/ProgressDialogX;

    const/4 v1, 0x0

    .line 1973
    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 1974
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSaveProgressDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setProgressStyle(I)V

    .line 1975
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSaveProgressDialog:Lzui/app/ProgressDialogX;

    const v1, 0x7f100221

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 1976
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->isValidActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSaveProgressDialog:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    :cond_0
    return-void
.end method

.method public stopLoadingIndicator()V
    .locals 1

    .line 1959
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mProgressDialog:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_0

    .line 1960
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 1963
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mLoadingVisible:Z

    return-void
.end method

.method public stopSaveIndicator()V
    .locals 1

    .line 1980
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSaveProgressDialog:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_0

    .line 1981
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_0
    return-void
.end method

.method public toggleImageStatePanel()V
    .locals 2

    .line 3028
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->invalidateOptionsMenu()V

    .line 3029
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 3030
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3032
    instance-of v1, v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    if-eqz v1, :cond_0

    .line 3033
    check-cast v0, Lcom/zui/gallery/filtershow/editors/EditorPanel;

    goto :goto_0

    .line 3035
    :cond_0
    instance-of v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    if-eqz v1, :cond_1

    .line 3036
    check-cast v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    :cond_1
    :goto_0
    return-void
.end method

.method public toggleInformationPanel()V
    .locals 3

    .line 760
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010044

    const v2, 0x7f010047

    .line 761
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 763
    new-instance v1, Lcom/zui/gallery/filtershow/info/InfoPanel;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/info/InfoPanel;-><init>()V

    const-string v2, "InfoPanel"

    .line 764
    invoke-virtual {v1, v0, v2}, Lcom/zui/gallery/filtershow/info/InfoPanel;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I

    return-void
.end method

.method public toggleVersionsPanel()V
    .locals 2

    .line 3043
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShowingVersionsPanel:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mShowingVersionsPanel:Z

    .line 3044
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3045
    instance-of v1, v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    if-eqz v1, :cond_0

    .line 3046
    check-cast v0, Lcom/zui/gallery/filtershow/category/MainPanel;

    .line 3047
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/MainPanel;->loadCategoryVersionsPanel()V

    :cond_0
    return-void
.end method

.method public updateCategories()V
    .locals 2

    .line 1863
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    if-nez v0, :cond_0

    return-void

    .line 1866
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    .line 1867
    iget v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentLooksType:I

    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCategoryLooksAdapter(I)Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    move-result-object v1

    .line 1868
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->reflectImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 1869
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryBordersAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->reflectImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 1870
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCaptionAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->reflectImagePreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    return-void
.end method

.method public updateUIAfterServiceStarted()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mMasterImage:Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    invoke-static {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setMaster(Lcom/zui/gallery/filtershow/imageshow/MasterImage;)V

    .line 400
    invoke-static {p0}, Lcom/zui/gallery/filtershow/filters/ImageFilter;->setActivityForMemoryToasts(Landroid/app/Activity;)V

    .line 404
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setupMasterImage()V

    .line 406
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->setDefaultValues()V

    .line 407
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillEditors()V

    .line 408
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->loadXML()V

    .line 411
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->fillCategories()V

    .line 412
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->loadMainPanel()V

    .line 413
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isFromPrivacy:Z

    invoke-direct {p0, v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->extractXMPData(Z)V

    .line 414
    invoke-direct {p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->processIntent()V

    return-void
.end method

.method public updateUserPresetsFromAdapter(Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;)V
    .locals 2

    .line 2777
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->getDeletedRepresentations()Ljava/util/ArrayList;

    move-result-object v0

    .line 2778
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    .line 2779
    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->deletePreset(I)V

    goto :goto_0

    .line 2782
    :cond_0
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->getChangedRepresentations()Ljava/util/ArrayList;

    move-result-object v0

    .line 2783
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    .line 2784
    invoke-direct {p0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->updatePreset(Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;)V

    goto :goto_1

    .line 2786
    :cond_1
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->clearDeletedRepresentations()V

    .line 2787
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/presets/UserPresetsAdapter;->clearChangedRepresentations()V

    return-void
.end method

.method public updateVersions()V
    .locals 6

    .line 1039
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryVersionsAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->clear()V

    .line 1040
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    const v1, 0x7f100148

    .line 1041
    invoke-virtual {p0, v1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V

    .line 1042
    iget-object v1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryVersionsAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v2, Lcom/zui/gallery/filtershow/category/Action;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;I)V

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    .line 1044
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 1045
    new-instance v1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    const v2, 0x7f100147

    .line 1046
    invoke-virtual {p0, v2}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;-><init>(Ljava/lang/String;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;I)V

    .line 1047
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryVersionsAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v2, Lcom/zui/gallery/filtershow/category/Action;

    invoke-direct {v2, p0, v1, v4}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;I)V

    invoke-virtual {v0, v2}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    .line 1049
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mVersions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryVersionsAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v1, Lcom/zui/gallery/filtershow/category/Action;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;I)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mVersions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    .line 1053
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryVersionsAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    new-instance v3, Lcom/zui/gallery/filtershow/category/Action;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;IZ)V

    invoke-virtual {v2, v3}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->add(Lcom/zui/gallery/filtershow/category/Action;)V

    goto :goto_0

    .line 1056
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCategoryVersionsAdapter:Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/category/CategoryAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public useFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1404
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-nez v0, :cond_1

    instance-of v1, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-nez v1, :cond_1

    .line 1406
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    .line 1409
    :cond_1
    instance-of v1, p1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v0, :cond_3

    .line 1412
    :cond_2
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->onNewLook(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1414
    :cond_3
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    .line 1415
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 1430
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 1432
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectSdkContext(Lcom/meicam/effect/sdk/NvsEffectSdkContext;)V

    .line 1433
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mNvsEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->setNvsEffectRenderCore(Lcom/meicam/effect/sdk/NvsEffectRenderCore;)V

    const/4 v2, 0x0

    .line 1435
    iput-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->filterRepresentationOfCopy:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-nez v0, :cond_7

    .line 1438
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    .line 1441
    iput-object p1, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->filterRepresentationOfCopy:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 1443
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isChangeCaption:Z

    if-eqz v0, :cond_6

    .line 1444
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    .line 1445
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zui/gallery/util/GroupUtils;->getIsFromConfigChange(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    instance-of v2, v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v2, :cond_4

    .line 1446
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-virtual {v1, v0, p1, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->replaceFilterRepresentations(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V

    goto/16 :goto_1

    .line 1448
    :cond_4
    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->IsInFiltershowCaption(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->getFiltershowCaptionTimes(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_5

    .line 1449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replace......filterRepresentation is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wangcanxxxxttt"

    invoke-static {v3, v2}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-virtual {v1, v0, p1, v2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->replaceFilterRepresentations(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V

    goto :goto_1

    .line 1452
    :cond_5
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_1

    .line 1456
    :cond_6
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_1

    .line 1459
    :cond_7
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->allowsSingleInstanceOnly()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1463
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1467
    instance-of v2, v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v2, :cond_8

    .line 1468
    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isChangeCaption:Z

    if-eqz v2, :cond_c

    .line 1469
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1470
    instance-of v3, v2, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v3, :cond_c

    .line 1471
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->removeFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1472
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-virtual {v1, v2, p1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->replaceFilterRepresentations(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V

    goto :goto_1

    .line 1476
    :cond_8
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->removeFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1477
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_1

    .line 1480
    :cond_9
    instance-of v2, v0, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v2, :cond_c

    .line 1481
    iget-boolean v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->isChangeCaption:Z

    if-nez v2, :cond_b

    invoke-static {p0}, Lcom/zui/gallery/util/GroupUtils;->getIsFromConfigChange(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_0

    .line 1488
    :cond_a
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_1

    .line 1482
    :cond_b
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentEditor:Lcom/zui/gallery/filtershow/editors/Editor;

    invoke-virtual {v2}, Lcom/zui/gallery/filtershow/editors/Editor;->getLocalRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1483
    instance-of v3, v2, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    if-eqz v3, :cond_c

    .line 1484
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->removeFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1485
    iget-object v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mBoundService:Lcom/zui/gallery/filtershow/pipeline/ProcessingService;

    invoke-virtual {v1, v2, p1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->replaceFilterRepresentations(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Lcom/zui/gallery/filtershow/pipeline/ProcessingService;)V

    .line 1494
    :cond_c
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFilterRepresentation: bbbb "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedPanelId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isclick "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->isclick:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "woatxxx"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copy is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "wangcanpreset"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    return-void
.end method

.method public useFilterRepresentationNewFeature(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1564
    :cond_0
    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;

    if-nez v0, :cond_1

    instance-of v1, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-nez v1, :cond_1

    .line 1566
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getCurrentFilterRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    .line 1569
    :cond_1
    instance-of v1, p1, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;

    if-eqz v0, :cond_3

    .line 1572
    :cond_2
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->onNewLook(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1574
    :cond_3
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getPreset()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object v0

    .line 1575
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V

    .line 1576
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1578
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->copy()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    .line 1579
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    goto :goto_0

    .line 1581
    :cond_4
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->allowsSingleInstanceOnly()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1585
    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->equals(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1588
    invoke-virtual {v1, v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->removeFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1589
    invoke-virtual {v1, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 1593
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFilterRepresentation: cccccccc "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedPanelId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "woatxxx"

    invoke-static {v2, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget v0, p0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mSelectedPanelId:I

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v2, :cond_7

    const/16 v2, 0x9

    if-ne v0, v2, :cond_6

    goto :goto_1

    .line 1599
    :cond_6
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    goto :goto_2

    .line 1595
    :cond_7
    :goto_1
    sget-boolean v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_SCREEN_CHANGE:Z

    if-nez v0, :cond_8

    .line 1596
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v3}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setPreset(Lcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;Z)V

    .line 1601
    :cond_8
    :goto_2
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->setCurrentFilterRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method
