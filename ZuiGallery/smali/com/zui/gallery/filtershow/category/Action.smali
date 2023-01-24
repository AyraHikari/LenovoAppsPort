.class public Lcom/zui/gallery/filtershow/category/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;


# static fields
.field public static final ADD_ACTION:I = 0x2

.field public static final CROP_VIEW:I = 0x1

.field public static final FULL_VIEW:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "Action"

.field public static final SPACER:I = 0x3


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mCanBeRemoved:Z

.field private mContext:Lcom/zui/gallery/filtershow/FilterShowActivity;

.field private mImage:Landroid/graphics/Bitmap;

.field private mImageFrame:Landroid/graphics/Rect;

.field private mIsDoubleAction:Z

.field private mName:Ljava/lang/String;

.field private mOverlayBitmap:Landroid/graphics/Bitmap;

.field private mPortraitImage:Landroid/graphics/Bitmap;

.field private mRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

.field private mTextSize:I

.field private mType:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;I)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mType:I

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mCanBeRemoved:Z

    const/16 v1, 0x20

    .line 61
    iput v1, p0, Lcom/zui/gallery/filtershow/category/Action;->mTextSize:I

    .line 62
    iput-boolean v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mIsDoubleAction:Z

    .line 78
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mContext:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 79
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/category/Action;->setType(I)V

    .line 80
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mContext:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {p1, p0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->registerAction(Lcom/zui/gallery/filtershow/category/Action;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;I)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p3}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;I)V

    .line 74
    invoke-virtual {p0, p2}, Lcom/zui/gallery/filtershow/category/Action;->setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    return-void
.end method

.method public constructor <init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;IZ)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/zui/gallery/filtershow/category/Action;-><init>(Lcom/zui/gallery/filtershow/FilterShowActivity;Lcom/zui/gallery/filtershow/filters/FilterRepresentation;I)V

    .line 67
    iput-boolean p4, p0, Lcom/zui/gallery/filtershow/category/Action;->mCanBeRemoved:Z

    .line 68
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06012f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mTextSize:I

    return-void
.end method

.method private drawCenteredImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 5

    .line 203
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 204
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p3, p3

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    .line 207
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 208
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    .line 209
    iget-object v2, p0, Lcom/zui/gallery/filtershow/category/Action;->mImageFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/Action;->mImageFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v2, v4, :cond_0

    .line 211
    iget v2, p0, Lcom/zui/gallery/filtershow/category/Action;->mTextSize:I

    int-to-float v2, v2

    sub-float/2addr v3, v2

    .line 213
    :cond_0
    invoke-virtual {v0, p3, p3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 214
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 215
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    new-instance p2, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p3, p1, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method private postNewIconRenderRequest(II)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/Action;->mRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->addFilter(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V

    .line 198
    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/Action;->mContext:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-static {v1, p1, p2, v0, p0}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->postIconRequest(Landroid/content/Context;IILcom/zui/gallery/filtershow/pipeline/ImagePreset;Lcom/zui/gallery/filtershow/pipeline/RenderingRequestCaller;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public available(Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;)V
    .locals 6

    .line 221
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/Action;->clearBitmap()V

    .line 227
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/pipeline/RenderingRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mImageFrame:Landroid/graphics/Rect;

    return-void

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getOverlayId()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 234
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mContext:Lcom/zui/gallery/filtershow/FilterShowActivity;

    .line 235
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 236
    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getOverlayId()I

    move-result v0

    .line 234
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/Action;->getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getFilterType()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 240
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 241
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    .line 242
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 241
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 244
    :cond_2
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v0, 0x80

    .line 245
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 246
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/gallery/filtershow/category/Action;->drawCenteredImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    .line 249
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz p1, :cond_4

    .line 250
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public canBeRemoved()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mCanBeRemoved:Z

    return v0
.end method

.method public clearBitmap()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 272
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTemporaryThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 273
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getBitmapCache()Lcom/zui/gallery/filtershow/cache/BitmapCache;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/zui/gallery/filtershow/cache/BitmapCache;->cache(Landroid/graphics/Bitmap;)Z

    :cond_0
    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public getAdapter()Landroid/widget/ArrayAdapter;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPortraitImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mPortraitImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRepresentation()Lcom/zui/gallery/filtershow/filters/FilterRepresentation;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mType:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->view:Landroid/view/View;

    return-object v0
.end method

.method public isDoubleAction()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mIsDoubleAction:Z

    return v0
.end method

.method public setAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageFrame(Landroid/graphics/Rect;I)V
    .locals 5

    .line 129
    iget-object p2, p0, Lcom/zui/gallery/filtershow/category/Action;->mImageFrame:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/zui/gallery/filtershow/category/Action;->getType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    return-void

    .line 135
    :cond_1
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getTemporaryThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 136
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 137
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object p2

    .line 138
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getEffects()Ljava/util/ArrayList;

    move-result-object p2

    .line 139
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 141
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mContext:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f020006

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/Action;->mContext:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-static {v4, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    .line 145
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 146
    :cond_2
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-ne v0, v2, :cond_3

    .line 147
    invoke-static {}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getManager()Lcom/zui/gallery/filtershow/filters/FiltersManager;

    move-result-object p2

    .line 148
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/filters/FiltersManager;->getCaptions()Ljava/util/ArrayList;

    move-result-object p2

    .line 149
    iget-object v0, p0, Lcom/zui/gallery/filtershow/category/Action;->mRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 151
    iget-object v4, p0, Lcom/zui/gallery/filtershow/category/Action;->mContext:Lcom/zui/gallery/filtershow/FilterShowActivity;

    invoke-virtual {v4}, Lcom/zui/gallery/filtershow/FilterShowActivity;->getCaptionAdapter()Lcom/zui/gallery/filtershow/category/CategoryAdapter;

    .line 153
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/filters/FilterUserPresetRepresentation;->getImagePrest()Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    move-result-object p2

    .line 154
    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getFilters()Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/caption/CaptionRepresentation;->getAssetItem()Lcom/zui/gallery/filtershow/caption/data/AssetItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/caption/data/AssetItem;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 157
    iput-object p2, p0, Lcom/zui/gallery/filtershow/category/Action;->mImage:Landroid/graphics/Bitmap;

    .line 160
    :cond_4
    :goto_0
    invoke-static {}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getImage()Lcom/zui/gallery/filtershow/imageshow/MasterImage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/gallery/filtershow/imageshow/MasterImage;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 162
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mImageFrame:Landroid/graphics/Rect;

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 164
    iget-object p2, p0, Lcom/zui/gallery/filtershow/category/Action;->mImageFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 165
    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-eq v0, v3, :cond_5

    sget v0, Lcom/zui/gallery/filtershow/FilterShowActivity;->mCurrentPanel:I

    if-eq v0, v2, :cond_5

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/zui/gallery/filtershow/category/Action;->postNewIconRenderRequest(II)V

    :cond_5
    return-void
.end method

.method public setIsDoubleAction(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mIsDoubleAction:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mName:Ljava/lang/String;

    return-void
.end method

.method public setOverlayBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mOverlayBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPortraitImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mPortraitImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRepresentation(Lcom/zui/gallery/filtershow/filters/FilterRepresentation;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mRepresentation:Lcom/zui/gallery/filtershow/filters/FilterRepresentation;

    .line 117
    invoke-virtual {p1}, Lcom/zui/gallery/filtershow/filters/FilterRepresentation;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/zui/gallery/filtershow/category/Action;->mType:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/zui/gallery/filtershow/category/Action;->view:Landroid/view/View;

    return-void
.end method
