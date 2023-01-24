.class public Lcom/zui/gallery/ui/PhotoView;
.super Lcom/zui/gallery/ui/GLView;
.source "PhotoView.java"

# interfaces
.implements Lcom/zui/gallery/util/OnLeftRightKeyClick;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/PhotoView$decodeBitmapThread;,
        Lcom/zui/gallery/ui/PhotoView$MyGestureListener;,
        Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;,
        Lcom/zui/gallery/ui/PhotoView$FullPicture;,
        Lcom/zui/gallery/ui/PhotoView$PictureDecorator;,
        Lcom/zui/gallery/ui/PhotoView$Picture;,
        Lcom/zui/gallery/ui/PhotoView$MyHandler;,
        Lcom/zui/gallery/ui/PhotoView$Listener;,
        Lcom/zui/gallery/ui/PhotoView$Model;,
        Lcom/zui/gallery/ui/PhotoView$Size;
    }
.end annotation


# static fields
.field private static final DEFAULT_TEXT_SIZE:F = 20.0f

.field private static final HOLD_CAPTURE_ANIMATION:I = 0x2

.field private static final HOLD_DELETE:I = 0x4

.field private static final HOLD_TOUCH_DOWN:I = 0x1

.field private static final ICON_RATIO:I = 0x6

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final INVALID_SIZE:I = -0x1

.field private static final MSG_CANCEL_EXTRA_SCALING:I = 0x2

.field private static final MSG_CAPTURE_ANIMATION_DONE:I = 0x4

.field private static final MSG_DELETE_ANIMATION_DONE:I = 0x5

.field private static final MSG_DELETE_DONE:I = 0x6

.field private static final MSG_SWITCH_FOCUS:I = 0x3

.field private static final MSG_UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final MSG_UNDO_BAR_TIMEOUT:I = 0x7

.field public static final SCREEN_NAIL_MAX:I = 0xa

.field private static final SWIPE_EDGE_THRESHOLD:F = 300.0f

.field private static final SWIPE_THRESHOLD:F = 600.0f

.field private static final TAG:Ljava/lang/String; = "PhotoView"

.field private static final UNDO_BAR_DELETE_LAST:I = 0x10

.field private static final UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final UNDO_BAR_SHOW:I = 0x1

.field private static final UNDO_BAR_TIMEOUT:I = 0x2

.field private static final UNDO_BAR_TOUCHED:I = 0x4


# instance fields
.field private DEFALUT_SCALE_THRESHOLD:F

.field private final DEFUALT_SCALE_MULT:F

.field private DEFULAT_SCALE:F

.field private final MOVETHRESHOLD:I

.field private bottom_icon_offset:I

.field private bottom_icon_rect:Landroid/graphics/Rect;

.field private isVirtualBarShow:I

.field private m120FPSTexture:Lcom/zui/gallery/glrenderer/TextTexture;

.field private m240FPSTexture:Lcom/zui/gallery/glrenderer/TextTexture;

.field private m360PanoramaViewIcon:Lcom/zui/gallery/glrenderer/Texture;

.field private m960FPSTexture:Lcom/zui/gallery/glrenderer/TextTexture;

.field private mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private mBottomMargin:I

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCancelExtraScalingPending:Z

.field private mCompensation:I

.field private mContext:Landroid/content/Context;

.field private mContinueTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private mContinuousCountText:Lcom/zui/gallery/glrenderer/TextTexture;

.field private mContinuousShotMode:Z

.field private mDisplayRotation:I

.field private mDualEditIcon:Lcom/zui/gallery/glrenderer/Texture;

.field private mDualIcon:Lcom/zui/gallery/glrenderer/Texture;

.field private mFilmMode:Z

.field private mFirst:Z

.field private mFullScreenBrowse:Z

.field private final mFullScreenBrowseBackgroundColor:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/zui/gallery/ui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/zui/gallery/ui/GestureRecognizer;

.field private mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

.field private mHdrTexture:Lcom/zui/gallery/glrenderer/TextTexture;

.field private mHdrTextureTen:Lcom/zui/gallery/glrenderer/TextTexture;

.field private mHolding:I

.field private mInvertedTriangle:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private mIsMultiWindow:Z

.field private mIsPortrait:Z

.field private mListener:Lcom/zui/gallery/ui/PhotoView$Listener;

.field private mModel:Lcom/zui/gallery/ui/PhotoView$Model;

.field private mNextBound:I

.field private mNoThumbnailText:Lcom/zui/gallery/glrenderer/StringTexture;

.field private final mPictures:Lcom/zui/gallery/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/gallery/util/RangeArray<",
            "Lcom/zui/gallery/ui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceholderColor:I

.field private final mPositionController:Lcom/zui/gallery/ui/PositionController;

.field private mPrevBound:I

.field private mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private mSizes:[Lcom/zui/gallery/ui/PhotoView$Size;

.field private mThumbnailIndex:I

.field private mTileView:Lcom/zui/gallery/ui/TileImageView;

.field private mTopMargin:I

.field private mTouchBoxIndex:I

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mVideoPlayIcon:Lcom/zui/gallery/glrenderer/Texture;

.field private mWantPictureCenterCallbacks:Z

.field private volatile playMicroVideo:Z

.field private videoView:Lcom/zui/gallery/ui/microvideo/VideoView;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 351
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/ui/GLView;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 67
    iput v2, v0, Lcom/zui/gallery/ui/PhotoView;->DEFULAT_SCALE:F

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 68
    iput v2, v0, Lcom/zui/gallery/ui/PhotoView;->DEFUALT_SCALE_MULT:F

    const v2, 0x3f333333    # 0.7f

    .line 69
    iput v2, v0, Lcom/zui/gallery/ui/PhotoView;->DEFALUT_SCALE_THRESHOLD:F

    const/4 v2, 0x2

    .line 70
    iput v2, v0, Lcom/zui/gallery/ui/PhotoView;->MOVETHRESHOLD:I

    const/4 v3, 0x0

    .line 75
    iput v3, v0, Lcom/zui/gallery/ui/PhotoView;->isVirtualBarShow:I

    .line 273
    new-instance v4, Lcom/zui/gallery/util/RangeArray;

    const/16 v5, -0xa

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Lcom/zui/gallery/util/RangeArray;-><init>(II)V

    iput-object v4, v0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    const/16 v4, 0x15

    new-array v4, v4, [Lcom/zui/gallery/ui/PhotoView$Size;

    .line 275
    iput-object v4, v0, Lcom/zui/gallery/ui/PhotoView;->mSizes:[Lcom/zui/gallery/ui/PhotoView$Size;

    .line 298
    iput-boolean v3, v0, Lcom/zui/gallery/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 299
    iput v3, v0, Lcom/zui/gallery/ui/PhotoView;->mDisplayRotation:I

    .line 300
    iput v3, v0, Lcom/zui/gallery/ui/PhotoView;->mCompensation:I

    .line 302
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/zui/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 303
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Lcom/zui/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    const/4 v4, 0x1

    .line 304
    iput-boolean v4, v0, Lcom/zui/gallery/ui/PhotoView;->mFirst:Z

    const v7, 0x7fffffff

    .line 324
    iput v7, v0, Lcom/zui/gallery/ui/PhotoView;->mTouchBoxIndex:I

    .line 328
    iput v7, v0, Lcom/zui/gallery/ui/PhotoView;->mUndoIndexHint:I

    .line 333
    iput-boolean v3, v0, Lcom/zui/gallery/ui/PhotoView;->mFilmMode:Z

    .line 335
    iput-boolean v3, v0, Lcom/zui/gallery/ui/PhotoView;->mContinuousShotMode:Z

    .line 336
    iput-boolean v3, v0, Lcom/zui/gallery/ui/PhotoView;->mFullScreenBrowse:Z

    .line 338
    iput v7, v0, Lcom/zui/gallery/ui/PhotoView;->mThumbnailIndex:I

    .line 342
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->bottom_icon_rect:Landroid/graphics/Rect;

    .line 344
    iput-boolean v3, v0, Lcom/zui/gallery/ui/PhotoView;->mIsMultiWindow:Z

    .line 345
    iput-boolean v4, v0, Lcom/zui/gallery/ui/PhotoView;->mIsPortrait:Z

    .line 352
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v7

    const-string v8, "GallerySpeedDetail"

    const-string v9, "+"

    invoke-virtual {v7, v8, v9}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static/range {p1 .. p1}, Lcom/zui/gallery/util/GalleryUtils;->refresh(Landroid/content/Context;)V

    .line 356
    new-instance v7, Lcom/zui/gallery/ui/TileImageView;

    invoke-direct {v7, v1}, Lcom/zui/gallery/ui/TileImageView;-><init>(Lcom/zui/gallery/app/GalleryContext;)V

    iput-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mTileView:Lcom/zui/gallery/ui/TileImageView;

    .line 357
    invoke-virtual {v0, v7}, Lcom/zui/gallery/ui/PhotoView;->addComponent(Lcom/zui/gallery/ui/GLView;)V

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    .line 359
    iput-object v1, v0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 362
    invoke-static {v7}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v7

    iput v7, v0, Lcom/zui/gallery/ui/PhotoView;->isVirtualBarShow:I

    const-string v7, "#1A1A1A"

    .line 366
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/zui/gallery/ui/PhotoView;->mPlaceholderColor:I

    .line 367
    iget-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    const v9, 0x7f1001c4

    .line 368
    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/high16 v9, 0x41a00000    # 20.0f

    const/4 v10, -0x1

    .line 367
    invoke-static {v7, v9, v10}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v7

    iput-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mNoThumbnailText:Lcom/zui/gallery/glrenderer/StringTexture;

    .line 371
    new-instance v7, Lcom/zui/gallery/ui/PhotoView$MyHandler;

    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/zui/gallery/ui/PhotoView$MyHandler;-><init>(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/ui/GLRoot;)V

    iput-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    .line 373
    new-instance v7, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9}, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;-><init>(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/ui/PhotoView$1;)V

    iput-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mGestureListener:Lcom/zui/gallery/ui/PhotoView$MyGestureListener;

    .line 374
    new-instance v7, Lcom/zui/gallery/ui/GestureRecognizer;

    iget-object v9, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mGestureListener:Lcom/zui/gallery/ui/PhotoView$MyGestureListener;

    invoke-direct {v7, v9, v10}, Lcom/zui/gallery/ui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/zui/gallery/ui/GestureRecognizer$Listener;)V

    iput-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mGestureRecognizer:Lcom/zui/gallery/ui/GestureRecognizer;

    move-object/from16 v7, p2

    .line 375
    iput-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 377
    invoke-virtual {v1, v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->registerLeftRightKeyListener(Lcom/zui/gallery/util/OnLeftRightKeyClick;)V

    .line 379
    new-instance v7, Lcom/zui/gallery/ui/PositionController;

    iget-object v9, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/zui/gallery/ui/PhotoView$1;

    invoke-direct {v10, v0}, Lcom/zui/gallery/ui/PhotoView$1;-><init>(Lcom/zui/gallery/ui/PhotoView;)V

    invoke-direct {v7, v9, v10}, Lcom/zui/gallery/ui/PositionController;-><init>(Landroid/content/Context;Lcom/zui/gallery/ui/PositionController$Listener;)V

    iput-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    .line 413
    new-instance v7, Lcom/zui/gallery/glrenderer/ColorTexture;

    const/high16 v9, -0x1000000

    invoke-direct {v7, v9}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mFullScreenBrowseBackgroundColor:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 414
    iget-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f060073

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 415
    iget-object v9, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060282

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    div-int/2addr v7, v2

    add-int v2, v9, v7

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/zui/gallery/ui/PhotoView;->getPositionY()I

    move-result v7

    .line 420
    iget-object v9, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060284

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 422
    iget-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0500ab

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    .line 423
    iget-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060285

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 425
    iget-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060286

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 427
    iget-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0500aa

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    .line 429
    iget-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060280

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 431
    iget-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060281

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 433
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    const v12, 0x7f1001f7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 434
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    const v14, 0x7f1001f8

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 435
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    const v14, 0x7f1001f9

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 436
    iget-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    const v11, 0x7f100065

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 437
    iget-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    const v11, 0x7f100066

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 438
    iget-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06028b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v0, Lcom/zui/gallery/ui/PhotoView;->bottom_icon_offset:I

    int-to-float v9, v9

    move v10, v2

    move v11, v7

    move v13, v9

    move/from16 v14, v20

    move/from16 v15, v21

    move/from16 v16, v22

    move/from16 v17, v24

    move/from16 v18, v23

    move/from16 v19, v25

    .line 439
    invoke-static/range {v10 .. v19}, Lcom/zui/gallery/glrenderer/TextTexture;->newInstance(IILjava/lang/String;FIIIIII)Lcom/zui/gallery/glrenderer/TextTexture;

    move-result-object v10

    iput-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->m120FPSTexture:Lcom/zui/gallery/glrenderer/TextTexture;

    move v10, v2

    move-object/from16 v12, v26

    .line 442
    invoke-static/range {v10 .. v19}, Lcom/zui/gallery/glrenderer/TextTexture;->newInstance(IILjava/lang/String;FIIIIII)Lcom/zui/gallery/glrenderer/TextTexture;

    move-result-object v10

    iput-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->m240FPSTexture:Lcom/zui/gallery/glrenderer/TextTexture;

    move v10, v2

    move-object/from16 v12, v27

    .line 445
    invoke-static/range {v10 .. v19}, Lcom/zui/gallery/glrenderer/TextTexture;->newInstance(IILjava/lang/String;FIIIIII)Lcom/zui/gallery/glrenderer/TextTexture;

    move-result-object v10

    iput-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->m960FPSTexture:Lcom/zui/gallery/glrenderer/TextTexture;

    .line 448
    new-instance v10, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v11, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    const v12, 0x7f07021f

    invoke-direct {v10, v11, v12}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/zui/gallery/glrenderer/Texture;

    .line 449
    new-instance v10, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v11, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    const v12, 0x7f070203

    invoke-direct {v10, v11, v12}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->m360PanoramaViewIcon:Lcom/zui/gallery/glrenderer/Texture;

    .line 450
    new-instance v10, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v11, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    const v12, 0x7f070110

    invoke-direct {v10, v11, v12}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mContinueTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    move v10, v2

    move v11, v7

    move-object/from16 v12, v28

    .line 451
    invoke-static/range {v10 .. v19}, Lcom/zui/gallery/glrenderer/TextTexture;->newInstance(IILjava/lang/String;FIIIIII)Lcom/zui/gallery/glrenderer/TextTexture;

    move-result-object v10

    iput-object v10, v0, Lcom/zui/gallery/ui/PhotoView;->mHdrTexture:Lcom/zui/gallery/glrenderer/TextTexture;

    move v10, v2

    move-object/from16 v12, v29

    .line 454
    invoke-static/range {v10 .. v19}, Lcom/zui/gallery/glrenderer/TextTexture;->newInstance(IILjava/lang/String;FIIIIII)Lcom/zui/gallery/glrenderer/TextTexture;

    move-result-object v2

    iput-object v2, v0, Lcom/zui/gallery/ui/PhotoView;->mHdrTextureTen:Lcom/zui/gallery/glrenderer/TextTexture;

    .line 457
    new-instance v2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    const v9, 0x7f070131

    invoke-direct {v2, v7, v9}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/zui/gallery/ui/PhotoView;->mDualEditIcon:Lcom/zui/gallery/glrenderer/Texture;

    .line 458
    new-instance v2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v7, v0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    const v9, 0x7f070132

    invoke-direct {v2, v7, v9}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Lcom/zui/gallery/ui/PhotoView;->mDualIcon:Lcom/zui/gallery/glrenderer/Texture;

    :goto_0
    if-gt v5, v6, :cond_1

    if-nez v5, :cond_0

    .line 461
    iget-object v2, v0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    new-instance v7, Lcom/zui/gallery/ui/PhotoView$FullPicture;

    invoke-direct {v7, v0}, Lcom/zui/gallery/ui/PhotoView$FullPicture;-><init>(Lcom/zui/gallery/ui/PhotoView;)V

    invoke-virtual {v2, v5, v7}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 463
    :cond_0
    iget-object v2, v0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    new-instance v7, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;

    invoke-direct {v7, v0, v5}, Lcom/zui/gallery/ui/PhotoView$ScreenNailPicture;-><init>(Lcom/zui/gallery/ui/PhotoView;I)V

    invoke-virtual {v2, v5, v7}, Lcom/zui/gallery/util/RangeArray;->put(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 468
    :cond_1
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isAlaskaDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 469
    iget v2, v0, Lcom/zui/gallery/ui/PhotoView;->DEFULAT_SCALE:F

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v5

    iput v2, v0, Lcom/zui/gallery/ui/PhotoView;->DEFULAT_SCALE:F

    .line 470
    iput v2, v0, Lcom/zui/gallery/ui/PhotoView;->DEFALUT_SCALE_THRESHOLD:F

    .line 474
    :cond_2
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v2

    const-string v5, "-"

    invoke-virtual {v2, v8, v5}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isInMultiWindowMode()Z

    move-result v2

    iput-boolean v2, v0, Lcom/zui/gallery/ui/PhotoView;->mIsMultiWindow:Z

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, v0, Lcom/zui/gallery/ui/PhotoView;->mIsPortrait:Z

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/PhotoView;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    return p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/PhotoView;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/ui/PhotoView;->mPrevBound:I

    return p0
.end method

.method static synthetic access$1100(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Model;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/zui/gallery/ui/PhotoView;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView;->showUndoBar(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/zui/gallery/ui/PhotoView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->snapback()V

    return-void
.end method

.method static synthetic access$1400(Lcom/zui/gallery/ui/PhotoView;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView;->checkHideUndoBar(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/zui/gallery/ui/PhotoView;)Landroid/content/Context;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/glrenderer/ResourceTexture;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView;->mInvertedTriangle:Lcom/zui/gallery/glrenderer/ResourceTexture;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/ResourceTexture;)Lcom/zui/gallery/glrenderer/ResourceTexture;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mInvertedTriangle:Lcom/zui/gallery/glrenderer/ResourceTexture;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/zui/gallery/ui/PhotoView;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/ui/PhotoView;->isVirtualBarShow:I

    return p0
.end method

.method static synthetic access$172(Lcom/zui/gallery/ui/PhotoView;I)I
    .locals 1

    .line 63
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    return p1
.end method

.method static synthetic access$176(Lcom/zui/gallery/ui/PhotoView;I)I
    .locals 1

    .line 63
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    return p1
.end method

.method static synthetic access$1800(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/app/AbstractGalleryActivity;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/zui/gallery/ui/PhotoView;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView;->setContinuousCount(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/GestureRecognizer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView;->mGestureRecognizer:Lcom/zui/gallery/ui/GestureRecognizer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/TileImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView;->mTileView:Lcom/zui/gallery/ui/TileImageView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/zui/gallery/ui/PhotoView;ZZZ)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/ui/PhotoView;->updateXY(ZZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/zui/gallery/ui/PhotoView;)I
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->getCameraRotation()I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(III)I
    .locals 0

    .line 63
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/ui/PhotoView;->getRotated(III)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView;->drawHDRTen(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/ui/PhotoView;->drawVideoPlayIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView;->drawHDR(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/ui/PhotoView;->draw360PanoramaViewIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/ui/PhotoView;->drawDepthViewIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/zui/gallery/ui/PhotoView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/zui/gallery/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    return p0
.end method

.method static synthetic access$300(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PositionController;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView;->drawLoadingFailMessage(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView;->drawContinuousCount(Lcom/zui/gallery/glrenderer/GLCanvas;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/ui/PhotoView;->drawContinueChooseIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/PhotoView;->drawPlaceHolder(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/zui/gallery/ui/PhotoView;Lcom/zui/gallery/glrenderer/GLCanvas;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/PhotoView;->drawVideoPlayIcon(Lcom/zui/gallery/glrenderer/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/SelectionManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/zui/gallery/ui/PhotoView;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/ui/PhotoView;->mThumbnailIndex:I

    return p0
.end method

.method static synthetic access$3602(Lcom/zui/gallery/ui/PhotoView;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/zui/gallery/ui/PhotoView;->mThumbnailIndex:I

    return p1
.end method

.method static synthetic access$3700(Lcom/zui/gallery/ui/PhotoView;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/ui/PhotoView;->mTopMargin:I

    return p0
.end method

.method static synthetic access$3800(Lcom/zui/gallery/ui/PhotoView;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/ui/PhotoView;->mBottomMargin:I

    return p0
.end method

.method static synthetic access$3900(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/util/RangeArray;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zui/gallery/ui/PhotoView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/zui/gallery/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/zui/gallery/ui/PhotoView;)F
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/ui/PhotoView;->DEFULAT_SCALE:F

    return p0
.end method

.method static synthetic access$402(Lcom/zui/gallery/ui/PhotoView;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView;->mCancelExtraScalingPending:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/zui/gallery/ui/PhotoView;)F
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/ui/PhotoView;->DEFALUT_SCALE_THRESHOLD:F

    return p0
.end method

.method static synthetic access$4200(Lcom/zui/gallery/ui/PhotoView;FF)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/PhotoView;->isSlidingEdge(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4300(Lcom/zui/gallery/ui/PhotoView;FF)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/ui/PhotoView;->swipeImages(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lcom/zui/gallery/ui/PhotoView;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/zui/gallery/ui/PhotoView;->mContinuousShotMode:Z

    return p0
.end method

.method static synthetic access$4502(Lcom/zui/gallery/ui/PhotoView;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/zui/gallery/ui/PhotoView;->mTouchBoxIndex:I

    return p1
.end method

.method static synthetic access$4600(Lcom/zui/gallery/ui/PhotoView;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->snapToNeighborImage()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/ui/PhotoView;->decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/zui/gallery/ui/PhotoView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/PhotoView;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/PhotoView$Listener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView;->mListener:Lcom/zui/gallery/ui/PhotoView$Listener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/PhotoView;)Lcom/zui/gallery/ui/SynchronizedHandler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/zui/gallery/ui/PhotoView;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/PhotoView;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/zui/gallery/ui/PhotoView;->mNextBound:I

    return p0
.end method

.method private captureAnimationDone(I)V
    .locals 1

    .line 2379
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2382
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mListener:Lcom/zui/gallery/ui/PhotoView$Listener;

    invoke-interface {p1, v0}, Lcom/zui/gallery/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2383
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mListener:Lcom/zui/gallery/ui/PhotoView$Listener;

    invoke-interface {p1}, Lcom/zui/gallery/ui/PhotoView$Listener;->onActionBarWanted()V

    .line 2385
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->snapback()V

    return-void
.end method

.method private checkHideUndoBar(I)V
    .locals 5

    .line 2046
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mUndoBarState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/zui/gallery/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 2050
    :goto_0
    iget v2, p0, Lcom/zui/gallery/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    .line 2051
    :goto_1
    iget v3, p0, Lcom/zui/gallery/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    .line 2052
    :goto_2
    iget v4, p0, Lcom/zui/gallery/ui/PhotoView;->mUndoBarState:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    if-eqz p1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    if-nez v3, :cond_6

    if-eqz v2, :cond_7

    .line 2054
    :cond_6
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->hideUndoBar()V

    :cond_7
    return-void
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p0, :cond_0

    int-to-float p1, p1

    .line 2490
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2491
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_0

    .line 2493
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 2494
    invoke-virtual {p2, p1, p1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2495
    invoke-static {p0, p2}, Lcom/zui/gallery/ui/PhotoView;->createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2496
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1

    :cond_0
    return-object p0
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 7

    .line 2472
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static decodeBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 2454
    invoke-static {p0}, Lcom/zui/gallery/ui/PhotoView;->getBitmapBounds(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2455
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2456
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2457
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2458
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2459
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2460
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2463
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    .line 2464
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2465
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, v0

    .line 2468
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/zui/gallery/ui/PhotoView;->createBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private draw360PanoramaViewIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 3

    .line 1518
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result p2

    .line 1519
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    move-result p3

    .line 1520
    div-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->m360PanoramaViewIcon:Lcom/zui/gallery/glrenderer/Texture;

    invoke-interface {v0}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 1522
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1523
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->mIsMultiWindow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->mIsPortrait:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1527
    :goto_0
    iget v2, p0, Lcom/zui/gallery/ui/PhotoView;->bottom_icon_offset:I

    sub-int/2addr p3, v2

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->m360PanoramaViewIcon:Lcom/zui/gallery/glrenderer/Texture;

    invoke-interface {v2}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v2

    sub-int/2addr p3, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    :cond_1
    sub-int/2addr p3, v1

    .line 1529
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->bottom_icon_rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->m360PanoramaViewIcon:Lcom/zui/gallery/glrenderer/Texture;

    invoke-interface {v1}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->m360PanoramaViewIcon:Lcom/zui/gallery/glrenderer/Texture;

    invoke-interface {v2}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1530
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->m360PanoramaViewIcon:Lcom/zui/gallery/glrenderer/Texture;

    invoke-interface {v0, p1, p2, p3}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method private drawContinueChooseIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 3

    .line 1585
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result p2

    .line 1586
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    move-result p3

    .line 1587
    div-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContinueTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 1589
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->isNavigationShowing(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1591
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->mIsMultiWindow:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->mIsPortrait:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/util/DeviceTypeUtils;->isPad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->mIsPortrait:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1596
    :goto_0
    iget v2, p0, Lcom/zui/gallery/ui/PhotoView;->bottom_icon_offset:I

    sub-int/2addr p3, v2

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->mContinueTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    sub-int/2addr p3, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/gallery/util/DisplayPropertyUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    :cond_3
    sub-int/2addr p3, v1

    .line 1597
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->bottom_icon_rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mContinueTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->mContinueTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1598
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContinueTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method private drawContinuousCount(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 3

    .line 1580
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContinuousCountText:Lcom/zui/gallery/glrenderer/TextTexture;

    .line 1581
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextTexture;->getTexturePositionX()I

    move-result v1

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextTexture;->getTexturePositionY()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/zui/gallery/glrenderer/TextTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method private drawDepthViewIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 3

    .line 1536
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result p2

    .line 1537
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    move-result p3

    .line 1538
    div-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mDualEditIcon:Lcom/zui/gallery/glrenderer/Texture;

    invoke-interface {v0}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    .line 1539
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->bottom_icon_offset:I

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mDualEditIcon:Lcom/zui/gallery/glrenderer/Texture;

    invoke-interface {v0}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v0

    sub-int/2addr p3, v0

    .line 1540
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->bottom_icon_rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mDualEditIcon:Lcom/zui/gallery/glrenderer/Texture;

    invoke-interface {v1}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->mDualEditIcon:Lcom/zui/gallery/glrenderer/Texture;

    invoke-interface {v2}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1541
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mDualEditIcon:Lcom/zui/gallery/glrenderer/Texture;

    invoke-interface {v0, p1, p2, p3}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method private drawFps(Lcom/zui/gallery/glrenderer/GLCanvas;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1547
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView;->m120FPSTexture:Lcom/zui/gallery/glrenderer/TextTexture;

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 1549
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView;->m240FPSTexture:Lcom/zui/gallery/glrenderer/TextTexture;

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    .line 1551
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView;->m960FPSTexture:Lcom/zui/gallery/glrenderer/TextTexture;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 1554
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/TextTexture;->getTexturePositionX()I

    move-result v0

    .line 1555
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/TextTexture;->getTexturePositionY()I

    move-result v1

    .line 1554
    invoke-virtual {p2, p1, v0, v1}, Lcom/zui/gallery/glrenderer/TextTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :cond_3
    return-void
.end method

.method private drawHDR(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 3

    .line 1567
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHdrTexture:Lcom/zui/gallery/glrenderer/TextTexture;

    if-eqz v0, :cond_0

    .line 1569
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextTexture;->getTexturePositionX()I

    move-result v1

    .line 1570
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextTexture;->getTexturePositionY()I

    move-result v2

    .line 1569
    invoke-virtual {v0, p1, v1, v2}, Lcom/zui/gallery/glrenderer/TextTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :cond_0
    return-void
.end method

.method private drawHDRTen(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 3

    .line 1559
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHdrTextureTen:Lcom/zui/gallery/glrenderer/TextTexture;

    if-eqz v0, :cond_0

    .line 1561
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextTexture;->getTexturePositionX()I

    move-result v1

    .line 1562
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TextTexture;->getTexturePositionY()I

    move-result v2

    .line 1561
    invoke-virtual {v0, p1, v1, v2}, Lcom/zui/gallery/glrenderer/TextTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :cond_0
    return-void
.end method

.method private drawLoadingFailMessage(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 3

    .line 1576
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mNoThumbnailText:Lcom/zui/gallery/glrenderer/StringTexture;

    .line 1577
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Lcom/zui/gallery/glrenderer/StringTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method private drawPlaceHolder(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 7

    .line 1497
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float v5, p2

    iget v6, p0, Lcom/zui/gallery/ui/PhotoView;->mPlaceholderColor:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method private drawVideoPlayIcon(Lcom/zui/gallery/glrenderer/GLCanvas;I)V
    .locals 6

    .line 1502
    div-int/lit8 v5, p2, 0x6

    .line 1504
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/zui/gallery/glrenderer/Texture;

    neg-int p2, v5

    div-int/lit8 v3, p2, 0x2

    move-object v1, p1

    move v2, v3

    move v4, v5

    invoke-interface/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method private drawVideoPlayIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 2

    .line 1510
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/zui/gallery/glrenderer/Texture;

    invoke-interface {v0}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mVideoPlayIcon:Lcom/zui/gallery/glrenderer/Texture;

    .line 1511
    invoke-interface {v1}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    .line 1510
    invoke-interface {v0, p1, p2, p3}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method private static gapToSide(II)I
    .locals 0

    sub-int/2addr p1, p0

    .line 2297
    div-int/lit8 p1, p1, 0x2

    const/4 p0, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getBitmapArray(Ljava/util/ArrayList;)[Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;)[",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 2504
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2506
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 2507
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2508
    aput-object v3, v1, v2

    .line 2509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TS_Smart_Select"

    invoke-static {v4, v3}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getBitmapBounds(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 3

    .line 2476
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2477
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 2478
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2479
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2480
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 2481
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private getCameraRotation()I
    .locals 2

    .line 778
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mCompensation:I

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getPanoramaRotation()I
    .locals 5

    .line 789
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 790
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mDisplayRotation:I

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 792
    :goto_0
    iget v3, p0, Lcom/zui/gallery/ui/PhotoView;->mDisplayRotation:I

    const/16 v4, 0xb4

    if-lt v3, v4, :cond_2

    move v1, v2

    :cond_2
    if-eq v1, v0, :cond_3

    .line 794
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mCompensation:I

    add-int/2addr v0, v4

    rem-int/lit16 v0, v0, 0x168

    return v0

    .line 796
    :cond_3
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mCompensation:I

    return v0
.end method

.method private getPositionY()I
    .locals 6

    const/4 v0, 0x0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getHeadRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHeadRoot ex == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotoView"

    invoke-static {v2, v1}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 493
    :goto_1
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/zui/gallery/util/DeviceTypeUtils;->isWorkingMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 494
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v0

    neg-int v0, v0

    .line 495
    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0603a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 496
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06004f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v3

    if-eqz v2, :cond_3

    .line 498
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStatusBarHeight()I

    move-result v1

    :cond_3
    add-int/2addr v4, v1

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const/16 v1, 0x14

    .line 499
    invoke-static {v0, v1}, Lcom/zui/gallery/util/GalleryUtils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    add-int/2addr v4, v0

    return v4
.end method

.method private static getRotated(III)I
    .locals 0

    .line 1612
    rem-int/lit16 p0, p0, 0xb4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method private hideUndoBar()V
    .locals 2

    .line 2030
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    .line 2031
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mListener:Lcom/zui/gallery/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Listener;->onCommitDeleteImage()V

    const/4 v0, 0x0

    .line 2032
    iput v0, p0, Lcom/zui/gallery/ui/PhotoView;->mUndoBarState:I

    const v1, 0x7fffffff

    .line 2033
    iput v1, p0, Lcom/zui/gallery/ui/PhotoView;->mUndoIndexHint:I

    .line 2034
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mListener:Lcom/zui/gallery/ui/PhotoView$Listener;

    invoke-interface {v1, v0}, Lcom/zui/gallery/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    return-void
.end method

.method private isSlidingEdge(FF)Z
    .locals 4

    .line 2231
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    .line 2232
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->isAtMinimalScale()Z

    move-result v1

    .line 2233
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->getImageAtEdges()I

    move-result v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2234
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float p2, p2, v3

    if-lez p2, :cond_1

    and-int/lit8 p2, v0, 0x4

    if-eqz p2, :cond_0

    and-int/lit8 p2, v0, 0x8

    if-nez p2, :cond_1

    :cond_0
    return v2

    :cond_1
    const/high16 p2, -0x3c6a0000    # -300.0f

    cmpg-float p2, p1, p2

    const/4 v3, 0x1

    if-gez p2, :cond_3

    if-nez v1, :cond_2

    and-int/lit8 p2, v0, 0x2

    if-eqz p2, :cond_3

    .line 2241
    :cond_2
    iget p1, p0, Lcom/zui/gallery/ui/PhotoView;->mNextBound:I

    if-gtz p1, :cond_5

    return v3

    :cond_3
    const/high16 p2, 0x43960000    # 300.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    if-nez v1, :cond_4

    and-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_5

    .line 2246
    :cond_4
    iget p1, p0, Lcom/zui/gallery/ui/PhotoView;->mPrevBound:I

    if-ltz p1, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method private setContinuousCount(I)V
    .locals 12

    .line 799
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f1000a0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 800
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060073

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 801
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 p1, p1, 0x2

    add-int v2, v0, p1

    .line 803
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->getPositionY()I

    move-result v3

    .line 804
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060284

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 805
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 806
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060285

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 807
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060286

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 808
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 809
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060280

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 810
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060281

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v5, p1

    .line 811
    invoke-static/range {v2 .. v11}, Lcom/zui/gallery/glrenderer/TextTexture;->newInstance(IILjava/lang/String;FIIIIII)Lcom/zui/gallery/glrenderer/TextTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mContinuousCountText:Lcom/zui/gallery/glrenderer/TextTexture;

    return-void
.end method

.method private setPictureSize(I)V
    .locals 3

    .line 675
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PhotoView$Picture;

    .line 676
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Picture;->getSize()Lcom/zui/gallery/ui/PhotoView$Size;

    move-result-object v2

    if-nez p1, :cond_0

    .line 677
    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 676
    :goto_0
    invoke-virtual {v1, p1, v2, v0}, Lcom/zui/gallery/ui/PositionController;->setImageSize(ILcom/zui/gallery/ui/PhotoView$Size;Landroid/graphics/Rect;)V

    return-void
.end method

.method private showUndoBar(Z)V
    .locals 4

    .line 2018
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->isContinuousShotMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2019
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 2020
    iput v0, p0, Lcom/zui/gallery/ui/PhotoView;->mUndoBarState:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    .line 2022
    iput p1, p0, Lcom/zui/gallery/ui/PhotoView;->mUndoBarState:I

    .line 2023
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Lcom/zui/gallery/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2024
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mListener:Lcom/zui/gallery/ui/PhotoView$Listener;

    if-eqz p1, :cond_1

    .line 2025
    invoke-interface {p1, v0}, Lcom/zui/gallery/ui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    :cond_1
    return-void
.end method

.method private slideToNextPicture()Z
    .locals 1

    .line 2281
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mNextBound:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2283
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->switchToNextImage()V

    .line 2284
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->startHorizontalSlide()V

    const/4 v0, 0x1

    return v0
.end method

.method private slideToPrevPicture()Z
    .locals 1

    .line 2289
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2291
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->switchToPrevImage()V

    .line 2292
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->startHorizontalSlide()V

    const/4 v0, 0x1

    return v0
.end method

.method private snapToNeighborImage()Z
    .locals 5

    .line 2264
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2265
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result v2

    .line 2267
    div-int/lit8 v3, v2, 0x2

    .line 2268
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4, v2}, Lcom/zui/gallery/ui/PhotoView;->gapToSide(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2271
    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    if-le v2, v3, :cond_0

    .line 2272
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->slideToNextPicture()Z

    move-result v0

    return v0

    .line 2273
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-le v0, v3, :cond_1

    .line 2274
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->slideToPrevPicture()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private snapback()V
    .locals 1

    .line 2256
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_0

    return-void

    .line 2258
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2259
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->snapback()V

    :cond_1
    return-void
.end method

.method private swipeImages(FF)Z
    .locals 4

    .line 2208
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    .line 2209
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->isAtMinimalScale()Z

    move-result v1

    .line 2210
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->getImageAtEdges()I

    move-result v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2211
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float p2, p2, v3

    if-lez p2, :cond_1

    and-int/lit8 p2, v0, 0x4

    if-eqz p2, :cond_0

    and-int/lit8 p2, v0, 0x8

    if-nez p2, :cond_1

    :cond_0
    return v2

    :cond_1
    const/high16 p2, -0x3bea0000    # -600.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_3

    if-nez v1, :cond_2

    and-int/lit8 p2, v0, 0x2

    if-eqz p2, :cond_3

    .line 2220
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->slideToNextPicture()Z

    move-result p1

    return p1

    :cond_3
    const/high16 p2, 0x44160000    # 600.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    if-nez v1, :cond_4

    and-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_5

    .line 2223
    :cond_4
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->slideToPrevPicture()Z

    move-result p1

    return p1

    :cond_5
    return v2
.end method

.method private switchFocus()V
    .locals 2

    .line 2160
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    return-void

    .line 2162
    :cond_0
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->switchPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2167
    :cond_1
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 2164
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->switchToPrevImage()V

    :goto_0
    return-void
.end method

.method private switchPosition()I
    .locals 5

    .line 2175
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2176
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 2178
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-le v3, v2, :cond_0

    iget v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPrevBound:I

    if-gez v3, :cond_0

    .line 2179
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/zui/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 2180
    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    .line 2181
    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    if-ge v2, v0, :cond_1

    return v4

    .line 2185
    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-ge v3, v2, :cond_1

    iget v3, p0, Lcom/zui/gallery/ui/PhotoView;->mNextBound:I

    if-lez v3, :cond_1

    .line 2186
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/zui/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 2187
    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    .line 2188
    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    if-ge v3, v0, :cond_1

    return v4

    :cond_1
    return v1
.end method

.method private switchToFirstImage()V
    .locals 2

    .line 2317
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->moveTo(I)V

    return-void
.end method

.method private switchToNextImage()V
    .locals 2

    .line 2309
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->moveTo(I)V

    return-void
.end method

.method private switchToPrevImage()V
    .locals 2

    .line 2313
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->moveTo(I)V

    return-void
.end method

.method private switchWithCaptureAnimationLocked(I)Z
    .locals 4

    .line 2345
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 2348
    iget v3, p0, Lcom/zui/gallery/ui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    return v2

    .line 2351
    :cond_1
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mListener:Lcom/zui/gallery/ui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcom/zui/gallery/ui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 2352
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->switchToNextImage()V

    .line 2353
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v3, v0}, Lcom/zui/gallery/ui/PositionController;->startCaptureAnimationSlide(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_5

    .line 2355
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_3

    return v2

    .line 2361
    :cond_3
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Model;->getCurrentIndex()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_4

    .line 2362
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->switchToFirstImage()V

    .line 2363
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PositionController;->skipToFinalPosition()V

    return v1

    .line 2367
    :cond_4
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->switchToFirstImage()V

    .line 2368
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/PositionController;->startCaptureAnimationSlide(I)V

    .line 2372
    :goto_0
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    .line 2373
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p1, v2}, Lcom/zui/gallery/ui/SynchronizedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2374
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, p1, v2, v3}, Lcom/zui/gallery/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v1

    :cond_5
    return v2
.end method

.method private updateCameraRect()V
    .locals 10

    .line 732
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result v0

    .line 733
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    move-result v1

    .line 734
    iget v2, p0, Lcom/zui/gallery/ui/PhotoView;->mCompensation:I

    const/16 v3, 0xb4

    rem-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v9, v1

    move v1, v0

    move v0, v9

    .line 739
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 740
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 741
    iget-object v5, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 742
    iget-object v6, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 745
    iget v7, p0, Lcom/zui/gallery/ui/PhotoView;->mCompensation:I

    if-eqz v7, :cond_4

    const/16 v8, 0x5a

    if-eq v7, v8, :cond_3

    if-eq v7, v3, :cond_2

    const/16 v0, 0x10e

    if-eq v7, v0, :cond_1

    goto :goto_1

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v3, v1, v5

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v3, v6, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 753
    :cond_2
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v5, v1, v5

    sub-int v6, v0, v6

    sub-int/2addr v1, v2

    sub-int/2addr v0, v4

    invoke-virtual {v3, v5, v6, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 750
    :cond_3
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v3, v0, v6

    sub-int/2addr v0, v4

    invoke-virtual {v1, v3, v2, v0, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 747
    :cond_4
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 760
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compensation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/ui/PhotoView;->mCompensation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CameraRelativeFrame = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoView"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateXY(ZZZ)V
    .locals 3

    .line 1259
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    if-nez v0, :cond_0

    return-void

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1263
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060282

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 1265
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->getPositionY()I

    move-result v0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 1267
    iget-object p3, p0, Lcom/zui/gallery/ui/PhotoView;->mHdrTextureTen:Lcom/zui/gallery/glrenderer/TextTexture;

    if-eqz p3, :cond_1

    .line 1268
    invoke-virtual {p3, v1}, Lcom/zui/gallery/glrenderer/TextTexture;->setTexturePositionX(I)V

    .line 1269
    iget-object p3, p0, Lcom/zui/gallery/ui/PhotoView;->mHdrTextureTen:Lcom/zui/gallery/glrenderer/TextTexture;

    invoke-virtual {p3, v0}, Lcom/zui/gallery/glrenderer/TextTexture;->setTexturePositionY(I)V

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 1272
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->ismFullScreenBrowse()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1273
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mHdrTexture:Lcom/zui/gallery/glrenderer/TextTexture;

    if-eqz p1, :cond_2

    .line 1274
    invoke-virtual {p1, v1}, Lcom/zui/gallery/glrenderer/TextTexture;->setTexturePositionX(I)V

    .line 1275
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mHdrTexture:Lcom/zui/gallery/glrenderer/TextTexture;

    invoke-virtual {p1, v0}, Lcom/zui/gallery/glrenderer/TextTexture;->setTexturePositionY(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public canUndo()Z
    .locals 2

    .line 2059
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mUndoBarState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public destory()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->unRegisterLeftRightKeyListener()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    return-void
.end method

.method public getPath()Lcom/zui/gallery/data/Path;
    .locals 2

    .line 2530
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2535
    :cond_0
    iget-boolean v1, v0, Lcom/zui/gallery/data/MediaItem;->isContinuousCover:Z

    if-nez v1, :cond_1

    .line 2536
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    return-object v0

    .line 2539
    :cond_1
    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaItem;->getPath()Lcom/zui/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/data/Path;->getObject()Lcom/zui/gallery/data/MediaObject;

    move-result-object v0

    .line 2541
    check-cast v0, Lcom/zui/gallery/data/LocalImage;

    .line 2542
    sget-object v1, Lcom/zui/gallery/data/LocalAlbumSet;->PATH_IMAGE:Lcom/zui/gallery/data/Path;

    iget v0, v0, Lcom/zui/gallery/data/LocalImage;->bucketId:I

    invoke-virtual {v1, v0}, Lcom/zui/gallery/data/Path;->getChild(I)Lcom/zui/gallery/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoRect(I)Landroid/graphics/Rect;
    .locals 1

    .line 2397
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailMoveDistance(I)I
    .locals 3

    .line 1968
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    .line 1969
    invoke-virtual {v2, v1}, Lcom/zui/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    neg-int p1, p1

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    return p1
.end method

.method public getTileView()Lcom/zui/gallery/ui/TileImageView;
    .locals 1

    .line 2526
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mTileView:Lcom/zui/gallery/ui/TileImageView;

    return-object v0
.end method

.method public isContinuousShotMode()Z
    .locals 1

    .line 2401
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->mContinuousShotMode:Z

    return v0
.end method

.method public isDeleting()Z
    .locals 1

    .line 660
    iget v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    .line 661
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->hasDeletingBox()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImageScaled()Z
    .locals 1

    .line 2522
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->isImageScaled()Z

    move-result v0

    return v0
.end method

.method public isTouchBottomIcon(II)Z
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->bottom_icon_rect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public ismFullScreenBrowse()Z
    .locals 1

    .line 2515
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->mFullScreenBrowse:Z

    return v0
.end method

.method public notifyCurrent()V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 594
    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PhotoView$Picture;

    if-eqz v0, :cond_0

    .line 595
    instance-of v1, v0, Lcom/zui/gallery/ui/PhotoView$FullPicture;

    if-eqz v1, :cond_0

    .line 596
    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Picture;->reload()V

    :cond_0
    return-void
.end method

.method public notifyDataChange([III)V
    .locals 8

    .line 606
    iput p2, p0, Lcom/zui/gallery/ui/PhotoView;->mPrevBound:I

    .line 607
    iput p3, p0, Lcom/zui/gallery/ui/PhotoView;->mNextBound:I

    .line 610
    iget p2, p0, Lcom/zui/gallery/ui/PhotoView;->mTouchBoxIndex:I

    const p3, 0x7fffffff

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-eq p2, p3, :cond_1

    .line 612
    iput p3, p0, Lcom/zui/gallery/ui/PhotoView;->mTouchBoxIndex:I

    move v2, v1

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 614
    aget v3, p1, v2

    if-ne v3, p2, :cond_0

    sub-int/2addr v2, v0

    .line 615
    iput v2, p0, Lcom/zui/gallery/ui/PhotoView;->mTouchBoxIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    :cond_1
    :goto_1
    iget p2, p0, Lcom/zui/gallery/ui/PhotoView;->mUndoIndexHint:I

    if-eq p2, p3, :cond_2

    .line 623
    iget-object p3, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    invoke-interface {p3}, Lcom/zui/gallery/ui/PhotoView$Model;->getCurrentIndex()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 p3, 0x3

    if-lt p2, p3, :cond_2

    .line 624
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->hideUndoBar()V

    :cond_2
    const/16 p2, -0xa

    move p3, p2

    :goto_2
    if-gt p3, v0, :cond_3

    .line 630
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, p3}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/PhotoView$Picture;

    .line 631
    invoke-interface {v2}, Lcom/zui/gallery/ui/PhotoView$Picture;->reload()V

    .line 632
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mSizes:[Lcom/zui/gallery/ui/PhotoView$Size;

    add-int/lit8 v4, p3, 0xa

    invoke-interface {v2}, Lcom/zui/gallery/ui/PhotoView$Picture;->getSize()Lcom/zui/gallery/ui/PhotoView$Size;

    move-result-object v2

    aput-object v2, v3, v4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 635
    :cond_3
    iget-object p3, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/PositionController;->hasDeletingBox()Z

    move-result p3

    .line 638
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    iget v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPrevBound:I

    const/4 v4, 0x1

    if-gez v3, :cond_4

    move v5, v4

    goto :goto_3

    :cond_4
    move v5, v1

    :goto_3
    iget v3, p0, Lcom/zui/gallery/ui/PhotoView;->mNextBound:I

    if-lez v3, :cond_5

    move v6, v4

    goto :goto_4

    :cond_5
    move v6, v1

    :goto_4
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    .line 639
    invoke-interface {v3, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->isCamera(I)Z

    move-result v1

    iget-object v7, p0, Lcom/zui/gallery/ui/PhotoView;->mSizes:[Lcom/zui/gallery/ui/PhotoView$Size;

    move-object v3, p1

    move v4, v5

    move v5, v6

    move v6, v1

    .line 638
    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/ui/PositionController;->moveBox([IZZZ[Lcom/zui/gallery/ui/PhotoView$Size;)V

    :goto_5
    if-gt p2, v0, :cond_6

    .line 642
    invoke-direct {p0, p2}, Lcom/zui/gallery/ui/PhotoView;->setPictureSize(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 645
    :cond_6
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PositionController;->hasDeletingBox()Z

    move-result p1

    if-eqz p3, :cond_7

    if-nez p1, :cond_7

    .line 650
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    .line 651
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    invoke-virtual {p1, p2}, Lcom/zui/gallery/ui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 652
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/zui/gallery/ui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 656
    :cond_7
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->invalidate()V

    return-void
.end method

.method public notifyImageChange(I)V
    .locals 3

    .line 665
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GallerySpeedDetail"

    invoke-virtual {v0, v2, v1}, Landroid/util/LogDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mListener:Lcom/zui/gallery/ui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Listener;->onCurrentImageUpdated()V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Picture;->reload()V

    .line 670
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView;->setPictureSize(I)V

    .line 671
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->invalidate()V

    return-void
.end method

.method public onConfigurationChanged(ZZ)V
    .locals 0

    .line 1603
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView;->mIsMultiWindow:Z

    .line 1604
    iput-boolean p2, p0, Lcom/zui/gallery/ui/PhotoView;->mIsPortrait:Z

    return-void
.end method

.method public onKeyDownLeftRightButton(Landroid/view/KeyEvent;)V
    .locals 3

    .line 92
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x101

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_3

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->slideToPrevPicture()Z

    goto :goto_1

    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->slideToNextPicture()Z

    :cond_3
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 685
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView;->mTileView:Lcom/zui/gallery/ui/TileImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p4, p5}, Lcom/zui/gallery/ui/TileImageView;->layout(IIII)V

    .line 687
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView;->mFullScreenBrowseBackgroundColor:Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {p2, p4, p5}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    .line 689
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object p2

    .line 690
    invoke-interface {p2}, Lcom/zui/gallery/ui/GLRoot;->getDisplayRotation()I

    move-result p4

    .line 691
    invoke-interface {p2}, Lcom/zui/gallery/ui/GLRoot;->getCompensation()I

    move-result p2

    .line 692
    iget p5, p0, Lcom/zui/gallery/ui/PhotoView;->mDisplayRotation:I

    if-ne p5, p4, :cond_0

    iget p5, p0, Lcom/zui/gallery/ui/PhotoView;->mCompensation:I

    if-eq p5, p2, :cond_2

    .line 694
    :cond_0
    iput p4, p0, Lcom/zui/gallery/ui/PhotoView;->mDisplayRotation:I

    .line 695
    iput p2, p0, Lcom/zui/gallery/ui/PhotoView;->mCompensation:I

    const/16 p2, -0xa

    :goto_0
    const/16 p4, 0xa

    if-gt p2, p4, :cond_2

    .line 701
    iget-object p4, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {p4, p2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/zui/gallery/ui/PhotoView$Picture;

    .line 702
    invoke-interface {p4}, Lcom/zui/gallery/ui/PhotoView$Picture;->isCamera()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 703
    invoke-interface {p4}, Lcom/zui/gallery/ui/PhotoView$Picture;->forceSize()V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 708
    :cond_2
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->updateCameraRect()V

    .line 709
    iget-object p2, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    iget-object p4, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p4}, Lcom/zui/gallery/ui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_4

    .line 711
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p4}, Lcom/zui/gallery/ui/PositionController;->setViewSize(II)V

    .line 713
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    invoke-interface {p1, p3}, Lcom/zui/gallery/ui/PhotoView$Model;->getMediaItem(I)Lcom/zui/gallery/data/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 714
    instance-of p1, p1, Lcom/zui/gallery/data/LocalVideo;

    if-eqz p1, :cond_3

    .line 715
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PositionController;->resetToFullView()V

    .line 718
    :cond_3
    iget-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView;->playMicroVideo:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    if-eqz p1, :cond_4

    .line 719
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/zui/gallery/ui/microvideo/VideoView;->updateViewPort(II)V

    :cond_4
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1621
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mGestureRecognizer:Lcom/zui/gallery/ui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public pause()V
    .locals 3

    .line 1979
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedDetail"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->skipAnimation()V

    .line 1981
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mTileView:Lcom/zui/gallery/ui/TileImageView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView;->freeTextures()V

    .line 1988
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->hideUndoBar()V

    .line 1989
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshPositionParameter(Landroid/content/Context;)V
    .locals 0

    .line 504
    invoke-static {p1}, Lcom/zui/gallery/util/GalleryUtils;->refresh(Landroid/content/Context;)V

    return-void
.end method

.method protected render(Lcom/zui/gallery/glrenderer/GLCanvas;)V
    .locals 6

    .line 2068
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->ismFullScreenBrowse()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isCameraCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2069
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mFullScreenBrowseBackgroundColor:Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {v0, p1, v1, v1}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 2072
    :cond_1
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->mFirst:Z

    if-eqz v0, :cond_2

    .line 2075
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Picture;->reload()V

    .line 2079
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/ui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/zui/gallery/ui/PhotoView$Picture;->isCamera()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    .line 2080
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->isCenter()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    .line 2081
    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2082
    :goto_0
    iget-boolean v3, p0, Lcom/zui/gallery/ui/PhotoView;->mFirst:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/zui/gallery/ui/PhotoView;->mFullScreenCamera:Z

    if-eq v0, v3, :cond_6

    .line 2083
    :cond_4
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->mFullScreenCamera:Z

    .line 2084
    iput-boolean v1, p0, Lcom/zui/gallery/ui/PhotoView;->mFirst:Z

    .line 2085
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mListener:Lcom/zui/gallery/ui/PhotoView$Listener;

    invoke-interface {v3, v0}, Lcom/zui/gallery/ui/PhotoView$Listener;->onFullScreenChanged(Z)V

    if-eqz v0, :cond_5

    .line 2087
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mHandler:Lcom/zui/gallery/ui/SynchronizedHandler;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/zui/gallery/ui/SynchronizedHandler;->sendEmptyMessage(I)Z

    .line 2090
    :cond_5
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mParent:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView;->getTransition()Lcom/zui/gallery/anim/StateTransitionAnimation;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2091
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mParent:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/GLView;->getTransition()Lcom/zui/gallery/anim/StateTransitionAnimation;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/anim/StateTransitionAnimation;->setDelay(I)V

    .line 2099
    :cond_6
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->mFullScreenCamera:Z

    xor-int/2addr v0, v2

    .line 2105
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v2}, Lcom/zui/gallery/ui/PositionController;->isAtMinimalScale()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2106
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 2107
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/PhotoView$Picture;

    invoke-interface {v2, p1, v0}, Lcom/zui/gallery/ui/PhotoView$Picture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_7
    move v2, v0

    :goto_1
    neg-int v3, v0

    if-lt v2, v3, :cond_8

    .line 2111
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v3, v2}, Lcom/zui/gallery/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 2112
    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v4, v2}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/ui/PhotoView$Picture;

    invoke-interface {v4, p1, v3}, Lcom/zui/gallery/ui/PhotoView$Picture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2116
    :cond_8
    :goto_2
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->playMicroVideo:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    if-eqz v0, :cond_a

    .line 2117
    invoke-virtual {v0}, Lcom/zui/gallery/ui/microvideo/VideoView;->isInited()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2118
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->resetToFullView()V

    .line 2119
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/zui/gallery/ui/microvideo/VideoView;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 2121
    :cond_9
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    invoke-virtual {v0, v2}, Lcom/zui/gallery/ui/microvideo/VideoView;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 2124
    :cond_a
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->isContinuousShotMode()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xa

    .line 2129
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/zui/gallery/ui/PhotoView$FullPicture;

    if-eqz v3, :cond_d

    .line 2131
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/PhotoView$FullPicture;

    invoke-static {v3}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->access$4700(Lcom/zui/gallery/ui/PhotoView$FullPicture;)Lcom/zui/gallery/ui/PhotoView$Size;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/PhotoView$FullPicture;

    invoke-static {v3}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->access$4700(Lcom/zui/gallery/ui/PhotoView$FullPicture;)Lcom/zui/gallery/ui/PhotoView$Size;

    move-result-object v3

    iget v3, v3, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/PhotoView$FullPicture;

    invoke-static {v3}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->access$4700(Lcom/zui/gallery/ui/PhotoView$FullPicture;)Lcom/zui/gallery/ui/PhotoView$Size;

    move-result-object v3

    iget v3, v3, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    if-eqz v3, :cond_c

    .line 2132
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v3, 0x7f06014b

    invoke-virtual {v2, v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getDimens(I)I

    move-result v2

    .line 2133
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/gallery/ui/PhotoView$FullPicture;

    invoke-static {v3}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->access$4700(Lcom/zui/gallery/ui/PhotoView$FullPicture;)Lcom/zui/gallery/ui/PhotoView$Size;

    move-result-object v3

    iget v3, v3, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v4, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/ui/PhotoView$FullPicture;

    invoke-static {v4}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->access$4700(Lcom/zui/gallery/ui/PhotoView$FullPicture;)Lcom/zui/gallery/ui/PhotoView$Size;

    move-result-object v4

    iget v4, v4, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    if-le v3, v4, :cond_b

    .line 2134
    sget v3, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    goto :goto_3

    .line 2135
    :cond_b
    sget v3, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_SIZE:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v4, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/ui/PhotoView$FullPicture;

    invoke-static {v4}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->access$4700(Lcom/zui/gallery/ui/PhotoView$FullPicture;)Lcom/zui/gallery/ui/PhotoView$Size;

    move-result-object v4

    iget v4, v4, Lcom/zui/gallery/ui/PhotoView$Size;->height:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v4, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/gallery/ui/PhotoView$FullPicture;

    invoke-static {v4}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->access$4700(Lcom/zui/gallery/ui/PhotoView$FullPicture;)Lcom/zui/gallery/ui/PhotoView$Size;

    move-result-object v4

    iget v4, v4, Lcom/zui/gallery/ui/PhotoView$Size;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 2136
    :goto_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2137
    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 2140
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2141
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getScreenHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2142
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    sget v3, Lcom/zui/gallery/ui/PositionController;->IMAGE_THUMBNAIL_BOTTOM_PADDING:I

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2144
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/zui/gallery/ui/PhotoView;->mBottomMargin:I

    move-object v2, v4

    .line 2146
    :cond_c
    iget-object v3, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/gallery/ui/PhotoView$FullPicture;

    invoke-virtual {v1, p1, v2}, Lcom/zui/gallery/ui/PhotoView$FullPicture;->drawBackground(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    :cond_d
    :goto_4
    const/16 v1, -0xa

    if-lt v0, v1, :cond_e

    .line 2150
    iget-object v1, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v1, v0}, Lcom/zui/gallery/ui/PositionController;->getThumbnailPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 2151
    iget-object v2, p0, Lcom/zui/gallery/ui/PhotoView;->mPictures:Lcom/zui/gallery/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/zui/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/gallery/ui/PhotoView$Picture;

    invoke-interface {v2, p1, v1}, Lcom/zui/gallery/ui/PhotoView$Picture;->drawThumbnail(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 2155
    :cond_e
    iget-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/PositionController;->advanceAnimation()V

    return-void
.end method

.method public resetToFirstPicture()V
    .locals 2

    .line 2001
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/gallery/ui/PhotoView$Model;->moveTo(I)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 1993
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v1, "GallerySpeedDetail"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mTileView:Lcom/zui/gallery/ui/TileImageView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/TileImageView;->prepareTextures()V

    .line 1995
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->skipToFinalPosition()V

    .line 1996
    invoke-static {}, Landroid/util/LogDebug;->Inst()Landroid/util/LogDebug;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/util/LogDebug;->resetTimer(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 767
    invoke-direct {p0}, Lcom/zui/gallery/ui/PhotoView;->updateCameraRect()V

    return-void
.end method

.method public setContinuousShotMode(Z)V
    .locals 1

    .line 2405
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView;->mContinuousShotMode:Z

    .line 2406
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/PositionController;->setContinuousShotMode(Z)V

    .line 2407
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView;->mFilmMode:Z

    return-void
.end method

.method public setFullScreenBrowse(Z)V
    .locals 0

    .line 2519
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView;->mFullScreenBrowse:Z

    return-void
.end method

.method public setListener(Lcom/zui/gallery/ui/PhotoView$Listener;)V
    .locals 0

    .line 2393
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mListener:Lcom/zui/gallery/ui/PhotoView$Listener;

    return-void
.end method

.method public setModel(Lcom/zui/gallery/ui/PhotoView$Model;)V
    .locals 1

    .line 512
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    .line 513
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mTileView:Lcom/zui/gallery/ui/TileImageView;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/TileImageView;->setModel(Lcom/zui/gallery/ui/TileImageView$TileSource;)V

    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 2325
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/PositionController;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1

    .line 1964
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mGestureListener:Lcom/zui/gallery/ui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    return-void
.end method

.method public setTopMargin(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/zui/gallery/ui/PhotoView;->mTopMargin:I

    return-void
.end method

.method public setWantPictureCenterCallbacks(Z)V
    .locals 0

    .line 589
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView;->mWantPictureCenterCallbacks:Z

    return-void
.end method

.method public startPlayMicroVideo(Lcom/zui/gallery/ui/microvideo/VideoView;)V
    .locals 0

    .line 2548
    iput-object p1, p0, Lcom/zui/gallery/ui/PhotoView;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    const/4 p1, 0x1

    .line 2549
    iput-boolean p1, p0, Lcom/zui/gallery/ui/PhotoView;->playMicroVideo:Z

    .line 2550
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->invalidate()V

    return-void
.end method

.method public stopPlayMicroVideo()V
    .locals 1

    .line 2554
    iget-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->playMicroVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2555
    iput-boolean v0, p0, Lcom/zui/gallery/ui/PhotoView;->playMicroVideo:Z

    .line 2556
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->videoView:Lcom/zui/gallery/ui/microvideo/VideoView;

    if-eqz v0, :cond_0

    .line 2557
    invoke-virtual {v0}, Lcom/zui/gallery/ui/microvideo/VideoView;->stop()V

    :cond_0
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mPositionController:Lcom/zui/gallery/ui/PositionController;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/PositionController;->stopScrolling()V

    return-void
.end method

.method public switchToImage(I)V
    .locals 1

    .line 2305
    iget-object v0, p0, Lcom/zui/gallery/ui/PhotoView;->mModel:Lcom/zui/gallery/ui/PhotoView$Model;

    invoke-interface {v0, p1}, Lcom/zui/gallery/ui/PhotoView$Model;->moveTo(I)V

    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 1

    .line 2333
    invoke-virtual {p0}, Lcom/zui/gallery/ui/PhotoView;->getGLRoot()Lcom/zui/gallery/ui/GLRoot;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2336
    :cond_0
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->lockRenderThread()V

    .line 2338
    :try_start_0
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/PhotoView;->switchWithCaptureAnimationLocked(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2340
    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Lcom/zui/gallery/ui/GLRoot;->unlockRenderThread()V

    .line 2341
    throw p1
.end method
