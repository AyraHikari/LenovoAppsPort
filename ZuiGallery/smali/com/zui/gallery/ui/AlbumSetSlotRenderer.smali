.class public Lcom/zui/gallery/ui/AlbumSetSlotRenderer;
.super Lcom/zui/gallery/ui/AbstractSlotRenderer;
.source "AlbumSetSlotRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;,
        Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
    }
.end annotation


# static fields
.field private static final ALBUM_NAME_TEXTURE_WIDTH_LIMIT:I = 0x1f4

.field private static final CACHE_SIZE:I = 0x60

.field private static final TAG:Ljava/lang/String; = "AlbumSetSlotRenderer"


# instance fields
.field private APP_ICON_OFFSET:I

.field private albumset_images_second_margin_top:I

.field private albumset_images_third_margin_top:I

.field protected folerTopRect:Landroid/graphics/RectF;

.field private mAbumset_images_second_height:I

.field private mAbumset_images_third_height:I

.field private final mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

.field private final mAddOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mAddOverlayHeight:I

.field private final mAddOverlayWidth:I

.field private final mAddST:Lcom/zui/gallery/glrenderer/StringTexture;

.field private final mAlbumSetBackgroundColorHeight:I

.field private final mAlbumSetBackgroundColorHeight2:I

.field private final mAlbumSetBackgroundColorLeft:I

.field private final mAlbumSetBackgroundColorTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private final mAlbumSetBackgroundColorTexture2:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private final mAlbumSetBackgroundColorWidth:I

.field private final mAlbumSetBackgroundColorWidth2:I

.field private mAlbumSetSlotHeight:I

.field private mAlbumSetSlotWidth:I

.field private final mAlbumSetTitlePaddingTop:I

.field private mAlbumset_images_second_width:I

.field private mAlbumset_images_third_width:I

.field private mAnimatePressedUp:Z

.field private mCagegoryLabelTextureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/glrenderer/StringTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

.field private final mCustomLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

.field private mDataWindow:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

.field private final mDividerLineTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private mDown_arrow_icon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mEmptyOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mEmptyOverlayHeight:I

.field private final mEmptyOverlayWidth:I

.field private mFolderItemSelectedColor:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private mHighlightItemPath:Lcom/zui/gallery/data/Path;

.field private mInSelectionMode:Z

.field protected final mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

.field private final mLabelWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private final mMoreOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mMoreOverlaySelected:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mMorePreviewPaddingLeft:I

.field private final mMorePreviewPaddingTop:I

.field private final mMoreST:Lcom/zui/gallery/glrenderer/StringTexture;

.field protected mNeedMark:Z

.field private mOtherAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

.field private final mOtherLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private mQQIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private mRight_arrow_icon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private mRight_arrow_margin_right:I

.field private final mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

.field private final mSlotBackgroundColor:I

.field private mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

.field private mSmartAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

.field private final mSmartLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

.field private mSystemAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

.field private final mSystemLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

.field private mUp_arrow_icon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private final mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

.field private mWeiBoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

.field private mWeiXinIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/ui/SelectionManager;Lcom/zui/gallery/ui/AlbumSetSlotView;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;I)V
    .locals 2

    .line 175
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/zui/gallery/data/Path;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mCagegoryLabelTextureList:Ljava/util/List;

    const/16 v0, 0x14

    .line 149
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->APP_ICON_OFFSET:I

    .line 176
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 177
    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    .line 178
    iput-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    .line 179
    iput-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    .line 180
    iput p5, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    .line 182
    new-instance p2, Lcom/zui/gallery/glrenderer/ColorTexture;

    iget p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    invoke-direct {p2, p3}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 p3, 0x1

    .line 183
    invoke-virtual {p2, p3, p3}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    .line 188
    invoke-virtual {p1}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 189
    new-instance p2, Lcom/zui/gallery/glrenderer/ColorTexture;

    const p4, 0x7f05003a

    .line 190
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p5

    invoke-direct {p2, p5}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const p2, 0x7f0600be

    .line 192
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorLeft:I

    const p2, 0x7f0600bf

    .line 194
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorWidth:I

    const p2, 0x7f0600bd

    .line 196
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorHeight:I

    .line 197
    iget-object p5, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorWidth:I

    invoke-virtual {p5, v0, p2}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    .line 200
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSlotBackgroundColor:I

    .line 203
    new-instance p2, Landroid/graphics/RectF;

    iget p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorLeft:I

    int-to-float p4, p4

    iget p5, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorHeight:I

    neg-int p5, p5

    int-to-float p5, p5

    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorWidth:I

    int-to-float v0, v0

    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-direct {p2, p4, p5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->folerTopRect:Landroid/graphics/RectF;

    .line 206
    new-instance p2, Lcom/zui/gallery/glrenderer/ColorTexture;

    const p4, 0x7f050037

    .line 207
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-direct {p2, p4}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorTexture2:Lcom/zui/gallery/glrenderer/ColorTexture;

    const p2, 0x7f0600b4

    .line 209
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorWidth2:I

    const p2, 0x7f0600b2

    .line 211
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorHeight2:I

    .line 212
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorTexture2:Lcom/zui/gallery/glrenderer/ColorTexture;

    iget p5, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorWidth2:I

    invoke-virtual {p4, p5, p2}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    .line 215
    new-instance p2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p5, 0x7f070073

    invoke-direct {p2, p4, p5}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mMoreOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 216
    new-instance p2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p5, 0x7f070074

    invoke-direct {p2, p4, p5}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mMoreOverlaySelected:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 218
    new-instance p2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p5, 0x7f070070

    invoke-direct {p2, p4, p5}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mEmptyOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const p2, 0x7f0600a2

    .line 219
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mEmptyOverlayWidth:I

    const p2, 0x7f0600a1

    .line 220
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mEmptyOverlayHeight:I

    .line 222
    new-instance p2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p5, 0x7f07006e

    invoke-direct {p2, p4, p5}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAddOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const p2, 0x7f060098

    .line 223
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAddOverlayWidth:I

    const p2, 0x7f060097

    .line 224
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAddOverlayHeight:I

    .line 226
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p4, 0x7f10003b

    invoke-virtual {p2, p4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget p4, p4, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    iget-object p5, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget p5, p5, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleColor:I

    const/4 v0, 0x0

    .line 227
    invoke-static {p4, p5, v0}, Lcom/zui/gallery/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object p4

    .line 226
    invoke-static {p2, p4}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mMoreST:Lcom/zui/gallery/glrenderer/StringTexture;

    .line 229
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p4, 0x7f100037

    invoke-virtual {p2, p4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget p4, p4, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    iget-object p5, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget p5, p5, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleColor:I

    .line 230
    invoke-static {p4, p5, v0}, Lcom/zui/gallery/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object p4

    .line 229
    invoke-static {p2, p4}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAddST:Lcom/zui/gallery/glrenderer/StringTexture;

    const p2, 0x7f0600d3

    .line 232
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetTitlePaddingTop:I

    const p2, 0x7f0600b0

    .line 234
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mMorePreviewPaddingLeft:I

    .line 235
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mMorePreviewPaddingTop:I

    .line 238
    new-instance p2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p5, 0x7f07006c

    invoke-direct {p2, p4, p5}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mRight_arrow_icon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 239
    new-instance p2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p5, 0x7f07006d

    invoke-direct {p2, p4, p5}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mUp_arrow_icon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 240
    new-instance p2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p5, 0x7f07006b

    invoke-direct {p2, p4, p5}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mDown_arrow_icon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const p2, 0x7f0602d3

    .line 241
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mRight_arrow_margin_right:I

    const p2, 0x7f0600a6

    .line 242
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumset_images_second_width:I

    const p2, 0x7f0600a4

    .line 243
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAbumset_images_second_height:I

    const p2, 0x7f0600a5

    .line 245
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->albumset_images_second_margin_top:I

    const p2, 0x7f0600a9

    .line 247
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumset_images_third_width:I

    const p2, 0x7f0600a7

    .line 248
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAbumset_images_third_height:I

    const p2, 0x7f0600a8

    .line 250
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->albumset_images_third_margin_top:I

    .line 252
    new-instance p2, Lcom/zui/gallery/glrenderer/ColorTexture;

    const p4, 0x7f050032

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-direct {p2, p4}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 253
    invoke-virtual {p2, p3, p3}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    const p2, 0x7f0600ab

    .line 255
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const p3, 0x7f050034

    .line 256
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 257
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result p4

    iget-object p5, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    const/4 p5, 0x2

    if-ne p4, p5, :cond_0

    .line 258
    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p4}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p4, p4, 0x30

    const/16 p5, 0x20

    if-ne p4, p5, :cond_0

    const-string p3, "#4DE0E0F0"

    .line 259
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    :cond_0
    const p4, 0x7f10027e

    .line 263
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 264
    invoke-static {p2, p3, v0}, Lcom/zui/gallery/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object p5

    .line 263
    invoke-static {p4, p5}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object p4

    iput-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSystemLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    const p4, 0x7f1000b3

    .line 267
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 268
    invoke-static {p2, p3, v0}, Lcom/zui/gallery/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object p5

    .line 267
    invoke-static {p4, p5}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object p4

    iput-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mCustomLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    const p4, 0x7f10026a

    .line 269
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 270
    invoke-static {p2, p3, v0}, Lcom/zui/gallery/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object p5

    .line 269
    invoke-static {p4, p5}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object p4

    iput-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSmartLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    const p4, 0x7f1001cc

    .line 271
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 272
    invoke-static {p2, p3, v0}, Lcom/zui/gallery/ui/AlbumLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object p2

    .line 271
    invoke-static {p4, p2}, Lcom/zui/gallery/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcom/zui/gallery/glrenderer/StringTexture;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mOtherLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    .line 274
    new-instance p2, Lcom/zui/gallery/glrenderer/ColorTexture;

    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget p3, p3, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->dividerLineColor:I

    invoke-direct {p2, p3}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mDividerLineTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 275
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget p3, p3, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->dividerLineWidth:I

    iget-object p4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget p4, p4, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->dividerLineHeight:I

    invoke-virtual {p2, p3, p4}, Lcom/zui/gallery/glrenderer/ColorTexture;->setSize(II)V

    .line 277
    new-instance p2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p4, 0x7f0703a9

    invoke-direct {p2, p3, p4}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mWeiXinIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 278
    new-instance p2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p4, 0x7f0703a5

    invoke-direct {p2, p3, p4}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mWeiBoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 279
    new-instance p2, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const p4, 0x7f070313

    invoke-direct {p2, p3, p4}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mQQIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    .line 281
    new-instance p2, Lcom/zui/gallery/glrenderer/ColorTexture;

    const p3, 0x7f050031

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p2, p1}, Lcom/zui/gallery/glrenderer/ColorTexture;-><init>(I)V

    iput-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mFolderItemSelectedColor:Lcom/zui/gallery/glrenderer/ColorTexture;

    return-void
.end method

.method static synthetic access$100(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mCagegoryLabelTextureList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/ui/AlbumSetSlotView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSystemAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    return-object p1
.end method

.method static synthetic access$302(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mCustomAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    return-object p1
.end method

.method static synthetic access$402(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSmartAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    return-object p1
.end method

.method static synthetic access$502(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/data/AlbumSetCategoryEntry;)Lcom/zui/gallery/data/AlbumSetCategoryEntry;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mOtherAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    return-object p1
.end method

.method static synthetic access$600(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/glrenderer/StringTexture;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSystemLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/glrenderer/StringTexture;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mCustomLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/glrenderer/StringTexture;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSmartLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    return-object p0
.end method

.method static synthetic access$900(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;)Lcom/zui/gallery/glrenderer/StringTexture;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mOtherLabelTexture:Lcom/zui/gallery/glrenderer/StringTexture;

    return-object p0
.end method

.method private static checkContentTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;
    .locals 1

    .line 328
    instance-of v0, p0, Lcom/zui/gallery/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/zui/gallery/glrenderer/TiledTexture;

    .line 329
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static checkLabelTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;
    .locals 1

    .line 321
    instance-of v0, p0, Lcom/zui/gallery/glrenderer/UploadedTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/zui/gallery/glrenderer/UploadedTexture;

    .line 322
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/UploadedTexture;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private drawItemSelectedCover(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 6

    .line 570
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mFolderItemSelectedColor:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method private drawSlotBackground(Lcom/zui/gallery/glrenderer/GLCanvas;II)I
    .locals 6

    add-int/lit8 p2, p2, 0x32

    int-to-float v3, p2

    int-to-float v4, p3

    .line 409
    iget v5, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSlotBackgroundColor:I

    const/high16 v1, -0x3db80000    # -50.0f

    const/4 v2, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/GLCanvas;->fillRect(FFFFI)V

    const/4 p1, 0x0

    return p1
.end method

.method private renderAppFolderIcon(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 6

    .line 917
    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->isSmartFolder(I)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    const/4 p2, 0x0

    .line 919
    iget-object p5, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    if-eqz p5, :cond_2

    .line 920
    iget-object p3, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p3}, Lcom/zui/gallery/data/MediaSet;->getAppFolderType()I

    move-result p3

    const/4 p5, 0x1

    if-ne p3, p5, :cond_0

    .line 922
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mQQIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    goto :goto_0

    :cond_0
    const/4 p5, 0x2

    if-ne p3, p5, :cond_1

    .line 924
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mWeiXinIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    goto :goto_0

    :cond_1
    const/4 p5, 0x3

    if-ne p3, p5, :cond_2

    .line 926
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mWeiBoIcon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    :cond_2
    :goto_0
    move-object v0, p2

    if-eqz v0, :cond_3

    .line 930
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getHeight()I

    move-result v5

    .line 931
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/ResourceTexture;->getWidth()I

    move-result v4

    const/4 v2, 0x0

    sub-int/2addr p4, v5

    add-int/lit8 v3, p4, -0x2f

    move-object v1, p1

    .line 932
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private renderArrowIcon(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 1

    .line 400
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mRight_arrow_icon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-static {p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->checkContentTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object p2

    .line 401
    invoke-interface {p2}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result p3

    .line 402
    invoke-interface {p2}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v0

    sub-int/2addr p4, p3

    .line 403
    iget p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mRight_arrow_margin_right:I

    sub-int/2addr p4, p3

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    invoke-interface {p2, p1, p4, p5}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    const/4 p1, 0x0

    return p1
.end method

.method private renderSelectedIcon(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V
    .locals 6

    .line 360
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {p0, p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->isSystemFolder(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 362
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    iget-object p3, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/zui/gallery/data/Path;

    invoke-virtual {p2, p3}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 363
    invoke-virtual {p0, p1, p4, p5, p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawAlbumSetPageSelectedIcon(Lcom/zui/gallery/glrenderer/GLCanvas;IIZ)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawAlbumSetPageUnSelectionPartIcon(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    .line 368
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawMark(Lcom/zui/gallery/glrenderer/GLCanvas;FFFF)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .line 782
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->destory()V

    return-void
.end method

.method protected drawContent(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/glrenderer/Texture;III)V
    .locals 2

    const/4 v0, 0x2

    .line 453
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 457
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-eqz p5, :cond_0

    .line 459
    div-int/lit8 p4, p3, 0x2

    int-to-float p4, p4

    invoke-interface {p1, p4, p4}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    int-to-float p4, p5

    const/high16 p5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 460
    invoke-interface {p1, p4, v1, v1, p5}, Lcom/zui/gallery/glrenderer/GLCanvas;->rotate(FFFF)V

    neg-int p4, p3

    .line 461
    div-int/2addr p4, v0

    int-to-float p4, p4

    invoke-interface {p1, p4, p4}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    :cond_0
    int-to-float p3, p3

    .line 466
    invoke-interface {p2}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float p4, p3, p4

    .line 467
    invoke-interface {p2}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p3, p5

    .line 465
    invoke-static {p4, p3}, Ljava/lang/Math;->min(FF)F

    const/4 p3, 0x0

    .line 469
    invoke-interface {p2, p1, p3, p3}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 471
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public drawEntryContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;IILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;F)I
    .locals 10

    const/4 v0, 0x2

    move-object v9, p1

    .line 943
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    move-object/from16 v0, p6

    .line 947
    iget v7, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawCommonContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;IIIF)V

    .line 949
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    const/4 v0, 0x0

    return v0
.end method

.method protected drawMark(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;IIII)V
    .locals 6

    .line 848
    iget-boolean v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mNeedMark:Z

    if-nez v1, :cond_0

    return-void

    .line 850
    :cond_0
    iget-object v1, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    if-nez v1, :cond_1

    return-void

    .line 853
    :cond_1
    iget-object v1, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p2, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 854
    :cond_2
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->folerTopRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->folerTopRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->folerTopRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->folerTopRect:Landroid/graphics/RectF;

    .line 855
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v0, p0

    move-object v1, p1

    .line 854
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawMark(Lcom/zui/gallery/glrenderer/GLCanvas;FFFF)V

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    .line 856
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawMark(Lcom/zui/gallery/glrenderer/GLCanvas;FFFF)V

    :cond_3
    return-void
.end method

.method public getItemPath(I)Lcom/zui/gallery/data/Path;
    .locals 1

    .line 832
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 837
    :cond_0
    iget-object p1, p1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/zui/gallery/data/Path;

    return-object p1
.end method

.method public getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    return-object v0
.end method

.method public inSelectModel()Z
    .locals 1

    .line 819
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initMoveToOtherFolderData()V
    .locals 0

    return-void
.end method

.method public isCameraRollOrFavorite(I)Z
    .locals 2

    .line 887
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 890
    :cond_0
    iget-object v1, p1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 893
    :cond_1
    iget-object v1, p1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v1}, Lcom/zui/gallery/data/MediaSet;->isCameraRoll()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, p1, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {p1}, Lcom/zui/gallery/data/MediaSet;->isFavoriteAlbum()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public isCustomFolder(I)Z
    .locals 3

    .line 972
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSystemAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {v0}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 975
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mCustomAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    if-eqz v2, :cond_1

    .line 976
    invoke-virtual {v2}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-lt p1, v0, :cond_2

    add-int/2addr v0, v2

    if-ge p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isInCameraAlbum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isItemSelect(Lcom/zui/gallery/data/Path;)Z
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0, p1}, Lcom/zui/gallery/ui/SelectionManager;->isItemSelected(Lcom/zui/gallery/data/Path;)Z

    move-result p1

    return p1
.end method

.method public isOtherFolder(I)Z
    .locals 5

    .line 1002
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSystemAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {v0}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1005
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mCustomAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    if-eqz v2, :cond_1

    .line 1006
    invoke-virtual {v2}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 1008
    :goto_1
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSmartAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    if-eqz v3, :cond_2

    .line 1009
    invoke-virtual {v3}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    .line 1011
    :goto_2
    iget-object v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mOtherAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    if-eqz v4, :cond_3

    .line 1012
    invoke-virtual {v4}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v4

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    add-int/2addr v0, v2

    add-int/2addr v0, v3

    if-lt p1, v0, :cond_4

    add-int/2addr v0, v4

    if-ge p1, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public isSmartFolder(I)Z
    .locals 4

    .line 985
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSystemAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 986
    invoke-virtual {v0}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 988
    :goto_0
    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mCustomAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    if-eqz v2, :cond_1

    .line 989
    invoke-virtual {v2}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 991
    :goto_1
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSmartAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    if-eqz v3, :cond_2

    .line 992
    invoke-virtual {v3}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    add-int/2addr v0, v2

    if-lt p1, v0, :cond_3

    add-int/2addr v0, v3

    if-ge p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isSystemFolder(I)Z
    .locals 2

    .line 962
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSystemAlbumSetCategoryEntry:Lcom/zui/gallery/data/AlbumSetCategoryEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 963
    invoke-virtual {v0}, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onConfigChanged()V
    .locals 1

    .line 789
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->onConfigChanged()V

    return-void
.end method

.method public onSlotSizeChanged(II)V
    .locals 1

    .line 801
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetSlotWidth:I

    .line 804
    iput p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetSlotHeight:I

    .line 810
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    :cond_0
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 2

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "visibleStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " visibleEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tiaoshiyinanzazheng"

    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->setActiveWindow(II)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 778
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->pause()V

    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    return-void
.end method

.method protected renderAdd(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 15

    move-object v8, p0

    .line 686
    invoke-static {}, Lcom/zui/gallery/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v0

    .line 687
    iget-object v1, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v1, v1, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    iget v2, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetTitlePaddingTop:I

    add-int/2addr v1, v2

    .line 688
    iget-object v2, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAddST:Lcom/zui/gallery/glrenderer/StringTexture;

    neg-int v0, v0

    neg-int v1, v1

    move-object/from16 v10, p1

    invoke-virtual {v2, v10, v0, v1}, Lcom/zui/gallery/glrenderer/StringTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 689
    iget-object v3, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 v2, -0x1

    const/4 v6, 0x0

    const v7, 0x3f19999a    # 0.6f

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;IIIF)V

    .line 690
    invoke-virtual/range {p0 .. p1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->renderBackgroundColor(Lcom/zui/gallery/glrenderer/GLCanvas;)I

    .line 691
    iget-object v9, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAddOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget v13, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAddOverlayWidth:I

    sub-int v0, p2, v13

    div-int/lit8 v11, v0, 0x2

    iget v14, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAddOverlayHeight:I

    sub-int v0, p3, v14

    div-int/lit8 v12, v0, 0x2

    invoke-virtual/range {v9 .. v14}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    return-void
.end method

.method public renderAlbumsetSlot(Lcom/zui/gallery/glrenderer/GLCanvas;IIIILandroid/graphics/Rect;)I
    .locals 6

    .line 336
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->get(I)Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object p3

    const/4 p6, 0x0

    if-nez p3, :cond_0

    return p6

    .line 340
    :cond_0
    iget-boolean v0, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isMoved:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return p6

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 344
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->renderImages(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr p6, v0

    move-object v0, p0

    .line 345
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->renderOverlay(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    move-result v0

    or-int/2addr p6, v0

    if-eqz p3, :cond_2

    .line 348
    iget-object v0, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v0}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 349
    invoke-direct/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->renderSelectedIcon(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)V

    :cond_2
    return p6
.end method

.method public renderArrowIcon(Lcom/zui/gallery/glrenderer/GLCanvas;ZII)I
    .locals 2

    if-eqz p2, :cond_0

    .line 388
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mUp_arrow_icon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-static {p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->checkContentTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object p2

    goto :goto_0

    .line 390
    :cond_0
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mDown_arrow_icon:Lcom/zui/gallery/glrenderer/ResourceTexture;

    invoke-static {p2}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->checkContentTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object p2

    .line 392
    :goto_0
    invoke-interface {p2}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v0

    .line 393
    invoke-interface {p2}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v1

    sub-int/2addr p3, v0

    add-int/lit8 p3, p3, -0xc

    sub-int/2addr p4, v1

    .line 394
    div-int/lit8 p4, p4, 0x2

    invoke-interface {p2, p1, p3, p4}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    const/4 p1, 0x0

    return p1
.end method

.method protected renderBackgroundColor(Lcom/zui/gallery/glrenderer/GLCanvas;)I
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorLeft:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorHeight:I

    neg-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    const/4 p1, 0x0

    return p1
.end method

.method protected renderCategoryLabel(Lcom/zui/gallery/glrenderer/GLCanvas;IIIIII)I
    .locals 15

    move-object v6, p0

    move/from16 v7, p2

    .line 611
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getStateManager()Lcom/zui/gallery/app/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/app/StateManager;->getTopState()Lcom/zui/gallery/app/ActivityState;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/gallery/app/MoreAlbumSetPage;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    return v8

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p6

    move/from16 v5, p7

    .line 614
    invoke-super/range {v0 .. v5}, Lcom/zui/gallery/ui/AbstractSlotRenderer;->renderLandScapeCover(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 615
    iget-object v9, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v10, p1

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-virtual/range {v9 .. v14}, Lcom/zui/gallery/glrenderer/ColorTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 617
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mCagegoryLabelTextureList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_1

    return v8

    .line 620
    :cond_1
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mCagegoryLabelTextureList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/gallery/glrenderer/StringTexture;

    if-eqz v0, :cond_2

    .line 624
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/StringTexture;->getHeight()I

    move-result v1

    sub-int v1, p7, v1

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v2, p1

    move/from16 v3, p3

    .line 625
    invoke-virtual {v0, v2, v3, v1}, Lcom/zui/gallery/glrenderer/StringTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    :cond_2
    return v8
.end method

.method protected renderContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 13

    move-object v8, p0

    move-object/from16 v9, p3

    .line 578
    iget-object v0, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->checkContentTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 580
    iget-object v0, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 v1, 0x1

    .line 581
    iput-boolean v1, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    goto :goto_0

    .line 582
    :cond_0
    iget-boolean v1, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    if-eqz v1, :cond_1

    .line 583
    iput-boolean v10, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 584
    new-instance v0, Lcom/zui/gallery/glrenderer/FadeInTexture;

    iget v1, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    iget-object v2, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/glrenderer/FadeInTexture;-><init>(ILcom/zui/gallery/glrenderer/BitmapTexture;)V

    .line 585
    iput-object v0, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    :cond_1
    :goto_0
    move-object v11, v0

    .line 588
    new-instance v0, Landroid/graphics/RectF;

    invoke-interface {v11}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 589
    iget-object v1, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->folerTopRect:Landroid/graphics/RectF;

    move-object v12, p1

    invoke-interface {v11, p1, v0, v1}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    const v7, 0x3f19999a    # 0.6f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v11

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p3

    .line 591
    invoke-virtual/range {v0 .. v7}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawEntryContent(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/glrenderer/Texture;IILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;F)I

    move-result v0

    or-int/2addr v0, v10

    .line 595
    iget-object v1, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Lcom/zui/gallery/data/MediaItem;

    if-eqz v1, :cond_2

    iget-object v1, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->coverItem:Lcom/zui/gallery/data/MediaItem;

    instance-of v1, v1, Lcom/zui/gallery/data/LocalEmptyMediaItem;

    if-eqz v1, :cond_2

    .line 596
    iget-object v2, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mEmptyOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget v6, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mEmptyOverlayWidth:I

    sub-int v1, p4, v6

    div-int/lit8 v4, v1, 0x2

    iget v7, v8, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mEmptyOverlayHeight:I

    sub-int v1, p5, v7

    div-int/lit8 v5, v1, 0x2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 602
    :cond_2
    instance-of v1, v11, Lcom/zui/gallery/glrenderer/FadeInTexture;

    if-eqz v1, :cond_3

    check-cast v11, Lcom/zui/gallery/glrenderer/FadeInTexture;

    .line 603
    invoke-virtual {v11}, Lcom/zui/gallery/glrenderer/FadeInTexture;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    :cond_3
    return v0
.end method

.method protected renderDeleteLabel(Lcom/zui/gallery/glrenderer/GLCanvas;II)I
    .locals 6

    .line 485
    new-instance v0, Lcom/zui/gallery/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    const v2, 0x7f07022a

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 487
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v5, v1, 0x6

    sub-int/2addr p2, v5

    .line 488
    div-int/lit8 v2, p2, 0x2

    sub-int/2addr p3, v5

    div-int/lit8 v3, p3, 0x2

    move-object v1, p1

    move v4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    const/4 p1, 0x0

    return p1
.end method

.method public renderEmptyPic(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x2

    .line 862
    invoke-interface {p1, v0}, Lcom/zui/gallery/glrenderer/GLCanvas;->save(I)V

    .line 869
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSelectionManager:Lcom/zui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/SelectionManager;->getSourceType()I

    move-result v0

    .line 872
    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawAlbumEmptyIcon(Lcom/zui/gallery/glrenderer/GLCanvas;Landroid/graphics/Rect;I)V

    .line 873
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method protected renderImages(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 10

    .line 416
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->save()V

    .line 417
    iget-object v0, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->checkContentTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    const/4 v2, 0x1

    .line 420
    iput-boolean v2, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    goto :goto_0

    .line 421
    :cond_0
    iget-boolean v2, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    if-eqz v2, :cond_1

    .line 422
    iput-boolean v1, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->isWaitLoadingDisplayed:Z

    .line 423
    new-instance v0, Lcom/zui/gallery/glrenderer/FadeInTexture;

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPlaceholderColor:I

    iget-object v3, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->bitmapTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-direct {v0, v2, v3}, Lcom/zui/gallery/glrenderer/FadeInTexture;-><init>(ILcom/zui/gallery/glrenderer/BitmapTexture;)V

    .line 424
    iput-object v0, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    .line 433
    :cond_1
    :goto_0
    iget v9, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->rotation:I

    move-object v4, p0

    move-object v5, p1

    move-object v6, v0

    move v7, p4

    move v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawContent(Lcom/zui/gallery/glrenderer/GLCanvas;Lcom/zui/gallery/glrenderer/Texture;III)V

    .line 438
    invoke-direct/range {p0 .. p5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->renderAppFolderIcon(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I

    .line 440
    instance-of p2, v0, Lcom/zui/gallery/glrenderer/FadeInTexture;

    if-eqz p2, :cond_2

    check-cast v0, Lcom/zui/gallery/glrenderer/FadeInTexture;

    .line 441
    invoke-virtual {v0}, Lcom/zui/gallery/glrenderer/FadeInTexture;->isAnimating()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    .line 445
    :cond_2
    invoke-interface {p1}, Lcom/zui/gallery/glrenderer/GLCanvas;->restore()V

    return v1
.end method

.method protected renderLabel(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;IILandroid/graphics/Rect;)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    .line 637
    iget-object v0, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->labelTexture:Lcom/zui/gallery/glrenderer/BitmapTexture;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->checkLabelTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v13

    const/4 v14, 0x0

    if-nez v13, :cond_0

    return v14

    .line 644
    :cond_0
    iget-boolean v0, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    const/4 v15, 0x0

    if-eqz v0, :cond_1

    .line 646
    iget v0, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInselectedModeImageMarginLeft:I

    int-to-float v0, v0

    invoke-interface {v7, v0, v15}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    .line 649
    :cond_1
    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v5, v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->leftMargin:I

    .line 650
    invoke-interface {v13}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v0

    sub-int v0, v11, v0

    div-int/lit8 v16, v0, 0x2

    .line 654
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v0, :cond_2

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    iget v1, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetSlotWidth:I

    iget v2, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInselectedModeImageMarginLeft:I

    sub-int/2addr v1, v2

    iget v2, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetSlotHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    goto :goto_0

    .line 657
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    iget v1, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetSlotWidth:I

    iget v2, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetSlotHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->onSlotSizeChanged(II)V

    .line 662
    :goto_0
    invoke-interface {v13}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v4

    invoke-interface {v13}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v17

    move-object v0, v13

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, v16

    move/from16 v18, v5

    move/from16 v5, v17

    invoke-interface/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 663
    iget-object v0, v9, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->folderNameRect:Landroid/graphics/Rect;

    iget v1, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInselectedModeImageMarginLeft:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v18, v1

    iget v1, v12, Landroid/graphics/Rect;->top:I

    add-int v1, v1, v16

    iget v2, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInselectedModeImageMarginLeft:I

    mul-int/lit8 v2, v2, 0x2

    add-int v2, v18, v2

    .line 664
    invoke-interface {v13}, Lcom/zui/gallery/glrenderer/Texture;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v12, Landroid/graphics/Rect;->top:I

    add-int v3, v3, v16

    .line 665
    invoke-interface {v13}, Lcom/zui/gallery/glrenderer/Texture;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 663
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 670
    instance-of v0, v6, Lcom/zui/gallery/ui/AlbumSetAddSlotRenderer;

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->canShowAddItem()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 671
    invoke-virtual {v6, v8}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->isCustomFolder(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 672
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawMark(Lcom/zui/gallery/glrenderer/GLCanvas;FFFF)V

    .line 675
    :cond_3
    iget-boolean v0, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v0, :cond_5

    .line 676
    invoke-virtual {v6, v8}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->isSystemFolder(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v10

    int-to-float v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 677
    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawMark(Lcom/zui/gallery/glrenderer/GLCanvas;FFFF)V

    .line 679
    :cond_4
    iget v0, v6, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInselectedModeImageMarginLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-interface {v7, v0, v15}, Lcom/zui/gallery/glrenderer/GLCanvas;->translate(FF)V

    :cond_5
    return v14
.end method

.method protected renderMore(Lcom/zui/gallery/glrenderer/GLCanvas;II)V
    .locals 6

    .line 697
    invoke-static {}, Lcom/zui/gallery/ui/AlbumLabelMaker;->getBorderSize()I

    move-result v0

    .line 698
    iget-object v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mMoreST:Lcom/zui/gallery/glrenderer/StringTexture;

    neg-int v0, v0

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    iget v2, v2, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleFontSize:I

    iget v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetTitlePaddingTop:I

    add-int/2addr v2, v3

    neg-int v2, v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/zui/gallery/glrenderer/StringTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 699
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mMoreOverlaySelected:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v2, 0x0

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorHeight:I

    neg-int v3, v1

    add-int v5, p3, v1

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mMoreOverlay:Lcom/zui/gallery/glrenderer/ResourceTexture;

    const/4 v2, 0x0

    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAlbumSetBackgroundColorHeight:I

    neg-int v3, v1

    add-int v5, p3, v1

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/glrenderer/ResourceTexture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)V

    .line 707
    :goto_0
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getMoreAlbumData()Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;

    move-result-object v0

    const-string v1, "AlbumSetSlotRenderer"

    if-nez v0, :cond_1

    const-string v0, "entry = null!!"

    .line 709
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 712
    :cond_1
    iget-object v2, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    if-nez v2, :cond_2

    const-string v0, "entry.content = null!!"

    .line 713
    invoke-static {v1, v0}, Lcom/zui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 720
    :cond_2
    iget-object v0, v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->content:Lcom/zui/gallery/glrenderer/Texture;

    invoke-static {v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->checkContentTexture(Lcom/zui/gallery/glrenderer/Texture;)Lcom/zui/gallery/glrenderer/Texture;

    move-result-object v0

    if-nez v0, :cond_3

    .line 722
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mWaitLoadingTexture:Lcom/zui/gallery/glrenderer/ColorTexture;

    .line 725
    :cond_3
    iget v1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mMorePreviewPaddingLeft:I

    iget v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mMorePreviewPaddingTop:I

    invoke-interface {v0, p1, v1, v2}, Lcom/zui/gallery/glrenderer/Texture;->draw(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 726
    iget-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    .line 727
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mMorePreviewPaddingTop:I

    neg-int v1, v0

    int-to-float v3, v1

    int-to-float v4, p2

    add-int/2addr v0, p3

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawMark(Lcom/zui/gallery/glrenderer/GLCanvas;FFFF)V

    :cond_4
    return-void
.end method

.method protected renderOverlay(Lcom/zui/gallery/glrenderer/GLCanvas;ILcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;II)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p3, :cond_4

    .line 502
    iget-object v3, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    if-eqz v3, :cond_4

    iget-object v3, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_4

    iget-object v3, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->album:Lcom/zui/gallery/data/MediaSet;

    .line 503
    invoke-virtual {v3}, Lcom/zui/gallery/data/MediaSet;->getSystemId()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4

    .line 506
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getActivityOrientation()I

    move-result v3

    const v4, 0x7f06008c

    if-ne v3, v1, :cond_0

    .line 507
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0600cd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v5, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 508
    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    goto :goto_0

    .line 510
    :cond_0
    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0600cc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v5, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    .line 511
    invoke-virtual {v5}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 514
    iget v4, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v4, p2, :cond_2

    .line 515
    iget-boolean p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    if-eqz p2, :cond_1

    sub-int/2addr p5, v3

    .line 516
    invoke-direct {p0, p1, p4, p5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawItemSelectedCover(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 519
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->isPressedUpFrameFinished()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 520
    iput-boolean v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 521
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    goto :goto_2

    :cond_1
    sub-int/2addr p5, v3

    .line 524
    invoke-direct {p0, p1, p4, p5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawItemSelectedCover(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_1

    .line 528
    :cond_2
    iget-boolean p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mInSelectionMode:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_5

    .line 532
    iget-object p2, p3, Lcom/zui/gallery/ui/AlbumSetSlidingWindow$AlbumSetEntry;->setPath:Lcom/zui/gallery/data/Path;

    if-eqz p2, :cond_5

    .line 534
    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p3}, Lcom/zui/gallery/ui/AlbumSetSlotView;->getLongTapItemPath()Lcom/zui/gallery/data/Path;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 535
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sub-int/2addr p5, v3

    .line 536
    invoke-direct {p0, p1, p4, p5}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawItemSelectedCover(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    goto :goto_1

    .line 543
    :cond_4
    iget p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne p3, p2, :cond_5

    .line 544
    iget-boolean p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    if-eqz p2, :cond_5

    .line 545
    iget-object p2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p2}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f06035f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    invoke-virtual {p3}, Lcom/zui/gallery/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x41e00000    # 28.0f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->drawItemSelectedCover(Lcom/zui/gallery/glrenderer/GLCanvas;II)V

    .line 548
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->isPressedUpFrameFinished()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 549
    iput-boolean v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 550
    iput v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    :cond_6
    :goto_2
    return v1
.end method

.method public renderSlot(Lcom/zui/gallery/glrenderer/GLCanvas;IIII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public resume()V
    .locals 1

    .line 786
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->resume()V

    return-void
.end method

.method public setHighlightItemPath(Lcom/zui/gallery/data/Path;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/zui/gallery/data/Path;

    if-ne v0, p1, :cond_0

    return-void

    .line 301
    :cond_0
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mHighlightItemPath:Lcom/zui/gallery/data/Path;

    .line 302
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    return-void
.end method

.method public setModel(Lcom/zui/gallery/app/AlbumSetDataLoader;)V
    .locals 5

    .line 306
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->setListener(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;)V

    .line 308
    invoke-virtual {p0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setmDataWindow(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)V

    .line 309
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotCount(ILjava/util/List;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 312
    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    iget-object v2, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mActivity:Lcom/zui/gallery/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mLabelSpec:Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    const/16 v4, 0x60

    invoke-direct {v0, v2, p1, v3, v4}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;-><init>(Lcom/zui/gallery/app/AbstractGalleryActivity;Lcom/zui/gallery/app/AlbumSetDataLoader;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$LabelSpec;I)V

    invoke-virtual {p0, v0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->setmDataWindow(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)V

    .line 314
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object p1

    new-instance v0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;

    invoke-direct {v0, p0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/zui/gallery/ui/AlbumSetSlotRenderer;Lcom/zui/gallery/ui/AlbumSetSlotRenderer$1;)V

    invoke-virtual {p1, v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->setListener(Lcom/zui/gallery/ui/AlbumSetSlidingWindow$Listener;)V

    .line 315
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->size()I

    move-result v0

    .line 316
    invoke-virtual {p0}, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->getmDataWindow()Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/ui/AlbumSetSlidingWindow;->getAlbumSetCategoryEntryList()Ljava/util/List;

    move-result-object v1

    .line 315
    invoke-virtual {p1, v0, v1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->setSlotCount(ILjava/util/List;)Z

    :cond_1
    return-void
.end method

.method public setNeedMark(Z)V
    .locals 0

    .line 843
    iput-boolean p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mNeedMark:Z

    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1

    .line 285
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 287
    :cond_0
    iput p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    .line 288
    iget-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {p1}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    return-void
.end method

.method public setPressedUp()V
    .locals 2

    .line 292
    iget v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mAnimatePressedUp:Z

    .line 295
    iget-object v0, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/zui/gallery/ui/AlbumSetSlotView;

    invoke-virtual {v0}, Lcom/zui/gallery/ui/AlbumSetSlotView;->invalidate()V

    return-void
.end method

.method public setmDataWindow(Lcom/zui/gallery/ui/AlbumSetSlidingWindow;)V
    .locals 0

    .line 1028
    iput-object p1, p0, Lcom/zui/gallery/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/zui/gallery/ui/AlbumSetSlidingWindow;

    return-void
.end method
