.class public Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;
.super Lcom/zui/gallery/app/ActivityState;
.source "LocalTimeAlbumPage.java"

# interfaces
.implements Lcom/zui/gallery/ui/SelectionManager$SelectionListener;
.implements Lcom/zui/gallery/data/MediaSet$SyncListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;,
        Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$MyLoadingListener;
    }
.end annotation


# static fields
.field private static final BIT_LOADING_RELOAD:I = 0x1

.field private static final BIT_LOADING_SYNC:I = 0x2

.field public static final KEY_AUTO_SELECT_ALL:Ljava/lang/String; = "auto-select-all"

.field public static final KEY_EMPTY_ALBUM:Ljava/lang/String; = "empty-album"

.field public static final KEY_MEDIA_PATH:Ljava/lang/String; = "media-path"

.field public static final KEY_PARENT_MEDIA_PATH:Ljava/lang/String; = "parent-media-path"

.field public static final KEY_RESUME_ANIMATION:Ljava/lang/String; = "resume_animation"

.field public static final KEY_SET_CENTER:Ljava/lang/String; = "set-center"

.field public static final LOCAL_MEDIA_PATH:Ljava/lang/String; = "/local/timeall"

.field private static final MSG_DELETE_COMPLETE:I = 0x2

.field private static final MSG_LEAVE_SELECT_MODE:I = 0x1

.field private static final MSG_PICK_PHOTO:I = 0x0

.field private static final MSG_UPDATE_FINISH:I = 0x5

.field private static final MSG_UPDATE_PROGRESS:I = 0x4

.field private static final MSG_UPDATE_START:I = 0x3

.field private static final REQUEST_DO_ANIMATION:I = 0x3

.field private static final REQUEST_EDIT:I = 0x4

.field public static final REQUEST_PHOTO:I = 0x2

.field private static final REQUEST_SLIDESHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalTimeAlbumPage"

.field private static final UPDATE_FINSH_CODE_FAIL:I = 0x0

.field private static final UPDATE_FINSH_CODE_SUCCESS:I = 0x1

.field private static final USER_DISTANCE_METER:F = 0.3f


# instance fields
.field private final CLICKBOTTOMBARICONINTERVAL:I

.field private animation:Landroid/view/animation/Animation;

.field private day_month_switch_container:Landroid/widget/LinearLayout;

.field private day_month_switch_icon:Landroid/widget/ImageView;

.field private labelHeight:I

.field private lastBottomBarClickedTime:J

.field private left_icon:Landroid/widget/ImageView;

.field private listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

.field private localtime_album_select:Landroid/widget/ImageView;

.field private localtime_album_select_container:Landroid/widget/LinearLayout;

.field private longTapItem:Lcom/zui/gallery/data/MediaItem;

.field private longTapItemAbslateRect:Landroid/graphics/Rect;

.field private mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

.field private mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

.field private mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

.field private mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

.field private mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

.field mEmptyAlbumToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatDialog:Lzui/app/FloatDialog;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInCameraApp:Z

.field private mInitialSynced:Z

.field private mIsActive:Z

.field private mLaunchedFromPhotoPage:Z

.field private mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

.field private mLoadingBits:I

.field private mLoadingFailed:Z

.field private mMediaSet:Lcom/zui/gallery/data/MediaSet;

.field private mMediaSetPath:Lcom/zui/gallery/data/Path;

.field private mOpenCenter:Lcom/zui/gallery/ui/RelativePosition;

.field private mParentMediaSetString:Ljava/lang/String;

.field private mPositionProvider:Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect$PositionProvider;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressDialogX:Lzui/app/ProgressDialogX;

.field private mResumeEffect:Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;

.field private final mRootPane:Lcom/zui/gallery/ui/GLView;

.field private mSaveaAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

.field protected mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private mShowDetails:Z

.field private mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

.field private mSwitchAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation;

.field private mSyncResult:I

.field private mSyncTask:Lcom/zui/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/Future<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDistance:F

.field private volatile mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

.field private mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

.field private right_text:Landroid/widget/TextView;

.field private settingView:Landroid/view/View;

.field private subTitleView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/zui/gallery/app/ActivityState;-><init>()V

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mIsActive:Z

    .line 169
    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFocusIndex:I

    const/4 v1, 0x0

    .line 174
    iput-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 178
    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLoadingBits:I

    .line 179
    iput-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mInitialSynced:Z

    .line 182
    new-instance v0, Lcom/zui/gallery/ui/RelativePosition;

    invoke-direct {v0}, Lcom/zui/gallery/ui/RelativePosition;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mOpenCenter:Lcom/zui/gallery/ui/RelativePosition;

    const/16 v0, 0x2bc

    .line 188
    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->CLICKBOTTOMBARICONINTERVAL:I

    .line 201
    iput-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 202
    iput-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    .line 203
    sget-object v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 211
    new-instance v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$1;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$1;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mPositionProvider:Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect$PositionProvider;

    .line 236
    new-instance v0, Lcom/zui/gallery/app/localtime/-$$Lambda$LocalTimeAlbumPage$NxsjccQ5K7vhkZP1SJ-UtqXvsxI;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/localtime/-$$Lambda$LocalTimeAlbumPage$NxsjccQ5K7vhkZP1SJ-UtqXvsxI;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

    .line 250
    new-instance v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$2;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    .line 1256
    iput-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 1486
    new-instance v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;

    invoke-direct {v0, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$9;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

    .line 1669
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSaveaAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    return-void
.end method

.method static synthetic access$000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mShowDetails:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/DetailsHelper;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mDetailsHelper:Lcom/zui/gallery/ui/DetailsHelper;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/RelativePosition;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mOpenCenter:Lcom/zui/gallery/ui/RelativePosition;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)F
    .locals 0

    .line 134
    iget p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mUserDistance:F

    return p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mResumeEffect:Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;)Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mResumeEffect:Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;II)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->pickPhoto(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/app/ProgressDialog;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Landroid/os/Handler;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onDown(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onUp(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;II)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onSingleTapUp(II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->dispatchTakePictureIntent()V

    return-void
.end method

.method static synthetic access$3600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;ILandroid/graphics/Rect;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onLongTap(ILandroid/graphics/Rect;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/GLView;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/ui/GLView;Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onSwitchPause(Lcom/zui/gallery/ui/GLView;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onLocalTimeAlbumViewModelChange(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onSwitchResume()V

    return-void
.end method

.method static synthetic access$4100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/ui/GLView;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->startSwitch(Lcom/zui/gallery/ui/GLView;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;IIZ)Z
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->selectAllSpecifiedTimeEntry(IIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onScroll()V

    return-void
.end method

.method static synthetic access$4500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;I)I
    .locals 0

    .line 134
    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSyncResult:I

    return p1
.end method

.method static synthetic access$4702(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)Z
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mInitialSynced:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->clearLoadingBit(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Z
    .locals 0

    .line 134
    iget-boolean p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLoadingFailed:Z

    return p0
.end method

.method static synthetic access$4902(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)Z
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLoadingFailed:Z

    return p1
.end method

.method static synthetic access$500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->showSyncErrorIfNecessary(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;I)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->setLoadingBit(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->listner:Lcom/zui/gallery/privacygroup/KeyStoreUtil$OnPrivacyListner;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    return-object p0
.end method

.method static synthetic access$6502(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/data/MediaItem;)Lcom/zui/gallery/data/MediaItem;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$6600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/ui/ActionModeHandler;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$6800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->launchPhotoEditor()V

    return-void
.end method

.method static synthetic access$6900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$7400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$7700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$7800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$8100(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$8600(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method private clearLoadingBit(I)V
    .locals 1

    .line 1177
    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLoadingBits:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLoadingBits:I

    if-nez p1, :cond_1

    .line 1178
    iget-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mIsActive:Z

    if-eqz p1, :cond_1

    .line 1179
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1180
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateSelectTextView(Z)V

    const-string p1, "LocalTimeAlbumPage"

    const-string v0, "load finished right now no photos"

    .line 1181
    invoke-static {p1, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1183
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateSelectTextView(Z)V

    .line 1184
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateModelView(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V

    .line 1186
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->resetTotalCount()V

    :cond_1
    :goto_0
    return-void
.end method

.method private closeFloatDialog()V
    .locals 1

    .line 1968
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzui/app/FloatDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    invoke-virtual {v0}, Lzui/app/FloatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private dispatchTakePictureIntent()V
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->startCameraActivity(Landroid/content/Context;)V

    return-void
.end method

.method private forceResetBottomBarMargin()V
    .locals 7

    .line 1083
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f0801bc

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const v1, 0x7f0801b6

    .line 1085
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 1086
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1087
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1088
    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 1090
    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6, v3, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 1091
    invoke-virtual {v1, v4, v4, v4, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/high16 v3, 0x42780000    # 62.0f

    .line 1092
    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1093
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1094
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private getItemIndex(Lcom/zui/gallery/data/Path;)I
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getVisibleStart()I

    move-result v0

    .line 765
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getVisibleEnd()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 767
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 768
    invoke-virtual {v2}, Lcom/zui/gallery/data/MediaObject;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getItemRect(I)Landroid/graphics/Rect;
    .locals 3

    .line 775
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 776
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object p1

    .line 777
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/zui/gallery/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/GalleryActionBar;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 778
    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    const/4 v0, 0x0

    .line 777
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object p1
.end method

.method private hideEmptyAlbumToast()V
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1284
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1286
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private initTitleBar()V
    .locals 4

    .line 1724
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08036e

    .line 1725
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->subTitleView:Landroid/widget/TextView;

    const v1, 0x7f08036d

    .line 1726
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->titleView:Landroid/widget/TextView;

    .line 1727
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06034a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x7f080214

    .line 1728
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->left_icon:Landroid/widget/ImageView;

    const v1, 0x7f080370

    .line 1729
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select_container:Landroid/widget/LinearLayout;

    const v1, 0x7f0802ce

    .line 1730
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->right_text:Landroid/widget/TextView;

    .line 1731
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select_container:Landroid/widget/LinearLayout;

    const v1, 0x7f0802ca

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select:Landroid/widget/ImageView;

    .line 1732
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select_container:Landroid/widget/LinearLayout;

    const v1, 0x7f0802cd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->day_month_switch_icon:Landroid/widget/ImageView;

    .line 1733
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select_container:Landroid/widget/LinearLayout;

    const v1, 0x7f0802cb

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->settingView:Landroid/view/View;

    .line 1734
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f01000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->animation:Landroid/view/animation/Animation;

    const/4 v0, 0x1

    .line 1735
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateSelectTextView(Z)V

    .line 1736
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    invoke-direct {p0, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateModelView(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V

    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "/local/timeall"

    .line 1005
    invoke-static {v0}, Lcom/zui/gallery/data/Path;->fromString(Ljava/lang/String;)Lcom/zui/gallery/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    .line 1006
    sget v1, Lcom/zui/gallery/util/MediaSetUtils;->TIME_BUCKET_ID:I

    invoke-virtual {v0, v1}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    const-string v0, "parent-media-path"

    .line 1008
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mParentMediaSetString:Ljava/lang/String;

    .line 1009
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/data/DataManager;->getMediaSet(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaSet;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1011
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    aput-object v1, p1, v0

    const-string v0, "MediaSet is null. Path = %s"

    invoke-static {v0, p1}, Lcom/zui/gallery/common/Utils;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/SelectionManager;->setSourceMediaSet(Lcom/zui/gallery/data/MediaSet;)V

    .line 1014
    new-instance p1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    invoke-direct {p1, v0, v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaSet;Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V

    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    .line 1015
    new-instance v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$MyLoadingListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$MyLoadingListener;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$1;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->setLoadingListener(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$LocalTimeAlbumLoadingListener;)V

    .line 1016
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setModel(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;)V

    return-void
.end method

.method private initializeViews()V
    .locals 10

    .line 927
    new-instance v0, Lcom/zui/gallery/ui/SelectionManager;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/ui/SelectionManager;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Z)V

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 928
    invoke-virtual {v0, p0}, Lcom/zui/gallery/ui/SelectionManager;->setSelectionListener(Lcom/zui/gallery/ui/SelectionManager$SelectionListener;)V

    .line 929
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;

    move-result-object v0

    .line 930
    iget-object v1, v0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v1, v1, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->lableHeight:I

    iput v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->labelHeight:I

    .line 931
    new-instance v1, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, v0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    invoke-direct {v1, v2, v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;)V

    iput-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    .line 932
    new-instance v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    iget-object v7, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget v8, v0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->placeholderColor:I

    iget-object v9, v0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;Lcom/zui/gallery/ui/SelectionManager;ILcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V

    iput-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    .line 934
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setSlotRenderer(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;)V

    .line 935
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/GLView;->addComponent(Lcom/zui/gallery/ui/GLView;)V

    .line 936
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    new-instance v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$5;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setListener(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Listener;)V

    .line 998
    new-instance v0, Lcom/zui/gallery/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getEditTitleBar()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/ui/ActionModeHandler;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    return-void
.end method

.method private isFloatDialogShowing()Z
    .locals 1

    .line 1974
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    if-eqz v0, :cond_0

    .line 1975
    invoke-virtual {v0}, Lzui/app/FloatDialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private launchPhotoEditor()V
    .locals 9

    .line 1982
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    .line 1984
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v1

    invoke-static {v1}, Lcom/zui/gallery/util/GalleryUtils;->canVideoEditType(I)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-string v4, "LocalTimeAlbumPage"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 1985
    const-class v1, Lcom/zui/gallery/app/NormalVideoTrimActivity;

    .line 1986
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    goto :goto_2

    .line 1988
    :cond_0
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_2

    .line 1989
    const-class v1, Lcom/zui/gallery/app/Best4KVideoSelectActivity;

    .line 1993
    :try_start_0
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    .line 1994
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    :try_start_1
    invoke-virtual {v7, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x18

    .line 1996
    invoke-virtual {v7, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    .line 1998
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "degreeeString "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2004
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v7, v3

    move-object v3, v4

    .line 2001
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v7, :cond_2

    .line 2004
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v7

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 2006
    :cond_1
    throw v0

    :cond_2
    :goto_2
    move v3, v5

    .line 2009
    :goto_3
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v4, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2010
    sget-object v1, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2011
    sget-object v1, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNeedHightBright()Z

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2012
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video_roatedegress"

    .line 2013
    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "media-item-path"

    .line 2014
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2015
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v4, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 2020
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_5

    :cond_4
    if-eqz v0, :cond_9

    .line 2022
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2023
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/gallery/common/BitmapUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-nez v3, :cond_6

    .line 2034
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    :cond_6
    const/4 v1, -0x1

    .line 2045
    new-instance v4, Landroid/content/Intent;

    const-string v6, "action_nextgen_edit"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2046
    iget-object v6, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-class v7, Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2047
    sget-object v6, Lcom/zui/gallery/app/GalleryActivity;->SECURE_CAMERA_EXTRA:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2048
    sget-object v6, Lcom/zui/gallery/app/GalleryActivity;->NEED_SCREEN_BRIGHT:Ljava/lang/String;

    iget-object v7, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isNeedHightBright()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2054
    sget-object v6, Lcom/zui/gallery/filtershow/FilterShowActivity;->IS_PANO:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2055
    sget-object v6, Lcom/zui/gallery/filtershow/FilterShowActivity;->GROUP_ID:Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2056
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2058
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 2059
    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "android.intent.action.EDIT"

    .line 2060
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_7
    const-string v0, "launch-fullscreen"

    .line 2062
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2063
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v4, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_8
    const-string v0, "can\'t edit photo type is not photo "

    .line 2025
    invoke-static {v4, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const-string v0, "can\'t edit photo photo is null "

    .line 2029
    invoke-static {v4, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDown(I)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setPressedIndex(I)V

    return-void
.end method

.method private onGetContent(Lcom/zui/gallery/data/MediaItem;)V
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 502
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mData:Landroid/os/Bundle;

    const-string v3, "crop"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 503
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DataManager;->getContentUri(Lcom/zui/gallery/data/Path;)Landroid/net/Uri;

    move-result-object p1

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x2000000

    .line 505
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 506
    invoke-virtual {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 507
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mData:Landroid/os/Bundle;

    const-string v2, "output"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "return-data"

    .line 508
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    :cond_0
    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 511
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 513
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 514
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    .line 515
    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 516
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private onLocalTimeAlbumViewModelChange(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 601
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    if-nez v0, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateModelView(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V

    .line 606
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 607
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->stopScrolling()V

    .line 608
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setStartIndex(I)V

    .line 609
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->updateLocalTimeAlbumViewModel(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onLongTap(ILandroid/graphics/Rect;I)V
    .locals 4

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalTimeAlbumPage onLongTap: mGetContent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mGetContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mActivity.isThirdAppCall() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSelectionManager.inSelectionMode():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 522
    invoke-virtual {v1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lenovooneXX"

    .line 521
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    .line 538
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 542
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 543
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 554
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    .line 555
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    .line 557
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->SELECTMODE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->LONG_PRESS_SELECT_MODE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, v1, v3, v2}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    .line 560
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0, p1, p3}, Lcom/zui/lenovoone/LenovoOneHelper;->drag(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/data/MediaItem;I)Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    .line 563
    :cond_4
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    .line 564
    iput-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItemAbslateRect:Landroid/graphics/Rect;

    .line 571
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    return-void
.end method

.method private onScroll()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->onScroll()V

    return-void
.end method

.method private onSingleTapUp(II)V
    .locals 3

    .line 384
    iget-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 388
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 391
    :cond_1
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaObject;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/SelectionManager;->toggle(Lcom/zui/gallery/data/Path;)V

    .line 392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "select count is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "wccccccc"

    invoke-static {p2, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 394
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    goto :goto_0

    .line 396
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->setAddToPrivacyIfEnnable(Z)V

    .line 398
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    goto :goto_1

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setPressedIndex(I)V

    .line 402
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setPressedUp()V

    .line 403
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void
.end method

.method private onSwitchPause(Lcom/zui/gallery/ui/GLView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1674
    sget-object p2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoSwitchIn:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSaveaAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    goto :goto_0

    .line 1676
    :cond_0
    sget-object p2, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->PhotoSwitchOut:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSaveaAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    .line 1679
    :goto_0
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p2, p1}, Lcom/zui/gallery/ui/PreparePageFadeoutTexture;->prepareFadeOutTexture(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/GLView;)V

    return-void
.end method

.method private onSwitchResume()V
    .locals 3

    .line 1690
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSaveaAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    sget-object v1, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1691
    iput-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSwitchAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation;

    return-void

    .line 1695
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    const-string v1, "fade_texture"

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/glrenderer/RawTexture;

    .line 1699
    new-instance v0, Lcom/zui/gallery/anim/StateTransitionAnimation;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSaveaAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/anim/StateTransitionAnimation;-><init>(Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;Lcom/zui/gallery/glrenderer/RawTexture;)V

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSwitchAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation;

    .line 1700
    sget-object v0, Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;->None:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSaveaAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation$Transition;

    return-void
.end method

.method private onUp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 377
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setPressedIndex(I)V

    goto :goto_0

    .line 379
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setPressedUp()V

    :goto_0
    return-void
.end method

.method private onUpPressed()V
    .locals 3

    .line 356
    iget-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mInCameraApp:Z

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->startGalleryActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getStateCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 359
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mParentMediaSetString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 362
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mParentMediaSetString:Ljava/lang/String;

    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/zui/gallery/app/AlbumSetPage;

    invoke-virtual {v1, p0, v2, v0}, Lcom/zui/gallery/app/StateManager;->switchState(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 366
    :cond_2
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    :goto_0
    return-void
.end method

.method private pickPhoto(II)V
    .locals 1

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, p1, v0, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->pickPhoto(IZI)V

    return-void
.end method

.method private pickPhoto(IZI)V
    .locals 7

    .line 429
    iget-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 433
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/zui/gallery/ui/GLRoot;->setLightsOutMode(Z)V

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {v1, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 440
    :cond_2
    instance-of v2, v1, Lcom/zui/gallery/data/MediaItem;

    if-nez v2, :cond_3

    .line 441
    check-cast v1, Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v1

    .line 444
    :cond_3
    instance-of v2, v1, Lcom/zui/gallery/data/MediaItem;

    if-eqz v2, :cond_8

    .line 445
    iget-boolean v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mGetContent:Z

    if-eqz v2, :cond_4

    .line 446
    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onGetContent(Lcom/zui/gallery/data/MediaItem;)V

    goto/16 :goto_0

    .line 447
    :cond_4
    iget-boolean v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLaunchedFromPhotoPage:Z

    const-string v3, "index-hint"

    const-string v4, "albumpage-transition"

    if-eqz v2, :cond_5

    .line 448
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object p2

    const/4 p3, 0x4

    .line 451
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 449
    invoke-virtual {p2, v4, p3}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v3, p1}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 453
    invoke-virtual {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onBackPressed()V

    goto/16 :goto_0

    .line 458
    :cond_5
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 459
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 461
    :cond_6
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 463
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 465
    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mMediaSetPath:Lcom/zui/gallery/data/Path;

    .line 466
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    iget-object v6, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    .line 475
    invoke-virtual {v3, p1, v6}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getSlotRect(ILcom/zui/gallery/ui/GLView;)Landroid/graphics/Rect;

    move-result-object p1

    const-string v3, "open-animation-rect"

    .line 474
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 477
    invoke-virtual {v5}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "media-set-path"

    .line 476
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaObject;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "media-item-path"

    .line 478
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "start-in-filmstrip"

    .line 482
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 484
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result p1

    const-string v0, "in_camera_roll"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_7

    .line 486
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class p2, Lcom/zui/gallery/app/FilmstripPage;

    invoke-virtual {p1, p0, p2, v2}, Lcom/zui/gallery/app/StateManager;->switchState(Lcom/zui/gallery/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 488
    :cond_7
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object p1

    check-cast v1, Lcom/zui/gallery/data/MediaItem;

    invoke-static {p1, v1, p3}, Lcom/zui/lenovoone/LenovoOneHelper;->open(Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/data/MediaItem;I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 491
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p1

    const-class p2, Lcom/zui/gallery/app/SinglePhotoPage;

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3, v2}, Lcom/zui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private prepareAnimationBackToFilmstrip(I)V
    .locals 3

    .line 1025
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->get(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    .line 1031
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "index-hint"

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1032
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    .line 1033
    invoke-virtual {v1, p1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getSlotRect(ILcom/zui/gallery/ui/GLView;)Landroid/graphics/Rect;

    move-result-object p1

    const-string v1, "open-animation-rect"

    .line 1032
    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/app/TransitionStore;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private selectAllSpecifiedTimeEntry(IIZ)Z
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0, p1, p2, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->getAll(IILcom/zui/gallery/ui/SelectionManager;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 416
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 417
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p2, p1, p3}, Lcom/zui/gallery/ui/SelectionManager;->toggleAll(Ljava/util/Set;Z)Z

    move-result p1

    .line 418
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private setLoadingBit(I)V
    .locals 1

    .line 1173
    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLoadingBits:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLoadingBits:I

    return-void
.end method

.method private showEmptyAlbumToast(I)V
    .locals 2

    .line 1270
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1271
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f10010b

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1278
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mEmptyAlbumToast:Ljava/lang/ref/WeakReference;

    .line 1279
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showFloatDialog()V
    .locals 15

    .line 1810
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    if-eqz v0, :cond_e

    .line 1811
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1812
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setLongTapItemPath(Lcom/zui/gallery/data/Path;)V

    .line 1813
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1815
    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zui/gallery/data/GroupBucketHelper;->isExistInFavoriteGroup(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 1817
    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {v4}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v4

    .line 1818
    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    instance-of v6, v5, Lcom/zui/gallery/data/CloudImage;

    const v7, 0x7f1000b9

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    new-array v3, v8, [Ljava/lang/String;

    .line 1819
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 1820
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$10;

    invoke-direct {v2, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$10;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    invoke-virtual {v1, v3, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1829
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto/16 :goto_a

    :cond_0
    const v6, 0x7f1000fa

    const/4 v9, 0x4

    const v10, 0x7f100178

    const v11, 0x7f10020c

    const v12, 0x7f100254

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-ne v4, v14, :cond_7

    .line 1831
    invoke-static {v5}, Lcom/zui/gallery/util/GalleryUtils;->isDNGImage(Lcom/zui/gallery/data/MediaItem;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItem:Lcom/zui/gallery/data/MediaItem;

    iget-boolean v4, v4, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v8

    .line 1832
    :goto_1
    iget-object v5, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    new-array v5, v9, [Ljava/lang/String;

    .line 1833
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    if-nez v3, :cond_4

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    aput-object v1, v5, v14

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    goto :goto_5

    :cond_5
    :goto_3
    new-array v5, v13, [Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    if-nez v3, :cond_6

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    aput-object v1, v5, v8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v14

    .line 1834
    :goto_5
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;

    invoke-direct {v2, p0, v4, v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$11;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;ZZ)V

    invoke-virtual {v1, v5, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1880
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto/16 :goto_a

    .line 1881
    :cond_7
    invoke-static {v4}, Lcom/zui/gallery/util/GalleryUtils;->canVideoEditType(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1883
    iget-object v4, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_9

    new-array v4, v13, [Ljava/lang/String;

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    if-nez v3, :cond_8

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_8
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    aput-object v1, v4, v8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v14

    goto :goto_8

    :cond_9
    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    if-nez v3, :cond_a

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_a
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_7
    aput-object v1, v4, v14

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v13

    .line 1884
    :goto_8
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$12;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)V

    invoke-virtual {v1, v4, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1920
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    goto :goto_a

    :cond_b
    new-array v4, v13, [Ljava/lang/String;

    .line 1923
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    if-nez v3, :cond_c

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_c
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_9
    aput-object v1, v4, v8

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v14

    .line 1924
    new-instance v1, Lzui/app/FloatDialog$Builder;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lzui/app/FloatDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v8}, Lzui/app/FloatDialog$Builder;->setShowAsMenuPopup(Z)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;

    invoke-direct {v2, p0, v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$13;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Z)V

    invoke-virtual {v1, v4, v2}, Lzui/app/FloatDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/FloatDialog$Builder;

    move-result-object v1

    .line 1949
    invoke-virtual {v1, v0}, Lzui/app/FloatDialog$Builder;->setMaskWindowBackground(Landroid/graphics/drawable/Drawable;)Lzui/app/FloatDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzui/app/FloatDialog$Builder;->create()Lzui/app/FloatDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    .line 1951
    :goto_a
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    new-instance v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$14;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$14;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    invoke-virtual {v0, v1}, Lzui/app/FloatDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1959
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->isFloatDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1960
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->closeFloatDialog()V

    .line 1962
    :cond_d
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->longTapItemAbslateRect:Landroid/graphics/Rect;

    .line 1963
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFloatDialog:Lzui/app/FloatDialog;

    invoke-virtual {v1, v0}, Lzui/app/FloatDialog;->showAtLocation(Landroid/graphics/Rect;)V

    :cond_e
    return-void
.end method

.method private showSyncErrorIfNecessary(Z)V
    .locals 2

    .line 1165
    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLoadingBits:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSyncResult:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mIsActive:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    .line 1166
    invoke-virtual {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 1167
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v0, 0x7f10027c

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 1168
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private startAddToPrivacyGroup(Ljava/lang/String;Lcom/zui/gallery/data/MediaItem;)V
    .locals 2

    const-string v0, "privatekey"

    const-string/jumbo v1, "startAddToPrivacyGroup is called"

    .line 1459
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-virtual {p2}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mp4"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    .line 1461
    invoke-virtual {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->showLoadingDialog()V

    .line 1462
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$8;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1468
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startSwitch(Lcom/zui/gallery/ui/GLView;)V
    .locals 1

    .line 1683
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSwitchAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation;

    if-eqz v0, :cond_0

    .line 1684
    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/GLView;->setIntroAnimation(Lcom/zui/gallery/anim/StateTransitionAnimation;)V

    const/4 p1, 0x0

    .line 1685
    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSwitchAnimation:Lcom/zui/gallery/anim/StateTransitionAnimation;

    :cond_0
    return-void
.end method

.method private switchToFilmstrip()V
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getVisibleStart()I

    move-result v0

    .line 1040
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->prepareAnimationBackToFilmstrip(I)V

    .line 1041
    iget-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v0, :cond_1

    .line 1042
    invoke-virtual {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onBackPressed()V

    :cond_1
    return-void
.end method

.method private updateHeadRoot()V
    .locals 4

    .line 1766
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1767
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v0

    .line 1768
    :goto_0
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 1769
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 1771
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1772
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1773
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1774
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1775
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x11

    .line 1776
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1777
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateModelView(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;)V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select_container:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    sget-object v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne p1, v0, :cond_2

    .line 582
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->day_month_switch_icon:Landroid/widget/ImageView;

    const v0, 0x7f0702af

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 583
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 584
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 585
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->titleView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->titleView:Landroid/widget/TextView;

    const v0, 0x7f10004e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 590
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result p1

    if-nez p1, :cond_3

    .line 591
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 595
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->day_month_switch_icon:Landroid/widget/ImageView;

    const v0, 0x7f0702b2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 596
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateSelectTextView(Z)V
    .locals 1

    .line 1712
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1716
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1718
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->day_month_switch_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1719
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private updateTitleBar()V
    .locals 4

    .line 1198
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1199
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->left_icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->right_text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1201
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select_container:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1202
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select_container:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1203
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->subTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1204
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->day_month_switch_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1205
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1206
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1207
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v3, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->titleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->titleView:Landroid/widget/TextView;

    const v3, 0x7f10004e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1212
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->day_month_switch_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v3, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->day_month_switch_icon:Landroid/widget/ImageView;

    const v3, 0x7f0702b2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 1215
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->day_month_switch_icon:Landroid/widget/ImageView;

    const v3, 0x7f0702af

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1219
    :goto_1
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/cloud/CloudUtils;->isCloudServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1220
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->settingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->settingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1224
    :goto_2
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->settingView:Landroid/view/View;

    new-instance v1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$7;

    invoke-direct {v1, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$7;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1233
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateTitleBarVisibility(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public dismissLoadingDialog()V
    .locals 1

    .line 1481
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-eqz v0, :cond_0

    .line 1482
    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->dismiss()V

    :cond_0
    return-void
.end method

.method protected getBackgroundColorId(Landroid/os/Bundle;)I
    .locals 0

    const p1, 0x7f0500b3

    return p1
.end method

.method protected getItemRect(Lcom/zui/gallery/data/Path;)Landroid/graphics/Rect;
    .locals 0

    .line 784
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->getItemIndex(Lcom/zui/gallery/data/Path;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 789
    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->getItemRect(I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized isDayView()Z
    .locals 2

    monitor-enter p0

    .line 1624
    :try_start_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$new$0$LocalTimeAlbumPage()V
    .locals 3

    const-string v0, "LocalTimeAlbumPage"

    const-string v1, "onPatpat"

    .line 237
    invoke-static {v0, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-static {v0, v1, v2}, Lcom/zui/lenovoone/LenovoOneHelper;->sendBatch(Landroid/app/Activity;Lcom/zui/gallery/data/DataManager;Lcom/zui/gallery/ui/SelectionManager;)V

    :cond_0
    return-void
.end method

.method protected onBackPressed()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v0, v0, Lcom/zui/gallery/app/AbstractGalleryActivity;->mTabManager:Lcom/zui/gallery/app/TabManager;

    invoke-virtual {v0}, Lcom/zui/gallery/app/TabManager;->getmRoot()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 340
    :cond_0
    iget-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLaunchedFromPhotoPage:Z

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v0

    const/4 v1, 0x2

    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "albumpage-transition"

    .line 341
    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/app/TransitionStore;->putIfNotPresent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 347
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mInCameraApp:Z

    if-eqz v0, :cond_2

    .line 348
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onBackPressed()V

    goto :goto_0

    .line 350
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onUpPressed()V

    :goto_0
    return-void
.end method

.method protected onBottombarClicked(I)V
    .locals 10

    .line 1293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->lastBottomBarClickedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2bc

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 1296
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->lastBottomBarClickedTime:J

    const-string v0, "LocalTimeAlbumPage"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_4

    .line 1370
    :sswitch_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    const v0, 0x7f0800ac

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->OnBottomBarButtonClicked(I)V

    goto/16 :goto_4

    .line 1375
    :sswitch_1
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 1381
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    const/16 v2, 0xf

    if-ge p1, v2, :cond_3

    .line 1383
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectContinuesFolderCount()I

    move-result p1

    .line 1384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBottombarClicked: totalContinuesFolderCount: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectAllMode()Z

    move-result v0

    if-nez v0, :cond_4

    if-lez p1, :cond_2

    .line 1387
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->resetGLAnimatingStatus()V

    .line 1388
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/ActionModeHandler;->setDeleteProgressListener(Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0

    .line 1390
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {p1, v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->setGlAnimating(Z)V

    .line 1391
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    new-instance v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const-string v2, "DeleteProgress"

    invoke-direct {v0, p0, v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$DeleteProgressListener;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/app/AbstractGalleryActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->setDeleteProgressListener(Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    goto :goto_0

    .line 1398
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->resetGLAnimatingStatus()V

    .line 1399
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/ActionModeHandler;->setDeleteProgressListener(Lcom/zui/gallery/ui/MenuExecutor$ProgressListener;)V

    .line 1405
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    const v0, 0x7f0800a7

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->OnBottomBarButtonClicked(I)V

    goto/16 :goto_4

    .line 1302
    :sswitch_2
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 1303
    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    if-gtz p1, :cond_5

    goto/16 :goto_3

    .line 1309
    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "get-group-album"

    .line 1310
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1311
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1312
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    const/4 v4, 0x7

    .line 1313
    invoke-virtual {v0, v4}, Lcom/zui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "media-path"

    .line 1311
    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1315
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/gallery/data/Path;

    .line 1320
    iget-object v8, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object v7

    .line 1321
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaObject;->isMediaSet()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1322
    check-cast v7, Lcom/zui/gallery/data/LocalAlbum;

    .line 1323
    invoke-virtual {v7}, Lcom/zui/gallery/data/LocalAlbum;->getCoverMediaItem()Lcom/zui/gallery/data/MediaItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 1324
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1326
    :cond_7
    check-cast v7, Lcom/zui/gallery/data/MediaItem;

    .line 1327
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaItem;->getMediaType()I

    move-result v8

    .line 1328
    instance-of v9, v7, Lcom/zui/gallery/data/CloudImage;

    if-eqz v9, :cond_8

    .line 1329
    check-cast v7, Lcom/zui/gallery/data/CloudImage;

    invoke-virtual {v7}, Lcom/zui/gallery/data/CloudImage;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 1331
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1332
    :cond_9
    invoke-static {v8}, Lcom/zui/gallery/data/MediaObject;->isVideoType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1333
    invoke-virtual {v7}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 1334
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1335
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1342
    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v0, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v0, v7

    .line 1343
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    .line 1344
    :cond_c
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v7, 0x7f10002f

    new-array v8, v3, [Ljava/lang/Object;

    .line 1345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-virtual {v1, v7, v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1346
    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1347
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v7, 0x7f10002e

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-virtual {v1, v7, v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1348
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1349
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v7, 0x7f100035

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-virtual {v1, v7, v8}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1351
    :cond_f
    :goto_2
    sget-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->ADD_TO_GROUP_SUBTITLE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "media-image-paths"

    .line 1353
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "media-video-paths"

    .line 1354
    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "cloud-item-ids"

    .line 1355
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1358
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1359
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 1361
    :cond_10
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 1363
    sget-object v0, Lcom/zui/gallery/app/AlbumSetAddPage;->IS_LOCAL_TIME_ALBUM_PAGE_CALL:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1365
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/zui/gallery/app/AlbumSetAddPage;

    invoke-virtual {v0, v1, p1}, Lcom/zui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_4

    :cond_11
    :goto_3
    return-void

    .line 1409
    :sswitch_3
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1, v2}, Lcom/zui/gallery/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_12

    return-void

    :cond_12
    if-eqz p1, :cond_13

    .line 1411
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_13

    .line 1412
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_13
    if-eqz p1, :cond_14

    .line 1415
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_14

    const-string p1, "pathList size == 0"

    .line 1416
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1419
    :cond_14
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/gallery/data/Path;

    .line 1420
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDataManager()Lcom/zui/gallery/data/DataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/data/DataManager;->getMediaObject(Lcom/zui/gallery/data/Path;)Lcom/zui/gallery/data/MediaObject;

    move-result-object p1

    .line 1421
    check-cast p1, Lcom/zui/gallery/data/MediaItem;

    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    .line 1423
    iget-boolean p1, p1, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    iget p1, p1, Lcom/zui/gallery/data/MediaItem;->continuousCount:I

    if-lez p1, :cond_15

    .line 1424
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f1000a2

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1428
    :cond_15
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    instance-of v0, p1, Lcom/zui/gallery/data/CloudImage;

    if-eqz v0, :cond_16

    .line 1429
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f10008b

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1433
    :cond_16
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getSize()J

    move-result-wide v0

    const-wide/32 v4, 0x1f400000

    cmp-long p1, v0, v4

    if-lez p1, :cond_17

    .line 1434
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v1, 0x7f100121

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1438
    :cond_17
    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->isPrivacyGroupExists()Z

    move-result p1

    const-string v0, "privatekey"

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->get()Lcom/zui/gallery/privacygroup/KeyStoreUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/privacygroup/KeyStoreUtil;->isPrivacySpaceOff()Z

    move-result p1

    if-nez p1, :cond_18

    const-string/jumbo p1, "\u9690\u79c1\u76f8\u518c\u5df2\u5b58\u5728"

    .line 1439
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0, p1, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->startAddToPrivacyGroup(Ljava/lang/String;Lcom/zui/gallery/data/MediaItem;)V

    goto :goto_4

    :cond_18
    const-string/jumbo p1, "\u8fd8\u672a\u521b\u5efa\u8fc7\u9690\u79c1\u76f8\u518c"

    .line 1444
    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.lenovo.privacyspace.verification"

    .line 1446
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1447
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1448
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v1, 0x22b8

    invoke-virtual {v0, p1, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080053 -> :sswitch_3
        0x7f0800a6 -> :sswitch_2
        0x7f0800a7 -> :sswitch_1
        0x7f0800ac -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized onClick(Landroid/view/View;)V
    .locals 5

    monitor-enter p0

    .line 1629
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0802ca

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1631
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    if-ne p1, v0, :cond_0

    .line 1632
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->enterSelectionMode()V

    .line 1635
    :cond_0
    sget-object p1, Lcom/zui/gallery/util/AvatarUtils$Catagory;->SELECTMODE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Action;->CLICK_SELECT_MODE:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v1, ""

    invoke-static {p1, v0, v1, v2}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    goto :goto_1

    .line 1636
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0802cd

    if-ne p1, v0, :cond_5

    .line 1638
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isFastClick()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    .line 1639
    monitor-exit p0

    return-void

    .line 1640
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 1641
    monitor-exit p0

    return-void

    .line 1643
    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->getVisibleStart()I

    move-result p1

    .line 1646
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->leaveSelectionMode()V

    .line 1647
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mViewModel:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    sget-object v1, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    .line 1649
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->LOCALTIMEALBUMPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->MONTH_VIEW:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v4, ""

    invoke-static {v0, v1, v4, v3}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    .line 1650
    sget-object v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->MONTH:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 1651
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-direct {p0, v1, v3}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onSwitchPause(Lcom/zui/gallery/ui/GLView;Z)V

    .line 1652
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 1655
    :cond_4
    sget-object v0, Lcom/zui/gallery/util/AvatarUtils$Catagory;->LOCALTIMEALBUMPAGE:Lcom/zui/gallery/util/AvatarUtils$Catagory;

    sget-object v1, Lcom/zui/gallery/util/AvatarUtils$Action;->DAY_VIEW:Lcom/zui/gallery/util/AvatarUtils$Action;

    const-string v4, ""

    invoke-static {v0, v1, v4, v2}, Lcom/zui/gallery/util/AvatarUtils;->trackEvent(Lcom/zui/gallery/util/AvatarUtils$Catagory;Lcom/zui/gallery/util/AvatarUtils$Action;Ljava/lang/String;I)V

    .line 1656
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->localtime_album_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1657
    sget-object v0, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;->DAY:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;

    .line 1658
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-direct {p0, v1, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onSwitchPause(Lcom/zui/gallery/ui/GLView;Z)V

    .line 1660
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onLocalTimeAlbumViewModelChange(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumViewModel;I)V

    .line 1661
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->onSwitchResume()V

    .line 1662
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->startSwitch(Lcom/zui/gallery/ui/GLView;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1665
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 890
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->buildTabManager()V

    .line 891
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    sget-object v1, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    .line 892
    invoke-super {p0, p1}, Lcom/zui/gallery/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 893
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->initTitleBar()V

    .line 894
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateTitleBar()V

    .line 895
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateHeadRoot()V

    .line 896
    iget-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mInitialSynced:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 897
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->setLoadingBit(I)V

    .line 898
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/zui/gallery/data/MediaSet;->requestSync(Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    goto :goto_0

    .line 900
    :cond_0
    invoke-direct {p0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->clearLoadingBit(I)V

    .line 903
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalTimeAlbumPage "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " land:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "shenmegui"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;

    move-result-object p1

    .line 905
    iget-object v0, p1, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v0, v0, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->lableHeight:I

    iput v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->labelHeight:I

    .line 906
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    iget-object v1, p1, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setSlotSpec(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;)V

    .line 907
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    iget-object p1, p1, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setLabelSpec(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V

    .line 908
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->resume()V

    .line 909
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->resume()V

    .line 910
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    if-eqz p1, :cond_2

    .line 911
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getEditTitleBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->setActionModeView(Landroid/view/ViewGroup;)V

    .line 912
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->isActionModeIsShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 913
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->startActionMode()V

    .line 915
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->resume()V

    .line 919
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 920
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->needUpadateTitleTextWidth()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/ActionModeHandler;->setActionModelTitleMaxLenght(Z)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 615
    invoke-super {p0, p1, p2}, Lcom/zui/gallery/app/ActivityState;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 616
    invoke-static {}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->instance()Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;

    move-result-object p2

    const-class v0, Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    invoke-interface {p2, v0}, Lcom/zui/sdk/lenovoone/manager/LenovoOneManager;->service(Ljava/lang/Class;)Lcom/zui/sdk/service/foundation/ZuiService;

    move-result-object p2

    check-cast p2, Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    iput-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    const p2, 0x3e99999a    # 0.3f

    .line 617
    invoke-static {p2}, Lcom/zui/gallery/util/GalleryUtils;->meterToPixel(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mUserDistance:F

    .line 618
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->initializeViews()V

    .line 619
    invoke-direct {p0, p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->initializeData(Landroid/os/Bundle;)V

    .line 620
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateHeadRoot()V

    const-string p2, "get-content"

    const/4 v0, 0x0

    .line 622
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mGetContent:Z

    const-string p2, "auto-select-all"

    .line 625
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 626
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p2}, Lcom/zui/gallery/ui/SelectionManager;->selectAll()V

    .line 629
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 630
    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p2

    const-class v1, Lcom/zui/gallery/app/FilmstripPage;

    invoke-virtual {p2, v1}, Lcom/zui/gallery/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLaunchedFromPhotoPage:Z

    const-string p2, "app-bridge"

    .line 631
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mInCameraApp:Z

    .line 633
    new-instance p1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$3;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mHandler:Landroid/os/Handler;

    .line 726
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/util/GroupUtils;->isGroupUpdated(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 727
    new-instance p1, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;

    invoke-direct {p1, p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;)V

    .line 757
    invoke-virtual {p1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$4;->start()V

    :cond_1
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onCustomScrollBarPostionChange(II)V
    .locals 1

    .line 1804
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    if-eqz v0, :cond_0

    .line 1805
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->onCustomScrollBarPostionChange(II)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 876
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onDestroy()V

    .line 877
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 878
    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->setLoadingListener(Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader$LocalTimeAlbumLoadingListener;)V

    .line 880
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->closeFloatDialog()V

    .line 881
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->destroy()V

    .line 883
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->destory()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 849
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onPause()V

    .line 850
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    if-eqz v0, :cond_0

    .line 851
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

    invoke-virtual {v0, v1}, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->removeListener(Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;)V

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setAnimating(Z)V

    .line 853
    iput-boolean v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mIsActive:Z

    .line 860
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setSlotFilter(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LocalTimeSlotFilter;)V

    .line 861
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/ActionModeHandler;->pause()V

    .line 862
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->pause()V

    .line 863
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->pause()V

    .line 864
    invoke-static {}, Lcom/zui/gallery/ui/DetailsHelper;->pause()V

    .line 866
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    if-eqz v0, :cond_1

    .line 867
    invoke-interface {v0}, Lcom/zui/gallery/util/Future;->cancel()V

    .line 868
    iput-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    const/4 v0, 0x2

    .line 869
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->clearLoadingBit(I)V

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->hideTip(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 796
    invoke-super {p0}, Lcom/zui/gallery/app/ActivityState;->onResume()V

    .line 797
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mZuiPatpatService:Lcom/zui/sdk/service/patpat/ZuiPatpatService;

    if-eqz v0, :cond_0

    .line 798
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mListener:Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;

    invoke-virtual {v0, v1}, Lcom/zui/sdk/service/patpat/ZuiPatpatService;->addListener(Lcom/zui/sdk/service/patpat/ZuiPatpatService$PatpatListener;)V

    :cond_0
    const/4 v0, 0x1

    .line 799
    iput-boolean v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mIsActive:Z

    .line 800
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTransitionStore()Lcom/zui/gallery/app/TransitionStore;

    move-result-object v1

    const-string v2, "resume_animation"

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/TransitionStore;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;

    iput-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mResumeEffect:Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;

    if-eqz v1, :cond_1

    .line 802
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setSlotFilter(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LocalTimeSlotFilter;)V

    .line 803
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mResumeEffect:Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mPositionProvider:Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect$PositionProvider;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;->setPositionProvider(Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect$PositionProvider;)V

    .line 804
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mResumeEffect:Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;

    invoke-virtual {v1}, Lcom/zui/gallery/ui/localtime/LocalTimePhotoFallbackEffect;->start()V

    .line 806
    :cond_1
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->setContentPane(Lcom/zui/gallery/ui/GLView;)V

    .line 807
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 808
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->initTitleBar()V

    .line 809
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateTitleBar()V

    .line 810
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateHeadRoot()V

    .line 812
    invoke-direct {p0, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->setLoadingBit(I)V

    const/4 v1, 0x0

    .line 813
    iput-boolean v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mLoadingFailed:Z

    .line 814
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumDataAdapter:Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;

    invoke-virtual {v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumDataLoader;->resume()V

    .line 815
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->resume()V

    .line 816
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setPressedIndex(I)V

    .line 817
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/ActionModeHandler;->resume()V

    .line 818
    iget-boolean v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mInitialSynced:Z

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 819
    invoke-direct {p0, v2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->setLoadingBit(I)V

    .line 820
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mMediaSet:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v2, p0}, Lcom/zui/gallery/data/MediaSet;->requestSync(Lcom/zui/gallery/data/MediaSet$SyncListener;)Lcom/zui/gallery/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSyncTask:Lcom/zui/gallery/util/Future;

    .line 822
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->buildTabManager()V

    .line 824
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    sget-object v3, Lcom/zui/gallery/app/TabManager$TabIndex;->TAB_TIME:Lcom/zui/gallery/app/TabManager$TabIndex;

    invoke-virtual {v2, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->updateTabIndex(Lcom/zui/gallery/app/TabManager$TabIndex;)V

    .line 825
    iget-object v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showTab(Z)V

    .line 826
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showScrollBar(Z)V

    .line 827
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget v2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->labelHeight:I

    iget-object v3, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTabBarHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->initScrollBarMarginTopAndBottom(II)V

    .line 828
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->showHeader()V

    .line 829
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v0

    if-nez v0, :cond_3

    .line 830
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getCloudTipLayoutController()Lcom/zui/gallery/cloud/CloudTipLayoutController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/cloud/CloudTipLayoutController;->showTip(Z)V

    .line 833
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/util/GalleryUtils;->refresh(Landroid/content/Context;)V

    .line 834
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->get(Lcom/zui/gallery/app/AbstractGalleryActivity;)Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;

    move-result-object v0

    .line 835
    iget-object v1, v0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    iget v1, v1, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;->lableHeight:I

    iput v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->labelHeight:I

    .line 836
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    iget-object v2, v0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->slotViewSpec:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;

    invoke-virtual {v1, v2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setSlotSpec(Lcom/zui/gallery/ui/localtime/LocalTimeSlotView$Spec;)V

    .line 837
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    iget-object v0, v0, Lcom/zui/gallery/app/Config$LocalTimeAlbumPage;->labelSpec:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->setLabelSpec(Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer$LabelSpec;)V

    .line 838
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mAlbumView:Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeAlbumSlotRenderer;->resume()V

    .line 839
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    if-eqz v0, :cond_4

    .line 840
    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->resume()V

    .line 843
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateTitleBarVisibility(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onScrollBarMaxLengthAvailable(I)V
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    if-eqz v0, :cond_0

    .line 1798
    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->onScrollBarMaxLengthAvailable(I)V

    :cond_0
    return-void
.end method

.method public onSelectionChange(Lcom/zui/gallery/data/Path;Z)V
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation(Lcom/zui/gallery/data/Path;Z)V

    return-void
.end method

.method public onSelectionModeChange(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->selectALl(Z)V

    .line 1125
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1117
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->selectALl(Z)V

    .line 1118
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 1119
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1109
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1, v1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->selectALl(Z)V

    .line 1110
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->finishActionMode()V

    .line 1111
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->initTitleBar()V

    .line 1112
    invoke-direct {p0}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->updateTitleBar()V

    .line 1113
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    goto :goto_0

    .line 1102
    :cond_3
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActionModeHandler:Lcom/zui/gallery/ui/ActionModeHandler;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/ActionModeHandler;->startActionMode()V

    .line 1104
    invoke-virtual {p0, v1}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->performHapticFeedback(I)V

    .line 1105
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mRootPane:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    :goto_0
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/16 p3, 0x22b8

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    .line 1073
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    if-eqz p1, :cond_1

    .line 1074
    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mCurrentPhoto:Lcom/zui/gallery/data/MediaItem;

    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->startAddToPrivacyGroup(Ljava/lang/String;Lcom/zui/gallery/data/MediaItem;)V

    goto :goto_0

    .line 1076
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f100034

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1067
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->startRisingAnimation()V

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    return-void

    :cond_4
    const-string p1, "return-index-hint"

    .line 1062
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFocusIndex:I

    .line 1063
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->makeSlotVisible(I)V

    goto :goto_0

    :cond_5
    if-nez p3, :cond_6

    return-void

    :cond_6
    const-string p1, "photo-index"

    .line 1055
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mFocusIndex:I

    .line 1056
    iget-object p2, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    invoke-virtual {p2, p1}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->setCenterIndex(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onSyncDone(Lcom/zui/gallery/data/MediaSet;I)V
    .locals 2

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSyncDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/gallery/common/Utils;->maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalTimeAlbumPage"

    invoke-static {v0, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    new-instance v0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;

    invoke-direct {v0, p0, p2}, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage$6;-><init>(Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;I)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showLoadingDialog()V
    .locals 3

    .line 1472
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    if-nez v0, :cond_0

    .line 1473
    new-instance v0, Lzui/app/ProgressDialogX;

    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lzui/app/ProgressDialogX;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    .line 1474
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setMessage(Ljava/lang/CharSequence;)V

    .line 1475
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzui/app/ProgressDialogX;->setCancelable(Z)V

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mProgressDialogX:Lzui/app/ProgressDialogX;

    invoke-virtual {v0}, Lzui/app/ProgressDialogX;->show()V

    return-void
.end method

.method protected stopScroll()V
    .locals 1

    .line 1783
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    if-eqz v0, :cond_0

    .line 1784
    invoke-virtual {v0}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->stopScrolling()V

    :cond_0
    return-void
.end method

.method protected updateScrollPostion(II)V
    .locals 1

    .line 1790
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSlotView:Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;

    if-eqz v0, :cond_0

    .line 1791
    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/localtime/LocalTimeSlotView;->updateScrollBarPosition(II)V

    :cond_0
    return-void
.end method

.method protected updateTitleBarVisibility(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1740
    iget-object v0, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getTitleBar()Landroid/view/View;

    move-result-object v0

    .line 1741
    iget-object v1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080370

    .line 1742
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1743
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v3, ""

    const v4, 0x7f0501dc

    const-string v5, "LocalTimeAlbumPage"

    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    const-string/jumbo p1, "updateTitleBarVisibility landscape orientation"

    .line 1744
    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {p1}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1746
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1748
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f050207

    .line 1749
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "updateTitleBarVisibility portrait orientation"

    .line 1752
    invoke-static {v5, p1}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1754
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1755
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1757
    :cond_2
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->titleView:Landroid/widget/TextView;

    const v1, 0x7f10004e

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1760
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v3

    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1761
    iget-object p1, p0, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
