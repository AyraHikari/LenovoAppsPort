.class public abstract Lcom/zui/gallery/ui/AbstractSlotRenderer;
.super Ljava/lang/Object;
.source "AbstractSlotRenderer.java"

# interfaces
.implements Lcom/zui/gallery/ui/SlotView$SlotRenderer;


# static fields
.field protected static final DEF_REMOVE_ICON_POSITION:F = 0.77f

.field public static final DURATION_OFFSET_BOTTOM:I = 0x8

.field public static final DURATION_OFFSET_RIGHT:I = 0xa

.field private static final EMPTY_ICON_OFFSET_BOTTOM:I = 0x2d

.field private static final EMPTY_ICON_OFFSET_TOP:I = 0x219

.field private static final EMPTY_ICON_OFFSET_TOP_LAND:I = 0xed

.field public static final OFFSET:I = 0xf

.field private static final OPEN_CAMERA_STRING_OFFSET_TOP:I = 0x1b

.field public static SELECT_ICON_OFFSET:I = 0xb

.field public static final SELECT_PART_ICON_OFFSET_LEFT:I = 0x1a

.field public static final SELECT_PART_ICON_OFFSET_RIGHT:I = 0x2f

.field public static final TEXTURE_OFFSET:F = 0.6f

.field public static final TIME_LABLE_CONTENT_OFFSET:I = 0x15

.field public static final VIDEO_ICON_OFFSET:I = 0xc


# instance fields
.field private SCREEN_HEIGHT:I

.field private final continuousShootingLogo:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private isLocalTimeAlbumPage:Z

.field private isThridAppCall:Z

.field private mALbumImageEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

.field private mAlbumEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

.field private mAlbumEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private mAlbumVideoEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

.field private final mAlbumsetDefaultMarkColor:I

.field private mCanNotSelectionIconRect:Landroid/graphics/Rect;

.field private final mCan_not_selection_part:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mCheckedIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mCheckedIconHi:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private mContext:Landroid/content/Context;

.field private mContinueMarkTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mDebugBlueColor:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private final mDebugRedColor:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private mEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

.field private mEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mFastVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mFramePressed:Lcom/zui/gallery/glrenderer/NinePatchTexture;

.field private mFramePressedUp:Lcom/zui/gallery/glrenderer/FadeOutTexture;

.field private final mFrameSelected_border:Lcom/zui/gallery/glrenderer/NinePatchTexture;

.field private mGLAnimations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/zui/gallery/anim/GLAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mGifTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field protected mInselectedModeImageMarginLeft:I

.field private mLandScapeCover:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mLineTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private final mNormalMicroVideoImageIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mNormalVideoHDRIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mNormalVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private mOpenCameraStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

.field private mPanel:Lcom/zui/gallery/ui/GLView;

.field private final mPanoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mPanoramaIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mSelectionFrame:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private mSelectionIconRect:Landroid/graphics/Rect;

.field private final mSelectionPartIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mShotVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mSlowVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mUnCheckIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mUnSelectionPartIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mVideoOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mVideoPlayIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mVideo_gb:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private recoderOCSTP_X:I

.field private recoderOCSTP_Y:I

.field private res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGLAnimations:Ljava/util/Map;

    .line 116
    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanel:Lcom/zui/gallery/ui/GLView;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->isThridAppCall:Z

    .line 122
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->isLocalTimeAlbumPage:Z

    const/4 v1, -0x1

    .line 896
    iput v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->recoderOCSTP_X:I

    .line 898
    iput v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->recoderOCSTP_Y:I

    .line 162
    iput-object p1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SELECT_ICON_OFFSET:I

    .line 164
    move-object v1, p1

    check-cast v1, Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isThirdAppCall()Z

    move-result v2

    iput-boolean v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->isThridAppCall:Z

    .line 165
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/gallery/app/localtime/LocalTimeAlbumPage;

    iput-boolean v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->isLocalTimeAlbumPage:Z

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->res:Landroid/content/res/Resources;

    .line 167
    new-instance v2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v3, 0x7f070243

    invoke-direct {v2, p1, v3}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 168
    new-instance v2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v3, 0x7f070222

    invoke-direct {v2, p1, v3}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 169
    new-instance v2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v3, 0x7f070204

    invoke-direct {v2, p1, v3}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 170
    new-instance v2, Lcom/zui/gallery/glrenderer/NinePatchTexture;

    const v3, 0x7f0701fc

    invoke-direct {v2, p1, v3}, Lcom/zui/gallery/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressed:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    .line 171
    new-instance v2, Lcom/zui/gallery/glrenderer/NinePatchTexture;

    const v3, 0x7f0701fd

    invoke-direct {v2, p1, v3}, Lcom/zui/gallery/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFrameSelected_border:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    .line 173
    new-instance v2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v3, 0x7f070341

    invoke-direct {v2, p1, v3}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 174
    new-instance v2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v4, 0x7f070210

    invoke-direct {v2, p1, v4}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIconHi:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 177
    new-instance v2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v4, 0x7f070395

    invoke-direct {v2, p1, v4}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mUnCheckIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 180
    new-instance v2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-direct {v2, p1, v3}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionPartIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 181
    new-instance v2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-direct {v2, p1, v4}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mUnSelectionPartIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 182
    new-instance v2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v3, 0x7f070107

    invoke-direct {v2, p1, v3}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCan_not_selection_part:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 183
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionPartIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionPartIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 184
    invoke-virtual {v4}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    .line 185
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCan_not_selection_part:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCan_not_selection_part:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 186
    invoke-virtual {v4}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCanNotSelectionIconRect:Landroid/graphics/Rect;

    .line 187
    new-instance v0, Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0501a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionFrame:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 v2, 0x1

    .line 188
    invoke-virtual {v0, v2, v2}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    .line 190
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v2, 0x7f0702c6

    invoke-direct {v0, p1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 192
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v2, 0x7f0702c7

    invoke-direct {v0, p1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalVideoHDRIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 195
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v2, 0x7f0702c8

    invoke-direct {v0, p1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalMicroVideoImageIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 196
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v2, 0x7f07011f

    invoke-direct {v0, p1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->continuousShootingLogo:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 198
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v2, 0x7f070140

    invoke-direct {v0, p1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFastVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 199
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v2, 0x7f07034a

    invoke-direct {v0, p1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSlowVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 200
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v2, 0x7f070349

    invoke-direct {v0, p1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mShotVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 201
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v2, 0x7f07039d

    invoke-direct {v0, p1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mVideo_gb:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 203
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v2, 0x7f07013a

    invoke-direct {v0, p1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v0, 0x7f1001c2

    .line 205
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060253

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050155

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 204
    invoke-static {v0, v2, v4}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    const v0, 0x7f100282

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f05016e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 208
    invoke-static {v0, v2, v4}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mOpenCameraStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    .line 213
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v2, 0x7f07013b

    invoke-direct {v0, p1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mAlbumEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 214
    invoke-virtual {v1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/app/AlbumSetPage;

    if-eqz v0, :cond_0

    const v0, 0x7f10019a

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 215
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mAlbumEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    goto :goto_0

    :cond_0
    const v0, 0x7f1001bb

    .line 221
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 220
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mAlbumEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    .line 227
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SCREEN_HEIGHT:I

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mAlbumsetDefaultMarkColor:I

    const v0, 0x7f10010c

    .line 232
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 231
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mALbumImageEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    const v0, 0x7f10010d

    .line 237
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 236
    invoke-static {v0, v1, v2}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mAlbumVideoEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    .line 241
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v1, 0x7f07011e

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mContinueMarkTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 242
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v1, 0x7f070245

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGifTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 245
    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mInselectedModeImageMarginLeft:I

    .line 246
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v1, 0x7f0702db

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 250
    new-instance v0, Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050214

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mLineTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 251
    new-instance v0, Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mDebugBlueColor:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 252
    new-instance v0, Lcom/zui/gallery/glrenderer/ColorTexture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mDebugRedColor:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 253
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    const v1, 0x7f0701ff

    invoke-direct {v0, p1, v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mLandScapeCover:Lcom/zui/gallery/glrenderer/ResourceTexture;

    return-void
.end method

.method protected static drawFrame(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/zui/gallery/glrenderer/Texture;IIII)V
    .locals 1

    .line 550
    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, v0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p5, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p6, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p6, p1

    move-object p1, p2

    move-object p2, p0

    invoke-interface/range {p1 .. p6}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method


# virtual methods
.method public drawAlbumEmptyIcon(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;I)V
    .locals 7

    .line 927
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mAlbumEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 929
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mALbumImageEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne p3, v2, :cond_1

    .line 931
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mAlbumVideoEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    .line 934
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getHeight()I

    .line 935
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getWidth()I

    move-result p3

    .line 936
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->res:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 937
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    const/16 v4, 0xed

    const/16 v5, 0x219

    if-ne v3, v1, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    iget-object v6, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    add-int/2addr v3, v6

    .line 939
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v6, p3

    div-int/2addr v6, v1

    invoke-virtual {v0, p1, v6, v3}, Lcom/zui/gallery/glrenderer/StringTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 940
    iget-object p3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mAlbumEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mAlbumEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/2addr p2, v1

    .line 941
    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    .line 940
    :goto_2
    invoke-virtual {p3, p1, p2, v4}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    return-void
.end method

.method protected drawAlbumSetPageSelectedIcon(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V
    .locals 6

    .line 623
    iget-object p3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {p3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result p3

    .line 624
    iget-object p4, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {p4}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    .line 625
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionPartIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object p4, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    sub-int p4, p2, p4

    add-int/lit8 v2, p4, -0x2f

    sub-int/2addr p2, p3

    add-int/lit8 v3, p2, -0x2f

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawAlbumSetPageUnSelectionPartIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 6

    .line 632
    iget-object p3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mUnSelectionPartIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {p3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result p3

    .line 633
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mUnSelectionPartIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    add-int/lit8 v2, v1, -0x2f

    sub-int/2addr p2, p3

    add-int/lit8 v3, p2, -0x2f

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawCanNotSelectionPartIcon(Lcom/zui/gallery/glrenderer/GLCanvas;I)V
    .locals 7

    .line 648
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCan_not_selection_part:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v0

    .line 649
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCan_not_selection_part:Lcom/zui/gallery/glrenderer/ResourceTexture;

    sub-int/2addr p2, v0

    div-int/lit8 v4, p2, 0x2

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCanNotSelectionIconRect:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCanNotSelectionIconRect:Landroid/graphics/Rect;

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public drawCommonContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;IIIF)V
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    if-ne v2, v3, :cond_2

    if-eqz v4, :cond_0

    int-to-float v8, v2

    div-float/2addr v8, v6

    int-to-float v9, v3

    div-float/2addr v9, v6

    .line 403
    invoke-interface {v0, v8, v9}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    int-to-float v8, v4

    .line 404
    invoke-interface {v0, v8, v7, v7, v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v6

    neg-int v8, v3

    int-to-float v8, v8

    div-float/2addr v8, v6

    .line 405
    invoke-interface {v0, v5, v8}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 406
    rem-int/lit8 v4, v4, 0x5a

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    move v14, v3

    move v3, v2

    move v2, v14

    .line 422
    :cond_0
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v4

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 423
    new-instance v4, Landroid/graphics/RectF;

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v5

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, p7

    .line 424
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v6

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    mul-float v6, v6, p7

    .line 425
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    .line 426
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v4, v5, v7, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 428
    :cond_1
    new-instance v4, Landroid/graphics/RectF;

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v5

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, p7

    .line 429
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 430
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v8

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, p7

    .line 431
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-direct {v4, v7, v5, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 433
    :goto_0
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v5, v7, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 434
    invoke-interface {v1, v0, v4, v5}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto/16 :goto_4

    :cond_2
    if-eqz v4, :cond_4

    .line 437
    rem-int/lit16 v8, v4, 0xb4

    if-nez v8, :cond_3

    int-to-float v8, v2

    div-float/2addr v8, v6

    int-to-float v9, v3

    div-float/2addr v9, v6

    .line 438
    invoke-interface {v0, v8, v9}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    int-to-float v4, v4

    .line 439
    invoke-interface {v0, v4, v7, v7, v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v4, v2

    int-to-float v4, v4

    div-float/2addr v4, v6

    neg-int v5, v3

    int-to-float v5, v5

    div-float/2addr v5, v6

    .line 440
    invoke-interface {v0, v4, v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    goto :goto_1

    .line 441
    :cond_3
    rem-int/lit8 v8, v4, 0x5a

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_4

    int-to-float v8, v2

    div-float/2addr v8, v6

    int-to-float v9, v3

    div-float/2addr v9, v6

    .line 442
    invoke-interface {v0, v8, v9}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    int-to-float v4, v4

    .line 443
    invoke-interface {v0, v4, v7, v7, v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int v4, v3

    int-to-float v4, v4

    div-float/2addr v4, v6

    neg-int v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v6

    .line 444
    invoke-interface {v0, v4, v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    move v14, v3

    move v3, v2

    move v2, v14

    .line 462
    :cond_4
    :goto_1
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v4

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    int-to-float v2, v2

    div-float v5, v2, v4

    int-to-float v3, v3

    div-float v6, v3, v4

    .line 466
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v8

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    if-le v8, v9, :cond_5

    .line 467
    new-instance v8, Landroid/graphics/RectF;

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v9

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v11

    sub-int/2addr v9, v11

    int-to-float v9, v9

    mul-float/2addr v9, v10

    .line 468
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v11

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v10

    .line 469
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v11, v10

    .line 470
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v8, v9, v7, v11, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_2

    .line 472
    :cond_5
    new-instance v8, Landroid/graphics/RectF;

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v9

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v11

    sub-int/2addr v9, v11

    int-to-float v9, v9

    mul-float/2addr v9, v10

    .line 473
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v12

    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    mul-float/2addr v12, v10

    .line 474
    invoke-interface/range {p3 .. p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v12, v10

    invoke-direct {v8, v7, v9, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 476
    :goto_2
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    cmpl-float v10, v5, v6

    if-lez v10, :cond_6

    .line 478
    iget v6, v8, Landroid/graphics/RectF;->top:F

    div-float v5, v3, v5

    sub-float/2addr v4, v5

    mul-float v4, v4, p7

    add-float/2addr v6, v4

    iput v6, v8, Landroid/graphics/RectF;->top:F

    .line 480
    iget v4, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    iput v4, v8, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 482
    :cond_6
    iget v5, v8, Landroid/graphics/RectF;->left:F

    div-float v6, v2, v6

    sub-float/2addr v4, v6

    mul-float v4, v4, p7

    add-float/2addr v5, v4

    iput v5, v8, Landroid/graphics/RectF;->left:F

    .line 484
    iget v4, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v6

    iput v4, v8, Landroid/graphics/RectF;->right:F

    .line 487
    :goto_3
    iget v4, v9, Landroid/graphics/RectF;->left:F

    iget v5, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, v9, Landroid/graphics/RectF;->top:F

    iget v6, v8, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    invoke-virtual {v8, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 489
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v7, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 490
    invoke-interface {v1, v0, v8, v4}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :goto_4
    return-void
.end method

.method protected drawContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;III)V
    .locals 8

    const/4 v0, 0x2

    .line 312
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le p2, v2, :cond_2

    .line 318
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGLAnimations:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 319
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/zui/gallery/anim/GLAnimation;

    if-eqz v2, :cond_2

    .line 321
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/zui/gallery/anim/GLAnimation;->calculate(J)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/zui/gallery/anim/GLAnimation;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-nez p2, :cond_1

    .line 324
    invoke-virtual {v2}, Lcom/zui/gallery/anim/GLAnimation;->onComplete()V

    :cond_1
    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 326
    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/anim/GLAnimation;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/glrenderer/Texture;III)V

    goto :goto_1

    :cond_2
    move p2, v1

    .line 333
    :goto_1
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    const/high16 p5, 0x3f800000    # 1.0f

    if-eqz p6, :cond_3

    .line 335
    div-int/lit8 v2, p4, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v2, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    int-to-float p6, p6

    const/4 v2, 0x0

    .line 336
    invoke-interface {p1, p6, v2, v2, p5}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int p6, p4

    .line 337
    div-int/2addr p6, v0

    int-to-float p6, p6

    invoke-interface {p1, p6, p6}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    :cond_3
    int-to-float p4, p4

    .line 342
    invoke-interface {p3}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result p6

    int-to-float p6, p6

    div-float p6, p4, p6

    .line 343
    invoke-interface {p3}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 341
    invoke-static {p6, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 344
    invoke-interface {p1, p4, p4, p5}, Lcom/zui/gallery/glrenderer/GLCanvas;->scale(FFF)V

    .line 346
    invoke-interface {p3, p1, v1, v1}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 348
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    if-eqz p2, :cond_4

    .line 352
    iget-object p1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanel:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    :cond_4
    return-void
.end method

.method protected drawContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;IIIF)V
    .locals 8

    const/4 v0, 0x2

    .line 369
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p2, v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGLAnimations:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/zui/gallery/anim/GLAnimation;

    if-eqz v2, :cond_2

    .line 377
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/zui/gallery/anim/GLAnimation;->calculate(J)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/zui/gallery/anim/GLAnimation;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    .line 380
    invoke-virtual {v2}, Lcom/zui/gallery/anim/GLAnimation;->onComplete()V

    :cond_1
    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 383
    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/anim/GLAnimation;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/glrenderer/Texture;III)V

    .line 388
    :cond_2
    invoke-virtual/range {p0 .. p7}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawCommonContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;IIIF)V

    .line 390
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    if-eqz v0, :cond_3

    .line 394
    iget-object p1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanel:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    :cond_3
    return-void
.end method

.method public drawEmptyIcon(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;I)V
    .locals 6

    .line 846
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 848
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mALbumImageEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne p3, v2, :cond_1

    .line 850
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mAlbumVideoEmptyStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    .line 853
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getHeight()I

    .line 854
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getWidth()I

    move-result p3

    .line 857
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->res:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 859
    iget-boolean v3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->isLocalTimeAlbumPage:Z

    if-eqz v3, :cond_2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_2

    .line 860
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->res:Landroid/content/res/Resources;

    const v3, 0x7f06020c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 878
    :cond_2
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 879
    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060192

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 880
    invoke-virtual {v2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getRootView()Landroid/widget/RelativeLayout;

    .line 884
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v5}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v1

    invoke-virtual {v2, p1, v4, v3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 885
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, p3

    div-int/2addr v2, v1

    iget-object p3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {p3}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result p3

    add-int/2addr p3, v3

    invoke-virtual {v0, p1, v2, p3}, Lcom/zui/gallery/glrenderer/StringTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 886
    iget-object p3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 887
    iget-boolean v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->isThridAppCall:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->isLocalTimeAlbumPage:Z

    if-eqz v2, :cond_3

    const-string v2, "android.hardware.camera"

    .line 888
    invoke-virtual {p3, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.hardware.camera.front"

    .line 889
    invoke-virtual {p3, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 890
    iget-object p3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mOpenCameraStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mOpenCameraStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    invoke-virtual {v4}, Lcom/zui/gallery/glrenderer/StringTexture;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/2addr v2, v1

    iget-object v4, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v4}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1b

    invoke-virtual {p3, p1, v2, v4}, Lcom/zui/gallery/glrenderer/StringTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 892
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mOpenCameraStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/StringTexture;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/2addr p1, v1

    iput p1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->recoderOCSTP_X:I

    .line 893
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    iget-object p1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mEmptyTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {p1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1b

    iput v3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->recoderOCSTP_Y:I

    return-void
.end method

.method protected drawFastVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 8

    .line 760
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFastVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 761
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFastVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    int-to-float v0, v5

    int-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 765
    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFastVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 766
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 767
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 768
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFastVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v4, 0x6

    sub-int/2addr p3, v7

    add-int/lit8 v5, p3, -0x6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 771
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 772
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFastVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v3, 0x0

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0xc

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void
.end method

.method protected drawGifIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 8

    .line 820
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGifTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 821
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGifTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    int-to-float v0, v5

    int-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 825
    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGifTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 826
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 827
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 828
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGifTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v4, 0x6

    sub-int/2addr p3, v7

    add-int/lit8 v5, p3, -0x6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 831
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 832
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGifTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v3, 0x0

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0xc

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void
.end method

.method protected drawLivePhotoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 7

    .line 706
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalMicroVideoImageIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 707
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalMicroVideoImageIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    int-to-float v0, v5

    int-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 714
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 715
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalMicroVideoImageIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v3, 0x6

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0x6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 718
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 719
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalMicroVideoImageIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/16 v3, 0xc

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0xc

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void
.end method

.method protected drawMark(Lcom/zui/gallery/glrenderer/GLCanvas;FFFF)V
    .locals 6

    .line 956
    iget v5, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mAlbumsetDefaultMarkColor:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->fillRect(FFFFI)V

    return-void
.end method

.method protected drawNormalVideoHDRIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 7

    .line 686
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalVideoHDRIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 687
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalVideoHDRIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    int-to-float v0, v5

    int-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 694
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 695
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalVideoHDRIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v3, 0x6

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0x6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 699
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalVideoHDRIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v3, 0x0

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0xc

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void
.end method

.method protected drawNormalVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 8

    .line 669
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 670
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    int-to-float v0, v5

    int-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 674
    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 675
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 676
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 677
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v4, 0x6

    sub-int/2addr p3, v7

    add-int/lit8 v5, p3, -0x6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 680
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 681
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mNormalVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v3, 0x6

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0xc

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void
.end method

.method protected drawPanoContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;III)V
    .locals 8

    const/4 v0, 0x2

    .line 269
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le p2, v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGLAnimations:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 276
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/zui/gallery/anim/GLAnimation;

    if-eqz v2, :cond_2

    .line 278
    invoke-static {}, Lcom/zui/gallery/ui/AnimationTime;->get()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/zui/gallery/anim/GLAnimation;->calculate(J)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/zui/gallery/anim/GLAnimation;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    move v1, p2

    :cond_0
    if-nez v1, :cond_1

    .line 281
    invoke-virtual {v2}, Lcom/zui/gallery/anim/GLAnimation;->onComplete()V

    :cond_1
    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 284
    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/anim/GLAnimation;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/glrenderer/Texture;III)V

    .line 292
    :cond_2
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-eqz p6, :cond_3

    .line 294
    div-int/lit8 v2, p2, 0x2

    int-to-float v2, v2

    invoke-interface {p1, v2, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    int-to-float p6, p6

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 295
    invoke-interface {p1, p6, v3, v3, v2}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int p2, p2

    .line 296
    div-int/2addr p2, v0

    int-to-float p2, p2

    invoke-interface {p1, p2, p2}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    move-object v3, p1

    move v6, p4

    move v7, p5

    .line 299
    invoke-interface/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 301
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    if-eqz v1, :cond_4

    .line 305
    iget-object p1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanel:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    :cond_4
    return-void
.end method

.method protected drawPanoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 8

    .line 794
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 795
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    int-to-float v0, v5

    int-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 799
    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 800
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 801
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 802
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v4, 0x6

    sub-int/2addr p3, v7

    add-int/lit8 v5, p3, -0x6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 805
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 806
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/16 v3, 0xa

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0xc

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void
.end method

.method protected drawPanoramaIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 7

    .line 509
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v6, v0, 0x6

    .line 510
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanoramaIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    sub-int/2addr p2, v6

    div-int/lit8 v3, p2, 0x2

    sub-int/2addr p3, v6

    div-int/lit8 v4, p3, 0x2

    move-object v2, p1

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawPressedFrame(Lcom/zui/gallery/glrenderer/GLCanvas;FFFF)V
    .locals 8

    .line 536
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressed:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressed:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    float-to-int v4, p2

    float-to-int v5, p3

    float-to-int v6, p4

    float-to-int v7, p5

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/zui/gallery/glrenderer/Texture;IIII)V

    return-void
.end method

.method protected drawPressedFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 8

    .line 541
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressed:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressed:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/zui/gallery/glrenderer/Texture;IIII)V

    return-void
.end method

.method protected drawPressedUpFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 8

    .line 529
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/zui/gallery/glrenderer/FadeOutTexture;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Lcom/zui/gallery/glrenderer/FadeOutTexture;

    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressed:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    invoke-direct {v0, v1}, Lcom/zui/gallery/glrenderer/FadeOutTexture;-><init>(Lcom/zui/gallery/glrenderer/BasicTexture;)V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/zui/gallery/glrenderer/FadeOutTexture;

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressed:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/zui/gallery/glrenderer/FadeOutTexture;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/zui/gallery/glrenderer/Texture;IIII)V

    return-void
.end method

.method protected drawSelectedFolderBannerFrame(Lcom/zui/gallery/glrenderer/GLCanvas;FFFF)V
    .locals 6

    .line 565
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionFrame:Lcom/zui/gallery/glrenderer/ColorTexture;

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    float-to-int v5, p5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawSelectedFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 8

    .line 545
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFrameSelected_border:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFrameSelected_border:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/zui/gallery/glrenderer/Texture;IIII)V

    return-void
.end method

.method protected drawSelectedFrame(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V
    .locals 11

    .line 598
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    .line 599
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    if-eqz p4, :cond_0

    .line 601
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mContinueMarkTexture:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 603
    :cond_0
    iget-object v5, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionFrame:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    move v9, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void
.end method

.method protected drawSelectedFrameBorder(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V
    .locals 7

    .line 586
    iget-object p4, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFrameSelected_border:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    invoke-virtual {p4}, Lcom/zui/gallery/glrenderer/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFrameSelected_border:Lcom/zui/gallery/glrenderer/NinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawFrame(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;Lcom/zui/gallery/glrenderer/Texture;IIII)V

    return-void
.end method

.method protected drawSelectedIconFrame(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V
    .locals 14

    move-object v0, p0

    .line 570
    iget-object v1, v0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v7

    .line 571
    iget-object v1, v0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v1}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v6

    .line 579
    iget-object v8, v0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionFrame:Lcom/zui/gallery/glrenderer/ColorTexture;

    add-int/lit8 v12, p2, 0x1

    add-int/lit8 v13, p3, 0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 581
    iget-object v2, v0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    sub-int v1, p2, v6

    sget v3, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SELECT_ICON_OFFSET:I

    sub-int v4, v1, v3

    sub-int v1, p3, v7

    sub-int v5, v1, v3

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawSelectedIconHiFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 7

    .line 608
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIconHi:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 609
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIconHi:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    .line 610
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mCheckedIconHi:Lcom/zui/gallery/glrenderer/ResourceTexture;

    sub-int/2addr p2, v5

    sget v0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SELECT_ICON_OFFSET:I

    sub-int v3, p2, v0

    sub-int/2addr p3, v6

    sub-int v4, p3, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawSelectionPartIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 6

    .line 641
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionPartIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    add-int/lit8 v2, p2, -0x2f

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p2

    add-int/lit8 v3, p3, -0x1a

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawShotVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 8

    .line 777
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mShotVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 778
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mShotVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    int-to-float v0, v5

    int-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 782
    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mShotVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 783
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 784
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 785
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mShotVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v4, 0x6

    sub-int/2addr p3, v7

    add-int/lit8 v5, p3, -0x6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 788
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 789
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mShotVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v3, 0x0

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0xc

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void
.end method

.method protected drawSlowVideoIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 8

    .line 743
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSlowVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 744
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSlowVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    int-to-float v0, v5

    int-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 748
    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSlowVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 749
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 750
    invoke-virtual {p2}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 751
    iget-object v2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSlowVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v4, 0x6

    sub-int/2addr p3, v7

    add-int/lit8 v5, p3, -0x6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 754
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 755
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSlowVideoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v3, 0x0

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0xc

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void
.end method

.method protected drawUnSelectedIconFrame(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 7

    .line 555
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mUnCheckIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 556
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mUnCheckIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    .line 558
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mUnCheckIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    sub-int/2addr p2, v5

    sget v0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->SELECT_ICON_OFFSET:I

    sub-int v3, p2, v0

    sub-int/2addr p3, v6

    sub-int v4, p3, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawUnSelectionPartIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 6

    .line 615
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mUnSelectionPartIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    add-int/lit8 v2, p2, -0x2f

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, p2

    add-int/lit8 v3, p3, -0x1a

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawVideoDuration(Lcom/zui/gallery/glrenderer/GLCanvas;IILcom/zui/gallery/glrenderer/Texture;)V
    .locals 6

    .line 660
    invoke-interface {p4}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v5

    .line 661
    invoke-interface {p4}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v4

    sub-int/2addr p2, v4

    add-int/lit8 v2, p2, -0xa

    sub-int/2addr p3, v5

    add-int/lit8 v3, p3, -0x8

    move-object v0, p4

    move-object v1, p1

    .line 662
    invoke-interface/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 7

    .line 814
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mVideo_gb:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 815
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mVideo_gb:Lcom/zui/gallery/glrenderer/ResourceTexture;

    sub-int v4, p3, v6

    const/4 v3, 0x0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method protected drawVideoOverlay(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 7

    .line 498
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mVideoOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

    int-to-float v1, p3

    .line 499
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 500
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 501
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 502
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 504
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v6, v0, 0x6

    .line 505
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mVideoPlayIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    sub-int/2addr p2, v6

    div-int/lit8 v3, p2, 0x2

    sub-int/2addr p3, v6

    div-int/lit8 v4, p3, 0x2

    move-object v2, p1

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public getOCSTP_Height()I
    .locals 1

    .line 904
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mOpenCameraStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    return v0
.end method

.method public getOCSTP_Width()I
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mOpenCameraStringTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    return v0
.end method

.method public getRecoderOCSTP_X()I
    .locals 1

    .line 901
    iget v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->recoderOCSTP_X:I

    return v0
.end method

.method public getRecoderOCSTP_Y()I
    .locals 1

    .line 911
    iget v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->recoderOCSTP_Y:I

    return v0
.end method

.method protected getSelectionIconRect()Landroid/graphics/Rect;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mSelectionIconRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected isPressedUpFrameFinished()Z
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/zui/gallery/glrenderer/FadeOutTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mFramePressedUp:Lcom/zui/gallery/glrenderer/FadeOutTexture;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeGLAnimation()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGLAnimations:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGLAnimations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanel:Lcom/zui/gallery/ui/GLView;

    .line 152
    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGLAnimations:Ljava/util/Map;

    return-void
.end method

.method protected renderContinuousMark(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 7

    .line 725
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->continuousShootingLogo:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v6

    .line 726
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->continuousShootingLogo:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    int-to-float v0, v5

    int-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 733
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 734
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->continuousShootingLogo:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v3, 0x6

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0x6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 737
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->drawVideoGB(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 738
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->continuousShootingLogo:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/16 v3, 0xc

    sub-int/2addr p3, v6

    add-int/lit8 v4, p3, -0xc

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :goto_0
    return-void
.end method

.method public renderDividerLine(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V
    .locals 9

    .line 961
    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mContext:Landroid/content/Context;

    check-cast p2, Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 962
    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object p2

    instance-of p2, p2, Lcom/zui/gallery/app/AlbumSetAddPage;

    if-eqz p2, :cond_0

    return-void

    .line 968
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->res:Landroid/content/res/Resources;

    .line 969
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 970
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p5

    iget p5, p5, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p5, v0, :cond_1

    const/4 p5, 0x1

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_0
    const v0, 0x7f0600cf

    .line 971
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f0600d4

    .line 972
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0600d5

    .line 973
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    if-eqz p5, :cond_2

    const p5, 0x7f0600d0

    .line 976
    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const p5, 0x7f0600d7

    .line 978
    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const p5, 0x7f0600d6

    .line 979
    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :cond_2
    move v5, v0

    mul-int/lit8 p2, v5, 0x2

    sub-int/2addr p4, p2

    add-int/2addr p4, v2

    add-int p2, v1, v2

    .line 987
    div-int/2addr p4, p2

    mul-int/2addr v1, p4

    mul-int/2addr p4, v2

    sub-int/2addr p4, v2

    add-int v7, v1, p4

    .line 991
    iget-object v3, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mLineTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 v8, 0x2

    move-object v4, p1

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public renderLandScapeCover(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V
    .locals 7

    .line 1000
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 1001
    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isPad()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->isLandScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mLandScapeCover:Lcom/zui/gallery/glrenderer/ResourceTexture;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :cond_0
    return-void
.end method

.method public startGLAnimation(Lcom/zui/gallery/ui/GLView;ILcom/zui/gallery/anim/GLAnimation;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGLAnimations:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGLAnimations:Ljava/util/Map;

    .line 134
    :cond_1
    iput-object p1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanel:Lcom/zui/gallery/ui/GLView;

    .line 135
    iget-object p1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mGLAnimations:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p3}, Lcom/zui/gallery/anim/GLAnimation;->start()V

    .line 138
    iget-object p1, p0, Lcom/zui/gallery/ui/AbstractSlotRenderer;->mPanel:Lcom/zui/gallery/ui/GLView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/GLView;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method
